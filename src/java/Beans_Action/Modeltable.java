/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

/**
 *
 * @author Yukti
 */
public class Modeltable {

    private int basemodel_id;
    private String basemodel_name;
    private double acc_target;
    private float model_id;
    private String model_name;
    private String engine;
    private String capacity;
    private float dealer_margin;
    private float color_id;
    private String color_name;

    public double getAcc_target() {
        return acc_target;
    }

    public void setAcc_target(double acc_target) {
        this.acc_target = acc_target;
    }

    public int getBasemodel_id() {
        return basemodel_id;
    }

    public void setBasemodel_id(int basemodel_id) {
        this.basemodel_id = basemodel_id;
    }

    public String getBasemodel_name() {
        return basemodel_name;
    }

    public void setBasemodel_name(String basemodel_name) {
        this.basemodel_name = basemodel_name;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public float getColor_id() {
        return color_id;
    }

    public void setColor_id(float color_id) {
        this.color_id = color_id;
    }

    public String getColor_name() {
        return color_name;
    }

    public void setColor_name(String color_name) {
        this.color_name = color_name;
    }

    public float getDealer_margin() {
        return dealer_margin;
    }

    public void setDealer_margin(float dealer_margin) {
        this.dealer_margin = dealer_margin;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public float getModel_id() {
        return model_id;
    }

    public void setModel_id(float model_id) {
        this.model_id = model_id;
    }

    public String getModel_name() {
        return model_name;
    }

    public void setModel_name(String model_name) {
        this.model_name = model_name;
    }
public Modeltable()
        {
}
public Modeltable(int basemodel_id,String basemodel_name,double acc_target,float model_id,String model_name,String engine,String capacity,float dealer_margin,float color_id,String color_name)

 {
    this.basemodel_id=basemodel_id;
    this.basemodel_name=basemodel_name;
    this.acc_target=acc_target;
    this.model_id=model_id;
    this.model_name=model_name;
    this.engine=engine;
    this.capacity=capacity;
    this.dealer_margin=dealer_margin;
    this.color_id=color_id;
    this.color_name=color_name;
    }

}
