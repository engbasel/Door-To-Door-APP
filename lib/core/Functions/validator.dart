class Validator {
  static String? validateField(String? value, String fieldName,
      {String? fieldType}) {
    if (value == null || value.isEmpty) {
      return "Please enter your $fieldName";
    }

    if (fieldType != null) {
      switch (fieldType) {
        case 'username':
          return _validateUsername(value);
        case 'email':
          return _validateEmail(value);
        case 'password':
          return _validatePassword(value);
        case 'phone':
          return _validatePhoneNumber(value);
        default:
          return null;
      }
    }

    return null;
  }

  static String? _validateUsername(String username) {
    if (username.length < 4) {
      return 'Username must be at least 4 characters long';
    }
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(username)) {
      return 'Username can only contain letters, numbers, and underscores';
    }
    return null;
  }

  static String? _validateEmail(String email) {
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? _validatePassword(String password) {
    if (password.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(password)) {
      return 'Password must contain at least one letter and one number';
    }
    return null;
  }

  static String? _validatePhoneNumber(String phoneNumber) {
    if (!RegExp(r'^\+?[0-9]{10,}$').hasMatch(phoneNumber)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }
}
