import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {

    public static void main(String[] args) {

        try {
            ServerSocket serverSocket = new ServerSocket(6600);
            while (true){

                Socket socket = serverSocket.accept();
                System.out.println("Client connected.");

                Thread.sleep(1000);
            }


        } catch (Exception e) {
            throw new RuntimeException(e);
        }


    }
}
