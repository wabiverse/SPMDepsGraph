#include <SPMLibraryD/SPMLibraryD.h>

SPMLibraryD::SPMLibraryD()
{
}

SPMLibraryD::~SPMLibraryD()
{
}

// static.
std::string &SPMLibraryD::name()
{
  static std::string msg = "SPMLibraryD";

  std::cout << msg << std::endl;

  return msg;
}
