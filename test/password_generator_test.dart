import 'package:flutter_test/flutter_test.dart';

import 'package:password_generate/password_generate.dart';

void main() {
  final pass = PasswordGenerator();
  test('Check generating password', () {

    bool check;
    String passowrd=pass.passwordGenerate(8);
    expect(passowrd.length==8?true:false,true);
  }

  );

  test('check Password check is work', () {
    bool check;
    expect(check=pass.isPasswordValid("Ab@145c5",8), check==true);
  }

  );
}
