#include <SPMLibraryZ/SPMLibraryZ.h>

SPMLibraryZ::SPMLibraryZ()
{
}

SPMLibraryZ::~SPMLibraryZ()
{
}

// static.
std::string &SPMLibraryZ::name()
{
  static std::string msg = "SPMLibraryZ";

  std::cout << msg << std::endl;

  return msg;
}
