/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import shop.entities.Category;
import shop.service.CategoryService;
import shop.service.ProductService;


/**
 *
 * @author Ancelmo Ulloa
 */
@Controller
@RequestMapping("/product")
public class ProductController {
    
    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private ProductService productService;
    
    @RequestMapping(value="list", method = RequestMethod.GET)
    public String list(ModelMap modelMap) {
        modelMap.put("title", "Category Product");        
        modelMap.put("productsLatest", productService.latest(3));
        modelMap.put("featuredProducts", productService.featured(4));
        modelMap.put("action", "list");
        return "product.list";
    }
    
    @RequestMapping(value = "category/{id}", method = RequestMethod.GET)
    public String category(@PathVariable("id") Integer id, ModelMap modelMap) {
        Category category = categoryService.find(id);
        System.out.println("     "+category.getName());
        modelMap.put("title", "Category products");
        modelMap.put("category", category);
        modelMap.put("products", category.getProducts());
        System.out.println("     "+category.getProducts());
        modelMap.put("action", "list");
        return "product.category";
    }
    
    @RequestMapping(value="specials", method = RequestMethod.GET)
    public String Specials(ModelMap modelMap) {
        modelMap.put("title", "Specials");
        modelMap.put("action", "specials");
        modelMap.put("product", productService.specials());
        return "product.specials";
    }
    @RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
    public String detail(@PathVariable("id") Integer id, ModelMap modelMap) {
        modelMap.put("title", "Product detail");
        modelMap.put("product", productService.find(id));
        return "product.detail";
    }
}
