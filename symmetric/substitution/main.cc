#include <iostream>
using namespace std;

char Shift(char msg, int offset) {
  return msg + offset;
}

int main() {
  for (int i=0;i<100; i++) {
    cout << Shift('a', i) << endl;
  }
}
