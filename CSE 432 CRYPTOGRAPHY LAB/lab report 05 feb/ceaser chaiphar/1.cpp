#include <iostream>
using namespace std;

// This function receives plainText and shiftValue
// returns the encrypted text using Caesar Cipher
string encryptCaesarCipher(string plainText, int shiftValue)
{
    string encryptedText = "";

    // Traverse each character in the plainText
    for (int i = 0; i < plainText.length(); i++) {
        // Apply transformation to each character

        // Encrypt Uppercase letters
        if (isupper(plainText[i]))
            encryptedText += char(int(plainText[i] + shiftValue - 'A') % 26 + 'A');
        // Encrypt Lowercase letters
        else
            encryptedText += char(int(plainText[i] + shiftValue - 'a') % 26 + 'a');
    }

    // Return the resulting encrypted string
    return encryptedText;
}

// This function receives encryptedText and shiftValue
// returns the decrypted text using Caesar Cipher
string decryptCaesarCipher(string encryptedText, int shiftValue)
{
    string decryptedText = "";

    // Traverse each character in the encryptedText
    for (int i = 0; i < encryptedText.length(); i++) {
        // Apply transformation to each character

        // Decrypt Uppercase letters
        if (isupper(encryptedText[i]))
            decryptedText += char(int(encryptedText[i] - shiftValue - 'A' + 26) % 26 + 'A');
        // Decrypt Lowercase letters
        else
            decryptedText += char(int(encryptedText[i] - shiftValue - 'a' + 26) % 26 + 'a');
    }

    // Return the resulting decrypted string
    return decryptedText;
}

int main()
{
    // User input for plain text
    cout << "Enter the plain text: ";
    string plainText;
    getline(cin, plainText);

    // User input for shift value
    cout << "Enter the shift value: ";
    int shiftValue;
    cin >> shiftValue;

    // Encrypt the text using Caesar Cipher
    string encryptedText = encryptCaesarCipher(plainText, shiftValue);

    // Display the encrypted text
    cout << "\nEncrypted Text: " << encryptedText;

    // Decrypt the text using Caesar Cipher
    string decryptedText = decryptCaesarCipher(encryptedText, shiftValue);

    // Display the decrypted text
    cout << "\nDecrypted Text: " << decryptedText;

    return 0;
}
