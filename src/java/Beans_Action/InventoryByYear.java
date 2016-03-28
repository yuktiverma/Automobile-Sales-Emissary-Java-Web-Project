/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

/**
 *
 * @author Yukti
 */
public class InventoryByYear {


   private int inv_id;
   private int branch_id;
   private int baseModel_id;
   private int model_id;
   private int color_id;
   private int total_quantity;
   private int quantity_in_hand;
   private int model_sold;
    private String date;

    public int getBaseModel_id() {
        return baseModel_id;
    }

    public void setBaseModel_id(int baseModel_id) {
        this.baseModel_id = baseModel_id;
    }

    public int getBranch_id() {
        return branch_id;
    }

    public void setBranch_id(int branch_id) {
        this.branch_id = branch_id;
    }

    public int getColor_id() {
        return color_id;
    }

    public void setColor_id(int color_id) {
        this.color_id = color_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getInv_id() {
        return inv_id;
    }

    public void setInv_id(int inv_id) {
        this.inv_id = inv_id;
    }

    public int getModel_id() {
        return model_id;
    }

    public void setModel_id(int model_id) {
        this.model_id = model_id;
    }

    public int getModel_sold() {
        return model_sold;
    }

    public void setModel_sold(int model_sold) {
        this.model_sold = model_sold;
    }

    public int getQuantity_in_hand() {
        return quantity_in_hand;
    }

    public void setQuantity_in_hand(int quantity_in_hand) {
        this.quantity_in_hand = quantity_in_hand;
    }

    public int getTotal_quantity() {
        return total_quantity;
    }

    public void setTotal_quantity(int total_quantity) {
        this.total_quantity = total_quantity;
    }

    public InventoryByYear(int Inv_Id, int Branch_Id, int BaseModel_Id, int Model_Id, int Color_Id, int Toatal_Quantity, int Quantity_In_Hand, int Model_Sold, String Date) {
        this.inv_id = Inv_Id;
        this.branch_id = Branch_Id;
        this.baseModel_id = BaseModel_Id;
        this.model_id = Model_Id;
        this.color_id = Color_Id;
        this.total_quantity = Toatal_Quantity;
        this.quantity_in_hand = Quantity_In_Hand;
        this.model_sold = Model_Sold;
        this.date = Date;
    }

    public InventoryByYear()
    {
    }






}
