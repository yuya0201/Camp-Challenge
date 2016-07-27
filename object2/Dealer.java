/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.java;
import java.util.ArrayList;
import java.util.Random;

/**
 *1～6までのステップを踏んで、「ブラックジャック（カードゲーム）」を作成してください。

　１．Humanという抽象クラスを作成し、以下を実装してください。
　　・openというabstractな公開メソッドを用意してください。
　　・setCardというArrayListを引数とした、abstractな公開メソッドを用意してください。
　　・checkSumというabstractな公開メソッドを用意してください。
　　・myCardsというArrayListの変数を用意してください。
　２．１で作成した抽象クラスを継承して、以下のクラスを作成してください。
　　・Dealerクラス
　　・Userクラス
　３．まずはDealerクラスを完成させます。
　　・cardsというArrayListの変数を用意し、初期処理でこのcardsに全てのトランプを持たせてください。
　　・dealという公開メソッドを用意し、cardsからランダムで2枚のカードをArrayListにして返却してください。
　　・hitという公開メソッドを用意し、cardsからランダムで1枚のカードをArrayListにして返却してください。
　４．DealerとUser両方に必要な処理を実装し、完成させます。
　　・setCardは、ArrayListで受けたカード情報をmyCardsに追加するように実装してください。
　　・checkSumは、myCardsを確認し、まだカードが必要ならtrue、必要無ければfalseを返却するように実装してください。
　　・openは、myCardsのカードの合計値を返却するように実装してください。

　５．ブラックジャックの準備は整いました。ゲームが成り立つよう、２つのクラスを利用してコーディングしてみてください
 * @author yuya
 */
public class Dealer extends Human2 {
    
    ArrayList<Integer> cards = new ArrayList();                                  //cardsの中にトランプを入れる
    ArrayList<Integer> myCards = new ArrayList();
    
    
    Dealer(){
            
        for(int i = 0;  i<4; i++){                                               //トランプは13種類。それを4回繰り返す
                 cards.add(1);                                                   //j,Q,k,== 10
                 cards.add(2);                                                   //1==Aは最後のif文で回す
                 cards.add(3);
                 cards.add(4);
                 cards.add(5);
                 cards.add(6);
                 cards.add(7);
                 cards.add(8);
                 cards.add(9);
                 cards.add(10);
                 cards.add(10);
                 cards.add(10);
                 cards.add(10);
        }
    }
    
       public ArrayList<Integer>deal(){
           ArrayList<Integer> deal = new ArrayList();
       for(int i = 0; i<2; i++){                                                 //2枚引く
            Random rand = new Random();
            int index = rand.nextInt(cards.size());                              //0~51をランダムにしてる、それをindexに入れる
            deal.add(cards.get(index));                                          //cardsをランダムにした要素をdealに入れる                                        
            cards.remove(index);                                                 //引いた2枚をデッキから減らす                                          
        }
         return  deal;
     }
       
       public  ArrayList<Integer>hit(){
           ArrayList<Integer> hit = new ArrayList();
           Random rand = new Random();
           int index = rand.nextInt(cards.size());
           hit.add(cards.get(index));
           cards.remove(index);
           return hit;
        }
       
       public void setCard(ArrayList<Integer> drow){
            for(int i=0;i<drow.size();i++){                                      //hitの際に1枚に上書きされてしまう為、それを阻止
                this.myCards.add(drow.get(i));                                   //iは2枚の手札の合計値、それがmyCardsに入っている
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
           for(int i=0;i<this.myCards.size();i++){
               if(this.myCards.get(i)==1&&(open()+10)<21){                       //2枚ある手札のうち、どちらかに1があり、なおかつその合計に10を足して21を超えない場合
                   this.myCards.set(i, 11);                                      //iを11に変える
               }
               if(this.myCards.get(i)==11&&open()>21){                           //2枚ある手札のうち、どちらかに11があり、なおかつその合計が21を超えている場合
                   this.myCards.set(i, 1);                                       //iを1に変える
                   
               }
           }
           if(open()<16){                                                        //最初の2枚が16より低かった場合はhitへ
               return true;
           }else{
               return false;
           }
           
       }
       }
            
             

             
            

        
      
             
            

    