part of 'login_page_cubit.dart';

@immutable
sealed class LoginPageState {}

final class LoginPageInitial extends LoginPageState {}
final class LoginPageSucess extends LoginPageState {}
final class LoginPageLoading extends LoginPageState {}
final class LoginPageFailure extends LoginPageState {
    final String errmessage;

  LoginPageFailure({required this.errmessage});
}
