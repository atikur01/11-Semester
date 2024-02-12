#include <iostream>
#include <string>

using namespace std;

string encrypt(string text, int key) {
    for (char& c : text) {
        if (isalpha(c)) {
            c = 'a' + (c - 'a' + key) % 26;
        }
    }
    return text;
}

string decrypt(string text, int key) {
    return encrypt(text, 26 - key);
}

int main() {
    cout << "Enter the string to encrypt: ";
    string originalText;
    getline(cin, originalText);
    cout << "Enter the key for encryption: ";
    int key;
    cin >> key;
    for (char& c : originalText) {
        c = tolower(c);
    }
    string encryptedText = encrypt(originalText, key);
    string decryptedText = decrypt(encryptedText, key);
    cout << "\nOriginal Text: " << originalText << endl;
    cout << "Encrypted Text: " << encryptedText << endl;
    cout << "Decrypted Text: " << decryptedText << endl;
    return 0;
}
