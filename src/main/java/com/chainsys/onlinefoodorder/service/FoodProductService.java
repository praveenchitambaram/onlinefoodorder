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
	private FoodProductRepository foodProductRepository;

	public List<FoodProduct> getFoodProduct() {
		List<FoodProduct> listFoodProduct = foodProductRepository.findAll();
		return listFoodProduct;
	}

	public FoodProduct save(FoodProduct foodProduct) {

		return foodProductRepository.save(foodProduct);
	}

	public FoodProduct findByid(int id) {
		return foodProductRepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		foodProductRepository.deleteById(id);
	}

}
