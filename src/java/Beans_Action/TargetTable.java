/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

/**
 *
 * @author Yukti
 */
public class TargetTable
{
    private int target_id;
    private int basemodel_id;
    private int model_id;
    private int no_of_pro;
    private int month_id;
    private String taget_desc;
    private int year;

    public int getBasemodel_id() {
        return basemodel_id;
    }

    public void setBasemodel_id(int basemodel_id) {
        this.basemodel_id = basemodel_id;
    }

    public int getModel_id() {
        return model_id;
    }

    public void setModel_id(int model_id) {
        this.model_id = model_id;
    }

    public int getMonth_id() {
        return month_id;
    }

    public void setMonth_id(int month_id) {
        this.month_id = month_id;
    }

    public int getNo_of_pro() {
        return no_of_pro;
    }

    public void setNo_of_pro(int no_of_pro) {
        this.no_of_pro = no_of_pro;
    }

    public String getTaget_desc() {
        return taget_desc;
    }

    public void setTaget_desc(String taget_desc) {
        this.taget_desc = taget_desc;
    }

    public int getTarget_id() {
        return target_id;
    }

    public void setTarget_id(int target_id) {
        this.target_id = target_id;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
    public TargetTable()
    {

    }
    public TargetTable(int target_id, int basemodel_id, int model_id, int no_of_pro, int month_id, String taget_desc, int year) {
        this.target_id = target_id;
        this.basemodel_id = basemodel_id;
        this.model_id = model_id;
        this.no_of_pro = no_of_pro;
        this.month_id = month_id;
        this.taget_desc = taget_desc;
        this.year = year;
    }

}
