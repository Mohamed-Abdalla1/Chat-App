import 'package:chat_app1/cubits/chat_cubit/cubit/chat_cubit.dart';
import 'package:chat_app1/cubits/login_cubit/cubit/login_page_cubit.dart';
import 'package:chat_app1/cubits/signin_cubit/cubit/sign_in_cubit.dart';
import 'package:chat_app1/firebase_options.dart';
import 'package:chat_app1/pages/chat_page.dart';
import 'package:chat_app1/pages/login_page.dart';
import 'package:chat_app1/pages/resgister_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginPageCubit(),
        ),
        BlocProvider(
          create: (context) => SignInCubit(),
        ),
        BlocProvider(
          create: (context) => ChatCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          LoginPage.id: (context) => LoginPage(),
          RegisterPage.id: (context) => RegisterPage(),
          ChatPage.id: (context) => ChatPage()
        },
        home: LoginPage(),
      ),
    );
  }
}
