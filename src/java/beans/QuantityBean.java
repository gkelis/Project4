/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author FoG
 */
import java.io.Serializable;

public class QuantityBean implements Serializable {
    
    private double cafe_quantity;
    private double sugar_quantity;
    private double water_quantity;
    
    public QuantityBean() {
        this.cafe_quantity = 0;
        this.sugar_quantity = 0;
        this.water_quantity = 0;
    }
    
    public String getcafe_quantity() {
        return Double.toString(this.cafe_quantity);
    }
    
    public void setcafe_quantity(String value) {
        try
        {
            this.cafe_quantity = Double.parseDouble(value);
        }
        catch (Exception e)
        {
            this.cafe_quantity = 0;
        }
    }
    
    public String getsugar_quantity() {
        return Double.toString(this.sugar_quantity);
    }
    
    public void setsugar_quantity(String value) {
        try
        {
            this.sugar_quantity = Double.parseDouble(value);
        }
        catch (Exception e)
        {
            this.sugar_quantity = 0;
        }
    }
    
    public String getwater_quantity() {
        return Double.toString(this.water_quantity);
    }
    
    public void setwater_quantity(String value) {
        try
        {
            this.water_quantity = Double.parseDouble(value);
        }
        catch (Exception e)
        {
            this.water_quantity = 0;
        }
    }
    
}
