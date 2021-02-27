#include <iostream>

#include "person.h"

int main()
{
    Person person = Person("lol");
    std::cout << person.getName() << std::endl;
    return 0;
}