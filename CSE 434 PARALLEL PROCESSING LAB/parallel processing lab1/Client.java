/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ppds_lab;
import java.net.*;
/**
 *
 * @author Software Lab
 */


public class Client {
    public static void main(String [] args){
        try{
        Socket s1 = new Socket("localhost",6600);
        
        
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
