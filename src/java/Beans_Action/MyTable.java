/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;

/**
 *
 * @author Yukti
 */
public class MyTable
{
    private int branch_id;
    private int org_id;
    private String branch_name;
    private String branch_streetadd;
    private String branch_city;
    private String branch_state;
    private String branch_zip;
    private String branch_country;
    private String branch_phn1;
    private String branch_phn2;
    private String branch_fax;

    public String getBranch_fax() {
        return branch_fax;
    }

    public void setBranch_fax(String branch_fax) {
        this.branch_fax = branch_fax;
    }

    public String getBranch_phn1() {
        return branch_phn1;
    }

    public void setBranch_phn1(String branch_phn1) {
        this.branch_phn1 = branch_phn1;
    }

    public String getBranch_phn2() {
        return branch_phn2;
    }

    public void setBranch_phn2(String branch_phn2) {
        this.branch_phn2 = branch_phn2;
    }

    public String getBranch_country() {
        return branch_country;
    }

    public void setBranch_country(String branch_country) {
        this.branch_country = branch_country;
    }

    public String getBranch_zip() {
        return branch_zip;
    }

    public void setBranch_zip(String branch_zip) {
        this.branch_zip = branch_zip;
    }

    public String getBranch_city() {
        return branch_city;
    }

    public void setBranch_city(String branch_city) {
        this.branch_city = branch_city;
    }

    public String getBranch_state() {
        return branch_state;
    }

    public void setBranch_state(String branch_state) {
        this.branch_state = branch_state;
    }

    public String getBranch_streetadd() {
        return branch_streetadd;
    }

    public void setBranch_streetadd(String branch_streetadd) {
        this.branch_streetadd = branch_streetadd;
    }

    public int getBranch_id() {
        return branch_id;
    }

    public void setBranch_id(int branch_id) {
        this.branch_id = branch_id;
    }

    public String getBranch_name() {
        return branch_name;
    }

    public void setBranch_name(String branch_name) {
        this.branch_name = branch_name;
    }

    public int getOrg_id() {
        return org_id;
    }

    public void setOrg_id(int org_id) {
        this.org_id = org_id;
    }

    public MyTable()
    {
    }

    public MyTable(int branch_id,int org_id,String branch_name,String branch_streetadd,String branch_city,String branch_state,String branch_zip,String branch_country,String branch_phn1,String branch_phn2,String branch_fax)
    {
        this.branch_id = branch_id;
        this.org_id = org_id;
        this.branch_name = branch_name;
        this.branch_streetadd = branch_streetadd;
        this.branch_city = branch_city;
        this.branch_state = branch_state;
        this.branch_zip = branch_zip;
        this.branch_country = branch_country;
        this.branch_phn1 = branch_phn1;
        this.branch_phn2 = branch_phn2;
        this.branch_fax = branch_fax;
    }

   

}
