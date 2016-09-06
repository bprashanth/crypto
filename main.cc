#include <fstream>
#include <iostream>
#include <gflags/gflags.h>
#include "json/json.h"
#include "symmetric/symmetric.h"

DEFINE_bool(decrypt, false, "boolean indicating encryption/decryption.");
DEFINE_string(manifest, "", "path to json manifest with algorithm params.");

int main(int argc, char* argv[]) {
  google::SetUsageMessage("A crypto toolbox.");
  google::ParseCommandLineFlags(&argc, &argv, true);

  string manifest_path = FLAGS_manifest;
  Json::Value root;
  ifstream config("test.json");
  config >> root;
  cout << root << endl;

  Caesar c;
  cout << c.Encrypt("test") << endl;
  cout << c.Decrypt("test") << endl;

  if (FLAGS_decrypt) {
          cout << "decrypt" << endl;
  }

  google::ShutDownCommandLineFlags();
  return 0;
}
