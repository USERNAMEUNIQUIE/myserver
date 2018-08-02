#include <iostream>
#include "profile.h"
#include <string>
#include <pqxx/pqxx>




void addprofile();
std::string setpassword();
void savedata(Profile *a);

void savedata(Profile *a){
    using namespace std;
    using namespace pqxx;
    string sql_cmd;

    string table = "profiles_data";



    connection C("dbname = myserver  user = rostom password = password1234  hostaddr = 127.0.0.1 port = 5432");

    connection nt_C("dbname = myserver  user = rostom password = password1234  hostaddr = 127.0.0.1 port = 5432");


    if (  C.is_open()) {
        cout << "Opened database successfully: " << C.dbname() << endl;

    } else {
        cout << "Can't open database" << endl;

    }


    work W(C);
    nontransaction N(nt_C);


    string cmd = "SELECT relname FROM pg_class WHERE relname = '" + table + "';";

    const string ntquery =  cmd.c_str();
    result ntq(N.exec(to_string( ntquery)));

    if(ntq.empty()) {

        sql_cmd = "CREATE TABLE profiles_data(" \
              "ID INT PRIMARY KEY       KEY                NOT NULL," \
              "FIRSTNAME                TEXT               NOT NULL," \
              "LASTNAME                 TEXT               NOT NULL," \
              "EMAIL                    CHAR(35)           NOT NULL," \
              "AGE                      INT                NOT NULL," \
              "PASSWORD                 CHAR(20)           NOT NULL );";
        cout<<"Created table"<<endl;
        W.exec(sql_cmd);
        W.commit();
    }else{
        cout << "Table " << table << " already exists!" << endl;
    }
    result res =W.exec("SELECT * FROM "+ table+"" );
    long  last= res.size();
    a->set_id(last);

    std::string sql;

    sql = "INSERT INTO  profiles_data(ID,FIRSTNAME,LASTNAME,EMAIL,AGE,PASSWORD) "  \
         "VALUES ( '" + std::to_string(a->get_id()) +
          "','"+ a->get_firstname() +"' , '"+a->get_lastname() +
          "', '"+a->get_email()+"' , '"+  std::to_string(a->get_age())+
          "','"+ a->get_password() +"' ); " ;


    W.exec(sql);
    W.commit();
    C.disconnect ();
    nt_C.disconnect();






}






std::string setpassword(){
    std::string password;
    std::string password2;
    std::cout<<"your new password";
    std::cin>>password;
    std::cout<<"enter password agian";
    std::cin>>password2;
    if(password==password2){
        password= password2;
    } else{
        std::cout<<"does not match"<< std::endl;
        setpassword();
    }
    return password;
}



void addprofile(){
    std::string firstname;
    std::string lastname;
    std::string email;
    std::string password;
    int age;
    std::cout<<"To add profile,follow the next steps"<<std::endl;
    std::cout<<"your fist name";
    std::cin>>firstname;
    std::cout<<"your last name";
    std::cin>>lastname;
    std::cout<<"your email";
    std::cin>>email;
    std::cout<<"your age";
    std::cin>>age;

    password = setpassword();

    Profile *a = new Profile(firstname,lastname,email,password,age);
    a->display();

    savedata(a);
    delete a;

}




int main(int argc, char* argv[]) {

   addprofile();

    return 0;
}