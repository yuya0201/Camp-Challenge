/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.java;
import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author yuya
 */
public class User extends Human2 {
    
    ArrayList<Integer> myCards = new ArrayList();
    
    public void setCard(ArrayList<Integer>drow){
        for(int i=0; i<drow.size();i++){
            this.myCards.add(drow.get(i));
        }
            
    }
public Integer open(){
    Integer i = 0;
           for(int a=0;a<this.myCards.size();a++){                               //2回繰り返す（最初の手札が2枚だから）
               i += this.myCards.get(a);                                         //iは要素数の合計値
           }
           return i;
       }

public Boolean checkSum(){
           if(open()<12){                                                        //最初の2枚が16より低かった場合はhitへ
               return true;
           }else{
               return false;
           }
           
       }
    
} 
    

