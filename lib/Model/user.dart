class User{
  static late String _userName;
  static late String _phoneNumber;
  static late String _emailId;
  static late String _address;

  static String get userName => _userName;

  static set userName(String value) {
    _userName = value;
  }

  static String get phoneNumber => _phoneNumber;

  static String get address => _address;

  static set address(String value) {
    _address = value;
  }

  static String get emailId => _emailId;

  static set emailId(String value) {
    _emailId = value;
  }

  static set phoneNumber(String value) {
    _phoneNumber = value;
  }
}