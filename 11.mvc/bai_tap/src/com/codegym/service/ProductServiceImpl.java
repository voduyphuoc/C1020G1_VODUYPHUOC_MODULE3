package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> productMap;

    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1, "iphone6", 12322, "abc", "xyz"));
        productMap.put(2, new Product(2, "iphone7", 12322, "abc", "xyz"));
        productMap.put(3, new Product(3, "iphone8", 12322, "abc", "xyz"));
        productMap.put(4, new Product(4, "iphoneX", 12322, "abc", "xyz"));
        productMap.put(5, new Product(5, "iphoneXI", 12322, "abc", "xyz"));
        productMap.put(6, new Product(6, "iphoneXII", 12322, "abc", "xyz"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }

    @Override
    public List<Product> searchProduct(String name) {
        List<Product> productList = new ArrayList<>();
        for (int key: productMap.keySet()) {
            if (productMap.get(key).getName().equals(name)) {
                productList.add(productMap.get(key));
            }
        }
        return productList;
    }
}
