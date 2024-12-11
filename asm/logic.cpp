#include <iostream>
using namespace std;

void logicGates() {
    int a, b;
    cout << "Enter two binary inputs (0 or 1): ";
    cin >> a >> b;

    // NOT gate
    cout << "NOT " << a << " = " << !a << endl;
    cout << "NOT " << b << " = " << !b << endl;

    // AND gate
    cout << "AND (" << a << ", " << b << ") = " << (a && b) << endl;

    // OR gate
    cout << "OR (" << a << ", " << b << ") = " << (a || b) << endl;

    // NAND gate
    cout << "NAND (" << a << ", " << b << ") = " << !(a && b) << endl;

    // NOR gate
    cout << "NOR (" << a << ", " << b << ") = " << !(a || b) << endl;
}

int main() {
    logicGates();
    return 0;
}
