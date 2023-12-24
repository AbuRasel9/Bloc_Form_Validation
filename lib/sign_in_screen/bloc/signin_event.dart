abstract class SigninEvent{}
class SigninTextEvent extends SigninEvent{
  final String emailValue;
  final String passwordemailValue;
  SigninTextEvent(this.emailValue,this.passwordemailValue);

}
class SigninSubmitedEvent extends SigninEvent{

  final String email;
  final String password;
  SigninSubmitedEvent(this.email,this.password);

}