package shop.entities;
// Generated 04/08/2017 04:10:29 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Partner generated by hbm2java
 */
public class Partner  implements java.io.Serializable {


     private Integer id;
     private String name;
     private Set products = new HashSet(0);

    public Partner() {
    }

	
    public Partner(String name) {
        this.name = name;
    }
    public Partner(String name, Set products) {
       this.name = name;
       this.products = products;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Set getProducts() {
        return this.products;
    }
    
    public void setProducts(Set products) {
        this.products = products;
    }




}


