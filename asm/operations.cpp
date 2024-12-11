#include <iostream>
#include <bitset>
#include <iomanip>
using namespace std;

// Convert decimal to binary
void decimalToBinary(int num) {
    cout << num << " in binary = " << bitset<16>(num) << endl;
}

// Add two 16-bit binary numbers
void addBinary(int a, int b) {
    bitset<16> binA(a), binB(b);
    int sum = a + b;
    cout << binA << " + " << binB << " = " << bitset<16>(sum) << " (Sum in binary)" << endl;
}

// Add -124 and 236 and show binary
void addDecimalBinary() {
    int a = -124, b = 236;
    int sum = a + b;
    cout << a << " + " << b << " = " << sum << endl;
    cout << "Result in binary = " << bitset<16>(sum) << endl;
}

// Convert decimal to hexadecimal
void decimalToHexadecimal(int num) {
    cout << num << " in hexadecimal = " << hex << uppercase << num << endl;
}

int main() {
    int num1, num2;

    // Decimal to Binary
    cout << "Enter a decimal number to convert to binary: ";
    cin >> num1;
    decimalToBinary(num1);

    // Binary Addition
    cout << "Enter two 16-bit decimal numbers to add: ";
    cin >> num1 >> num2;
    addBinary(num1, num2);

    // Add -124 and 236
    addDecimalBinary();

    // Decimal to Hexadecimal
    cout << "Enter a decimal number to convert to hexadecimal: ";
    cin >> num1;
    decimalToHexadecimal(num1);

    return 0;
}
