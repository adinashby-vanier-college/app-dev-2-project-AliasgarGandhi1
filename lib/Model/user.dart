class UserData{
  static String key ="";
  static bool login = false;
  static String userName="";
  static String phoneNumber="";
  static String emailId="";
  static String address="";
  static bool addressSelected=false;

  static Map UserMap= new Map();

  static void setUserInfo(){
    Map users = UserData.UserMap.values as Map;
    UserData.userName = users['name'];
    UserData.phoneNumber = users['phone'];
  }
}