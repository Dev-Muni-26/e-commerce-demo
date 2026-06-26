

class TValidator {
  static String? validateEmail(String? value){
    if (value == null || value.isEmpty) {
      return 'E-mail is required.';
    }

    //Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }else{
      return null;
    }
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    //check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 character long.';
    }

    //check for uppercase
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    //check for number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    //check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }

    return null;
  }

  static String? validateLoginPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    return null;
  }

  static String? validateEmptyText(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    //Regular expression for phone number validation (assuming a 10-digit number format)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format minimum 10 digits required.';
    }

    return null;

  }


  //add more validator as per required
}