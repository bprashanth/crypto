#include <iostream>
#include "symmetric/symmetric.h"
#include <gflags/gflags.h>

DEFINE_bool(decrypt, false, "boolean indicating encryption/decryption.");
DEFINE_string(manifest, "", "path to json manifest with algorithm params.");

int main(int argc, char* argv[]) {
  google::SetUsageMessage("A crypto toolbox.");
  google::ParseCommandLineFlags(&argc, &argv, true);

  Caesar c;
  c.encrypt();
  c.decrypt();
  if (FLAGS_decrypt) {
          cout << "decrypt" << endl;
  }
  cout << FLAGS_manifest << endl;

  google::ShutDownCommandLineFlags();
  return 0;
}
