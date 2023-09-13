import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> key = GlobalKey();
  // LoginRequestData loginData = LoginRequestData();
  bool validate = false;
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        // title: const Text('TEXT'),
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "TELA DE LOGIN SIMPLES ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                  ),
                ),
                const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 100.0,
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autofocus: false,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Email',
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        obscureText: obscureText,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Password',
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  obscureText = !obscureText;
                                },
                              );
                            },
                            child: Icon(
                              obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              semanticLabel: obscureText
                                  ? 'Mostrar senha'
                                  : 'Esconder senha',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: ElevatedButton(
                      child: const Text('Login'), onPressed: () {}),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Não possui uma conta?'),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Recuperar Senha',
                  ),
                ),
                const SizedBox(height: 20),
                const Text("João Henrique - LOGIN VIEW - 2023"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
