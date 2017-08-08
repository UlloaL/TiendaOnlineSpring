/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.service;

import java.util.List;
import shop.entities.Product;

/**
 *
 * @author Ancelmo Ulloa
 */
public interface ProductService {
    
    
     public Product find(Integer id);
     
     public List<Product> findAll();
     
     public List<Product> latest(int n);
     
     public List<Product> featured(int n);
     
     public List<Product> specials();
}
