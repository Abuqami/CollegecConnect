

extension exString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r'^[\d]{9}.+@(iau\.edu\.sa)+$'); //[\d]{10}+@(iau\.edu\.sa)+$
    return emailRegExp.hasMatch(this);
  }

  bool get isValidPassword{
    final passwordRegExp = RegExp(r"(?=[A-Za-z0-9@#$%^&+!=]+$)^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#$%^&+!=])(?=.{8,}).*$");
    return passwordRegExp.hasMatch(this);
  }
  bool get isNotNull{
    return this!=null;
  }
  bool get isValidName {
    final NameRegExp = RegExp(r"^[a-zA-Z]+$");
    return NameRegExp.hasMatch(this);
  }




}