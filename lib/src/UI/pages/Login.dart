import 'package:caja_chica/src/UI/blocs/login/login_cubit.dart';
import 'package:caja_chica/src/UI/pages/Desembolsos.dart';
import 'package:caja_chica/src/UI/widgets/Detalles_de_Desembolsos.dart';
import 'package:caja_chica/src/di_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginCubit cubit;
  @override
  void initState() {
    cubit = serviceLocator.get<LoginCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Cargando...'),
              backgroundColor: Colors.blueGrey,
            ),
          ),
          success: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Success...'),
              backgroundColor: Colors.blueGrey,
            ),
          ),
          error: () {},
        );
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
          height: 40,
          color: Colors.white,
          child: Row(
            children: const [
              Text(
                'Desarrollado por BaniSoft SRL',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Icon(
                Icons.copyright,
                color: Colors.grey,
                size: 14,
              )
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Icon(Icons.settings)),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.blueGrey,
                  Colors.white70,
                ],
              )),
              height: 320,
              child: Image.asset(
                'assets/Bs.png',
                width: 100,
              ),
            ),
            Center(
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                margin: const EdgeInsets.only(left: 20, right: 20, top: 63),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text(
                        'Welcome to the Caja Chica App',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(Icons.account_circle_rounded),
                            labelText: 'USERNAME'),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(Icons.lock),
                            labelText: 'PASSWORD',
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            )),
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 43,
                      ),
                      MaterialButton(
                        onPressed: () async {
                          await cubit.login("dgarcia", "65");
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const ListadoDesembolso(),
                          //     ));
                        },
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        color: Theme.of(context).primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'LOGIN',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
