/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.dao;

import shop.entities.Account;

/**
 *
 * @author Ancelmo Ulloa
 */
public interface AccountDAO {
    
    public void create(Account account);
    
    public Account login(String username, String password);
    
}
