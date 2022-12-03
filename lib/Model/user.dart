class UserData{
  static String key ="wTvVh2NgqddppWw9Y7GtmsI9SUm1";
  static String userName="";
  static String phoneNumber="";
  static String emailId="";

  static Map UserMap= new Map();

  static void setUserInfo(){
    Map users = UserData.UserMap.values as Map;
    UserData.userName = users['name'];
    UserData.phoneNumber = users['phone'];
  }
}