abstract class SigninState{}
class SigninInitialState extends SigninState{}

class SigninvalidState extends SigninState{}


class SigninErrorState extends SigninState{
  final String errorText;
  SigninErrorState(this.errorText);
}

class SigninLoadingState extends SigninState{}