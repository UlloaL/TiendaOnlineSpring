/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.dao;

import java.util.*;
import shop.entities.Category;

/**
 *
 * @author Ancelmo Ulloa
 */
public interface CategoryDAO {
    
    public List<Category> findAll();
    
    public Category find(Integer id);
    
}
