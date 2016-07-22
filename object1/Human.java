/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.camp.java;


/**
 *
　１．身の回りにあるものをオブジェクト指向で抽象化してみましょう。
　　　自分が興味あるもので構いません。また、抽象化するレベルも問いません。
　２．１で作成したオブジェクト群からクラスにできそうなものを考えましょう。
　　　クラスにどういったデータを持たせるかが重要です。
　
　３．以下の機能を持つクラスを作成してください。
　　　・パブリックな２つの変数
　　　・２つの変数に値を設定するパブリックなメソッド
　　　・２つの変数の中身をprintするパブリックなメソッド
　４．３のクラスを継承し、以下の機能を持つクラスを作成してください。
　　　・２つの変数の中身をクリアするパブリックなメソッド


 * @author yuya
 */
public class Human {
             public  int  height ; 
             public  int  age ;
             public  void myprofile(int y, int x){
                          age = y;
                          height = x;
                          massege();
             }
             public  void massege(){
                         System.out.println(age);
                         System.out.println(height);
                         
             }
                }

