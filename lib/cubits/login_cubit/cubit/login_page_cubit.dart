import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_page_state.dart';

class LoginPageCubit extends Cubit<LoginPageState> {
  LoginPageCubit() : super(LoginPageInitial());
  Future<void> loginUser({required email, required password}) async {
    emit(LoginPageLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      emit(LoginPageSucess());
    } on Exception catch (e) {
      emit(LoginPageFailure(errmessage: e.toString()));
    }
  }
}
