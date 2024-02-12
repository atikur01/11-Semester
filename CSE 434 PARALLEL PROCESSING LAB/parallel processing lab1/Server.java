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
public class Server {
    public static void main(String [] args){
        try{
        ServerSocket ss = new ServerSocket(6600);
        Socket s=ss.accept();
        System.out.println("Client Connected.");
        
        }catch(Exception e){
            System.out.println(e);
        }
    }
    
}
