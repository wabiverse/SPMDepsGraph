#include <SPMLibraryA/SPMLibraryA.h>

SPMLibraryA::SPMLibraryA()
{
}

SPMLibraryA::~SPMLibraryA()
{
}

// static.
std::string &SPMLibraryA::name()
{
  static std::string msg = "SPMLibraryA";

  std::cout << msg << std::endl;

  return msg;
}
