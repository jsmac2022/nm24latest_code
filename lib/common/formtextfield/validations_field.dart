String? validateEmailField( value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern as String);
  if (value.isEmpty) {
    return 'Email is Required.';
  } else if (!regex.hasMatch(value)) {
    return 'Invalid Email';
  }

}

String? validatePassword( value) {
  // Pattern pattern = r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
  // RegExp regex = new RegExp(pattern);

  if (value.isEmpty) {
    return 'Password is Required.';
  } else if (value.length < 6) {
    return 'Password required at least 6 numbers';
  }
  // else if (!regex.hasMatch(value))
  //   return 'Password must contain numbers, letter, and at least six characters';
 
}

String? validateNewPassword( value) {
  // Pattern pattern = r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
  // RegExp regex = new RegExp(pattern);

  if (value.isEmpty) {
    return 'New Password is Required.';
  } else if (value.length < 6) {
    return 'New Password required at least 6 numbers';
  }
  // else if (!regex.hasMatch(value))
  //   return 'Password must contain numbers, letter, and at least six characters';
 
}

String? validateName(value) {
  if (value.isEmpty) {
    return 'Name is Required.';
  } else if (value.length < 4) {
    return 'Name required at least 4 Characters';
  }
  
}

String? validateTitle(value) {
  if (value.isEmpty) {
    return 'Project Name is Required.';
  }
  
}

String? validatePromoCode(value) {
  if (value.isEmpty) {
    return 'Please enter promo code.';
  }

}

String? validateHome(value) {
  if (value.isEmpty) {
    return 'Home Name is Required.';
  }
  
}

String? validateBlock(value) {
  if (value.isEmpty) {
    return 'Block is Required.';
  }
 
}

String? validateStreet(value) {
  if (value.isEmpty) {
    return 'Street is Required.';
  }
 
}

String? validateAvenue(value) {
  if (value.isEmpty) {
    return 'Avenue is Required.';
  }
  
}

String? validateBuilding(value) {
  if (value.isEmpty) {
    return 'Building is Required.';
  }

}

String? validateAppartmentNo(value) {
  if (value.isEmpty) {
    return 'Appartment no. is Required.';
  }
  
}

String? validateOffice(value) {
  if (value.isEmpty) {
    return 'Office is Required.';
  }
  
}

String? validateFloor(value) {
  if (value.isEmpty) {
    return 'Floor is Required.';
  }
 
}

String? validaterequired(value) {
  if (value.isEmpty) {
    return 'Required Field.';
  }
 
}

String? validateAddressName(value) {
  if (value.isEmpty) {
    return 'Address Name is Required.';
  } else if (value.length < 3) {
    return 'Address Name required at least 6 numbers';
  }
  
}

String? validateMobile(value) {
  if (value.isEmpty) {
    return 'Mobile Number is Required.';
  } else if (value.length <10) {
    return 'Mobile Number required 10 digits';
  }
 
}
