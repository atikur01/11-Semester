import java.util.Scanner;
public class CaesarCipher {
    private static String encrypt(String text, int key) {
        StringBuilder encryptedText = new StringBuilder();
        for (int i = 0; i < text.length(); i++) {
            char currentChar = text.charAt(i);
            if (Character.isLetter(currentChar)) {
                char encryptedChar = (char) (((currentChar - 'a' + key) % 26) + 'a');
                encryptedText.append(encryptedChar);}
             else {
                encryptedText.append(currentChar); }}
        return encryptedText.toString();
    }
    private static String decrypt(String text, int key) {
        return encrypt(text, 26 - key);
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the string to encrypt: ");
        String originalText = scanner.nextLine();
        System.out.print("Enter the key for encryption: ");
        int key = scanner.nextInt();
        String lowerCaseText = originalText.toLowerCase();
        String encryptedText = encrypt(lowerCaseText, key);
        String decryptedText = decrypt(encryptedText, key);
        System.out.println("\nOriginal Text: " + originalText);
        System.out.println("Encrypted Text: " + encryptedText);
        System.out.println("Decrypted Text: " + decryptedText);
    }
}
