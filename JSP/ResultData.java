package org.camp.java;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author yuya
 */
public class ResultData implements  Serializable{
    private Date d;
    private String luck ;
    
    
    
    public ResultData (){}
    
/**
 * @return tha d
 */  
public Date getD(){
    return d ;
}

/**
 * @param d tha d to set
 */
public void setD(Date d){
    this .d = d;
}

/**
 * @return tha luck
 * 
 */

public String getLuck(){
    return luck;
}

public void setLuck(String Luck){
     this.luck =Luck;
}
/**
 *@param luck tha luck 
 */


}