import java.net.ServerSocket;
import java.net.Socket;

public class Client {

    public static void main(String[] args) {

        try {



            while(true){
                Socket socket = new Socket( "localhost", 6600);
                System.out.println("Is client connected: " + socket.isConnected());
                Thread.sleep(1_000);
            }



        } catch (Exception e) {
            throw new RuntimeException(e);
        }


    }
}
