/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.dao;

import java.util.List;
import shop.entities.Product;

/**
 *
 * @author Ancelmo Ulloa
 */
public interface ProductDAO {
    
    public Product find(Integer id);
    
    public List<Product> latest(int n);
    
    public List<Product> featured(int n);
    
    public List<Product> specials();
    
}
