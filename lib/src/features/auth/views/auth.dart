import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savory_scout/src/features/auth/views/widgets/auth_background.dart';
import 'package:savory_scout/src/features/auth/views/widgets/custom_text_field.dart';

enum ScreenState {
  signIn,
  signUp,
}

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  ScreenState screenState = ScreenState.signIn;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // header
            Text(
              screenState == ScreenState.signIn
                  ? 'Login'
                  : 'Create new\n   Account',
              style: GoogleFonts.poppins(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),

            // text button
            TextButton(
              onPressed: () {
                if (screenState == ScreenState.signIn) {
                  setState(() {
                    screenState = ScreenState.signUp;
                  });
                } else {
                  setState(() {
                    screenState = ScreenState.signIn;
                  });
                }
              },
              child: Text(
                screenState == ScreenState.signIn
                    ? 'Don\'t have acount? Create new account.'
                    : 'Already Registered? Log in here.',
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),

            // text fields
            if (screenState == ScreenState.signUp)
              CustomTextField(
                title: 'NAME',
                hintText: 'John Doe',
                controller: nameController,
                textInputType: TextInputType.text,
              ),
            CustomTextField(
              title: 'EMAIL',
              hintText: 'jhondoe@example.com',
              controller: emailController,
              textInputType: TextInputType.text,
            ),
            CustomTextField(
              title: 'PASSWORD',
              hintText: '********',
              controller: passwordController,
              textInputType: TextInputType.text,
              obscureText: true,
            ),
            const SizedBox(height: 10),

            // sign in/sign up button
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFBD59),
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                screenState == ScreenState.signIn ? 'Log in' : 'Sign up',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
