/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Beans_Action;
import java.util.*;

/**
 *
 * @author Yukti
 */
public class EmployeeTable
{
    private int empid;
    private String empcode;
    private int branchid;
    private String fname;
    private String lname;
    private String c_add;
    private String c_city;
    private String c_state;
    private String c_zc;
    private String c_country;
    private String c_phn1;
    private String c_phn2;
    private String c_mobile;
    private String p_add;
    private String p_city;
    private String p_state;
    private String p_zc;
    private String p_country;
    private String p_phn1;
    private String p_phn2;
    private String p_mobile;
    private String email;
    private Date doj;
    private Date dol;

    public int getBranchid() {
        return branchid;
    }

    public void setBranchid(int branchid) {
        this.branchid = branchid;
    }

    public String getC_add() {
        return c_add;
    }

    public void setC_add(String c_add) {
        this.c_add = c_add;
    }

    public String getC_city() {
        return c_city;
    }

    public void setC_city(String c_city) {
        this.c_city = c_city;
    }

    public String getC_country() {
        return c_country;
    }

    public void setC_country(String c_country) {
        this.c_country = c_country;
    }

    public String getC_mobile() {
        return c_mobile;
    }

    public void setC_mobile(String c_mobile) {
        this.c_mobile = c_mobile;
    }

    public String getC_phn1() {
        return c_phn1;
    }

    public void setC_phn1(String c_phn1) {
        this.c_phn1 = c_phn1;
    }

    public String getC_phn2() {
        return c_phn2;
    }

    public void setC_phn2(String c_phn2) {
        this.c_phn2 = c_phn2;
    }

    public String getC_state() {
        return c_state;
    }

    public void setC_state(String c_state) {
        this.c_state = c_state;
    }

    public String getC_zc() {
        return c_zc;
    }

    public void setC_zc(String c_zc) {
        this.c_zc = c_zc;
    }

    public Date getDoj() {
        return doj;
    }

    public void setDoj(Date doj) {
        this.doj = doj;
    }

    public Date getDol() {
        return dol;
    }

    public void setDol(Date dol) {
        this.dol = dol;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmpcode() {
        return empcode;
    }

    public void setEmpcode(String empcode) {
        this.empcode = empcode;
    }

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getP_add() {
        return p_add;
    }

    public void setP_add(String p_add) {
        this.p_add = p_add;
    }

    public String getP_city() {
        return p_city;
    }

    public void setP_city(String p_city) {
        this.p_city = p_city;
    }

    public String getP_country() {
        return p_country;
    }

    public void setP_country(String p_country) {
        this.p_country = p_country;
    }

    public String getP_mobile() {
        return p_mobile;
    }

    public void setP_mobile(String p_mobile) {
        this.p_mobile = p_mobile;
    }

    public String getP_phn1() {
        return p_phn1;
    }

    public void setP_phn1(String p_phn1) {
        this.p_phn1 = p_phn1;
    }

    public String getP_phn2() {
        return p_phn2;
    }

    public void setP_phn2(String p_phn2) {
        this.p_phn2 = p_phn2;
    }

    public String getP_state() {
        return p_state;
    }

    public void setP_state(String p_state) {
        this.p_state = p_state;
    }

    public String getP_zc() {
        return p_zc;
    }

    public void setP_zc(String p_zc) {
        this.p_zc = p_zc;
    }


public EmployeeTable()
        {
}
public EmployeeTable(int empid,String empcode,int branchid,String fname,String lname,String c_add,String c_city,String c_state,String c_zc,String c_country,String c_phn1,String c_phn2,String c_mobile,String p_add,String p_city,String p_state,String p_zc,String p_country,String p_phn1,String p_phn2,String p_mobile,String email,Date doj, Date dol)
 {
    this.empid=empid;
    this.empcode=empcode;
    this.branchid=branchid;
    this.fname=fname;
    this.lname=lname;
    this.c_add=c_add;
    this.c_city=c_city;
    this.c_state=c_state;
    this.c_zc=c_zc;
    this.c_country=c_country;
    this.c_phn1=c_phn1;
    this.c_phn2=c_phn2;
    this.c_mobile=c_mobile;
    this.p_add=p_add;
    this.p_city=p_city;
    this.p_state=p_state;
    this.p_zc=p_zc;
    this.p_country=p_country;
    this.p_phn1=p_phn1;
    this.p_phn2=p_phn2;
    this.p_mobile=p_mobile;
    this.email=email;
    this.doj=doj;
    this.dol=dol;
}
}
