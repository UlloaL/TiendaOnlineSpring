/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.controller;

import java.util.*;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import shop.entities.Item;
import shop.service.ProductService;


/**
 *
 * @author Ancelmo Ulloa
 */
@Controller
@RequestMapping("/cart")
public class CartController {
    
    @Autowired
    private ProductService productService;
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.put("title", "My Cart");
        modelMap.put("action", "cart");
        return "cart.index";
    }
    
    @RequestMapping(value = "buy/{id}", method = RequestMethod.GET)
    public String buy(@PathVariable("id") int id, HttpSession session, ModelMap modelMap) {
        modelMap.put("title", "Cart");
        if (session.getAttribute("cart") == null) {
            List<Item> cart = new ArrayList<Item>();
            cart.add(new Item(productService.find(id), 1));
            session.setAttribute("cart", cart);
        } else {
            List<Item> cart = (List<Item>) session.getAttribute("cart");
            int index = isExists(id, session);
            if (index == -1) {
                cart.add(new Item(productService.find(id), 1));
            } else {
                int quantity = cart.get(index).getQuantity() + 1;
                cart.get(index).setQuantity(quantity);
                session.setAttribute("cart", cart);
            }
            session.setAttribute("cart", cart);
        }
        return "cart.index";
    }
    
    @RequestMapping(value = "delete/{index}", method = RequestMethod.GET)
    public String delete(@PathVariable("index") int index, HttpSession session) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        cart.remove(index);
        session.setAttribute("cart", cart);
        return "redirect:/cart.htm";
    }
    
    private int isExists(int id, HttpSession session) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getProduct().getId() == id) {
                return i;
            }
        }
        return -1;
    }
}
