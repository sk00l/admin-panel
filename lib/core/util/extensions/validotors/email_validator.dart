String? emailValidator(String? value) {
  if (!value!.endsWith('@xuno.co')) {
    return 'Email must end with @xuno.co';
  }
  return null;
}
