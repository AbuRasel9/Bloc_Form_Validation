abstract class SigninState{}
class validState extends SigninState{}
class ErrorState extends SigninState{
  final String errorText;
  ErrorState(this.errorText);
}