class AppValidators{

  static String? passwordValidator(String? value){
    return null;
  }

  static String? emailValidator(String? value){
   final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
   if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!_emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }
}