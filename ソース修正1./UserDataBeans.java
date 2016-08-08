/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

import java.io.Serializable;
import java.util.Date;
/**
 *3.フォームから受け取ったデータ自体を格納できるJavaBeans(UserDataBeans.java)を作成し
 * これを利用して表示や分岐などをさせなさい
 * (UserDataDTO.javaはデータベース用のJavaBeansなので微妙に違うものです)
 * @author yuya
 */
public class UserDataBeans implements Serializable {

    private String name;
    private int year;
    private int month;
    private int day;
    private String type;
    private String tell;
    private String comment;
    
public UserDataBeans() {
    name="";
    year=0;
    month=0;
    day=0;
    type="";
    tell="";
    comment="";
}
    
public String getname(){
    return name;
}  
public void setname(String name){
    this.name = name;
}
public int getyear(){
    return year;
}    
public void setyear(int year){
    this.year = year;
}
public int getmonth(){
    return month;
}    
public void setmonth(int month){
    this.month = month;
}
public int getday(){
    return day;
} 
public void setday(int day){
    this.day= day;
}
public String gettype(){
    return type;
}    
public void settype(String type){
    this.type = type;
}
public String gettell(){
    return tell;    
}    
public void settell(String tell){
    this.tell = tell;
}
public String getcomment(){
    return comment;
}
    
 public void setcomment(String comment){
     this.comment = comment;
 }   

}
