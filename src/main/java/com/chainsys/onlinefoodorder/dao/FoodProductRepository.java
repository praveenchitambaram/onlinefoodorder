package com.chainsys.onlinefoodorder.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefoodorder.model.FoodProduct;

@Repository
public interface FoodProductRepository extends CrudRepository<FoodProduct, Integer> {
	FoodProduct findById(int foodid);

	FoodProduct save(FoodProduct foodproduct);

	void deleteById(int foodid);

	List<FoodProduct> findAll();
}