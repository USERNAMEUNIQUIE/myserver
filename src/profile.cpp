

#include "profile.h"
#include <iostream>
#include <pqxx/pqxx>

Profile::Profile( std::string firstname,  std::string lastname, std::string email, std:: string password, long age):
      firstname(firstname), lastname(lastname),email(email),password(password), age(age) {}  //constructor of class

Profile::Profile(const Profile &source)
    : Profile{ source.firstname ,source.lastname, source.email,source.password, source.age} {}

Profile::~Profile() {}

void Profile::display() const {
    std::cout<< lastname <<firstname << std::endl;

}


