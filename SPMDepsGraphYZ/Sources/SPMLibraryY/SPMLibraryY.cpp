#include <SPMLibraryY/SPMLibraryY.h>

SPMLibraryY::SPMLibraryY()
{
}

SPMLibraryY::~SPMLibraryY()
{
}

// static.
std::string &SPMLibraryY::name()
{
  static std::string msg = "SPMLibraryY";

  std::cout << msg << std::endl;

  return msg;
}
