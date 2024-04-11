#include <SPMLibraryB/SPMLibraryB.h>

SPMLibraryB::SPMLibraryB()
{
}

SPMLibraryB::~SPMLibraryB()
{
}

// static.
std::string &SPMLibraryB::name()
{
  static std::string msg = "SPMLibraryB";

  std::cout << msg << std::endl;

  return msg;
}
