import 'package:flutter/material.dart';
import 'package:store_app/core/widgets/button_custom.dart';
import 'package:store_app/core/widgets/text_field_custom.dart';
import 'package:store_app/features/home/presentation/page/home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xAA98C7EB),
      backgroundColor: const Color.fromARGB(255, 243, 83, 9) ,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo/logo.jpg'),
              // const SizedBox(height: 20),
              // const Text('Store App', style: TextStyle(fontSize: 20)),
              // const SizedBox(height: 50),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Bienvenido!', style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 20),
              const TextFieldCustom(hintText: 'usuario'),
              const SizedBox(height: 20),
              const TextFieldCustom(hintText: 'Correo'),
              const SizedBox(height: 10),
              const TextFieldCustom(hintText: 'Contraseña'),
              const SizedBox(height: 20),
              ButtonCustom(
                title: 'Echo',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
              ),
              const SizedBox(height: 50),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                  children: <TextSpan>[
                    TextSpan(text: '¿No tienes cuenta?'),
                    TextSpan(
                      text: '  Registrate!',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}