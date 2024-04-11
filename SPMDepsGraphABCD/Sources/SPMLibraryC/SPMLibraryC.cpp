#include <SPMLibraryC/SPMLibraryC.h>

SPMLibraryC::SPMLibraryC()
{
}

SPMLibraryC::~SPMLibraryC()
{
}

// static.
std::string &SPMLibraryC::name()
{
  static std::string msg = "SPMLibraryC";

  std::cout << msg << std::endl;

  return msg;
}
