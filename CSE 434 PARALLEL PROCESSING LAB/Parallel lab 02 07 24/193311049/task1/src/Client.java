import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;

public class Client {

    public static void main(String[] args) {

        try {
            Socket socket = new Socket("localhost",6600);
            if(socket.isConnected()){
                System.out.println("Client connected");
            }

            DataOutputStream dout = new DataOutputStream(socket.getOutputStream() );

            String msg = "Hello from client";

            dout.writeUTF(msg);

            dout.flush();

            dout.close();




        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}
