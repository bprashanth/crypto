#include "base/base.h"

class Caesar: public Crypto {
  public:
    Caesar() {cout << "caesar init" << endl;}
    string Encrypt(string msg);
    string Decrypt(string e);
};
