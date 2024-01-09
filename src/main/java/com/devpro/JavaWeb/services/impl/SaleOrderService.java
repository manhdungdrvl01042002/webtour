package com.devpro.JavaWeb.services.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.model.SaleOrderProducts;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class SaleOrderService extends BaseService<SaleOrder> {

	@Autowired
	private SaleOrderProductsService saleOrderProductsService;
	
	
	@Transactional
	public void createSaleOrder(SaleOrder saleOrder, List<SaleOrderProducts> saleOrderProductsLst) {
		SaleOrder soSaved = super.saveOrUpdate(saleOrder);
		
		// lấy sản phẩm trong giỏ hàng
		for (SaleOrderProducts saleOrderProducts : saleOrderProductsLst) {
			saleOrderProducts.setSaleOrder(soSaved);
			saleOrderProductsService.saveOrUpdate(saleOrderProducts);
		}
	}
	
	@Override
	protected Class<SaleOrder> clazz() {
		return SaleOrder.class;
	}

}
