#include <iostream>
#include <cctype>

std::string CaesarCipherBangla(const std::string& text, int shift) {
    std::string result = "";

    for (char character : text) {
        if (std::isalpha(character)) {
            int unicodeValue = character;

            if ('অ' <= character && character <= 'ঔ') {
                // Handling Bengali vowels
                unicodeValue = ((unicodeValue - 'অ' + shift) % 11) + 'অ';
            } else if ('ক' <= character && character <= 'ৎ') {
                // Handling Bengali consonants
                unicodeValue = ((unicodeValue - 'ক' + shift) % 39) + 'ক';
            }

            result += static_cast<char>(unicodeValue);
        } else {
            result += character;
        }
    }

    return result;
}

int main() {
    std::string plaintext = "আমার সোনার বাংলা";
    int shiftValue = 3;

    std::string cipherText = CaesarCipherBangla(plaintext, shiftValue);

    std::cout << "Original Text: " << plaintext << std::endl;
    std::cout << "Cipher Text: " << cipherText << std::endl;

    return 0;
}
