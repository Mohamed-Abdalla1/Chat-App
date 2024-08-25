import 'package:bloc/bloc.dart';
import 'package:chat_app1/widgets/show_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());
  Future<void> SignIn({required email, required password}) async {
    emit(SignInLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      emit(SignInSucess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(SignInFailure(errmessage: ex.toString()));
      } else if (ex.code == 'email-already-in-use') {
        emit(SignInFailure(errmessage: ex.toString()));
      }
    } on Exception catch (e) {
      emit(SignInFailure(errmessage: e.toString()));
    }
  }
}
