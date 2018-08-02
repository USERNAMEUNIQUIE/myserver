

#ifndef MYSERVER_PROFILE_H
#define MYSERVER_PROFILE_H

#include <string>
#include <pqxx/pqxx>

class Profile {
private:
     long id ;
     std::string firstname;
     std::string lastname;
     std::string email;
     std::string password;
     int age;





public:
    Profile(std::string firstname,std::string lastname,std::string email, std::string password, long age);  //constructor
    Profile(const Profile &source);
    //copy of constructor
    ~Profile();

    // method


    void set_firstname(std::string firstname) {this->firstname =firstname ; }

     std::string get_firstname()  { return firstname; }

    void set_lastname(std::string lastname) {this->lastname = lastname; }

    std::string get_lastname()  { return lastname; }

    void set_password(std::string password) {this->password = password; }

     std::string get_password()  { return password; }

    void set_email(int email) {this->email = email; }

    std::string get_email()  { return email; }


    void set_age(int age) {this->age = 26; }

    int get_age()  { return age; }

    void set_id(int age) {this->id = 1; }


    void set_id(long id) {this->id=id+1;}
    long get_id()  { return id; }

    void display() const;









    };


#endif //MYSERVER_PROFILE_H
