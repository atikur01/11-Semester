import java.io.DataInputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {

    public static void main(String[] args)   {


        try {
            ServerSocket serverSocket = new ServerSocket(6600);
            Socket socket = serverSocket.accept();

            DataInputStream din = new DataInputStream( socket.getInputStream() );

            String str = (String) din.readUTF();
            System.out.println( "Client says; " + str  );


        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}
