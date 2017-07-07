//shared_lib.cpp
#include "shared_lib.hpp"
#include <iostream>
TestClass::TestClass()
{
    // nothing to do
    std::cout << "constructor" << std::endl;
}
 
TestClass::~TestClass()
{
    // nothing to do
    std::cout << "destructor" << std::endl;
}
 
void TestClass::test()
{
    std::cout << "Hello world!" << std::endl;
}
