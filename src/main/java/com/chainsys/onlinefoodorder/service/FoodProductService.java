package com.chainsys.onlinefoodorder.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefoodorder.dao.FoodProductRepository;
import com.chainsys.onlinefoodorder.model.FoodProduct;

@Service
public class FoodProductService {
	@Autowired
	private FoodProductRepository foodproductrepository;

	public List<FoodProduct> getFoodProduct() {
		List<FoodProduct> listfoodproduct = foodproductrepository.findAll();
		return listfoodproduct;
	}

	public FoodProduct save(FoodProduct foodproduct) {

		return foodproductrepository.save(foodproduct);
	}

	public FoodProduct findByid(int id) {
		return foodproductrepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		foodproductrepository.deleteById(id);
	}

}
