/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author FoG
 */
public class Bean {
    public static void main(String[] args) {
        QuantityBean cafe = new QuantityBean();
        QuantityBean sugar = new QuantityBean();
        QuantityBean water = new QuantityBean();
        cafe.setcafe_quantity("cafe_quantity");
        sugar.setsugar_quantity("sugar_quantity");
        water.setwater_quantity("water_quantity");
    }    
}
