package com.devpro.JavaWeb.services.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.model.News;
import com.devpro.JavaWeb.model.NewsImages;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class NewsService extends BaseService<News> {

	@Autowired
	private NewsImagesService newsImagesService;
	
	@Override
	protected Class<News> clazz() {
		return News.class;
	}

	/**
	 * dùng để kiểm tra xem admin có upload ảnh product hay không
	 */
	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;

		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;

		return false;
	}

	/**
	 * dùng để kiểm tra xem admin có upload ảnh product hay không
	 */
	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}
	
	/**
	 * tạo tên file upload
	 */
	private String getUniqueUploadFileName(String fileName) {
		String[] splitFileName = fileName.split("\\.");
		return splitFileName[0] + System.currentTimeMillis() + "." + splitFileName[1];
	}
	
	/**
	 * thêm mới sản phẩm
	 */
	@Transactional
	public News addNews(News news, MultipartFile newsAvatar, MultipartFile[] newsPictures) throws IllegalStateException, IOException {
		// kiểm tra xem admin có đẩy avatar lên không ???
		if (!isEmptyUploadFile(newsAvatar)) { // có đẩy avatar lên.

			String fileName = getUniqueUploadFileName(newsAvatar.getOriginalFilename());

			// tạo đường dẫn tới file chứa avatar
			String pathToAvatar = "C:/upload/news/avatar/" + fileName;

			// lưu avatar vào đường dẫn trên
			newsAvatar.transferTo(new File(pathToAvatar));

			news.setAvatar("news/avatar/" + fileName);
		}
		News newsSaved = super.saveOrUpdate(news);

		// có đẩy pictures(product_images) ???
		if (!isEmptyUploadFile(newsPictures)) { // có đẩy pictures lên.

			// nếu admin đẩy lên thì duyệt tất cả file đẩy lên và lưu trên server
			for (MultipartFile pic : newsPictures) {
				String fileName = getUniqueUploadFileName(pic.getOriginalFilename());

				// lưu ảnh admin đẩy lên vào server
				pic.transferTo(new File("C:/upload/news/pictures/" + fileName));

				// tạo mới 1 bản ghi product_images
				NewsImages newsImages = new NewsImages();
				newsImages.setPath("news/pictures/" + fileName);
				newsImages.setTitle(fileName);
				newsImages.setNews(newsSaved);
				newsImagesService.saveOrUpdate(newsImages);
			}
		}

		// tạo seo: bổ sung thêm thời gian tính bằng miliseconds để tránh trùng seo
//		Slugify slugify = new Slugify();
//		product.setSeo(slugify.slugify(product.getTitle() + "-" + System.currentTimeMillis()));

		// lưu vào database
		return newsSaved;
	}
	/**
	 * chỉnh sửa sản phẩm
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@Transactional
	public News editNews(News news, MultipartFile newsAvatar, MultipartFile[] newsPictures)
			throws IllegalStateException, IOException {
		// lấy thông tin cũ của product theo id
		News newsInDb = super.getById(news.getId());

		// có đẩy avartar ??? => xóa avatar cũ đi và thêm avatar mới
		if (!isEmptyUploadFile(newsAvatar)) {
			// xóa avatar trong folder lên
			new File("C:/upload/" + newsInDb.getAvatar()).delete();

			// update avatar mới
			String fileName = getUniqueUploadFileName(newsAvatar.getOriginalFilename());
			newsAvatar.transferTo(new File("C:/upload/news/avatar/" + fileName));
			news.setAvatar("news/avatar/" + fileName);
		} else {
			// sử dụng lại avartar cũ
			news.setAvatar(newsInDb.getAvatar());
		}
		News newsSaved = super.saveOrUpdate(news); //update san pham trong database
		// có đẩy pictures ???
		if (!isEmptyUploadFile(newsPictures)) {
			List<NewsImages> newsImages = newsImagesService.getEntitiesByNativeSQL("select * from news_images where news_id = " + newsSaved.getId());
			// xóa pictures cũ
			if (newsImages != null && newsImages.size() > 0) {
				for (NewsImages opi : newsInDb.getNewsImages()) {
					// xóa avatar trong folder lên
					new File("C:/upload/" + opi.getPath()).delete();

					// xóa dữ liệu trong database
					newsImagesService.delete(opi);
				}
			}

			// update pictures mới
			for (MultipartFile pic : newsPictures) {
				String fileName = getUniqueUploadFileName(pic.getOriginalFilename());
				
				pic.transferTo(new File("C:/upload/news/pictures/" + fileName));
				
				NewsImages pi = new NewsImages();
				pi.setPath("news/pictures/" + fileName);
				pi.setTitle(fileName);
				pi.setNews(newsSaved);
				newsImagesService.saveOrUpdate(pi);
			}
		}

//		//tạo seo
//		Slugify slugify = new Slugify();
//		product.setSeo(slugify.slugify(product.getTitle() + "-" + System.currentTimeMillis()));
//		
		// lưu vào database
		return newsSaved;
	}
}
