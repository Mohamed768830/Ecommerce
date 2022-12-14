import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../shared/components/component.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset('assets/images/upLogin.png'),
                Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    Stack(
                      alignment: const Alignment(2.5, -2.3),
                      children: [
                        SvgPicture.asset(
                          'assets/images/logo.svg',
                          color: HexColor('F3603F'),
                        ),
                        SvgPicture.asset('assets/images/logo2.svg',
                            color: HexColor('F3603F')),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign Up',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Enter your credentials to continue',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: HexColor('7C7C7C')),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  onTap: () {},
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor('E2E2E2'))),
                    prefixIcon: const Icon(Icons.person),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  onTap: () {},
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: HexColor('E2E2E2'))),
                      prefixIcon: const Icon(Icons.email)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscureText: isPassword,
                  keyboardType: TextInputType.visiblePassword,
                  onTap: () {},
                  // controller: TextEditingController(),
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: HexColor('E2E2E2'))),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                        icon: Icon(isPassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset('assets/images/upLogin.png'),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'By continuing you agree to our',
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(

                              'Terms of Service',
                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'and',
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Privacy Policy.',
                            ),
                          ),

                        ],
                      ),
                    ),

                    defualtButton(
                        context: context,
                        name: 'Sign up',
                        onPressed: () {},
                        color: Colors.white),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account? '),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sing up',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: HexColor('53B175')),
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
