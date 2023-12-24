
import 'package:bloc_form_validation/sign_in_screen/bloc/signin_event.dart';
import 'package:bloc_form_validation/sign_in_screen/bloc/signin_state.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninBloc extends Bloc<SigninEvent,SigninState>{
  SigninBloc():super(SigninInitialState()){
    on<SigninTextEvent>((event, emit){
      if( EmailValidator.validate(event.emailValue)==false){
        emit(SigninErrorState("Please Enter your correct Email"));
      }
      else if(event.passwordemailValue.length<8){
        emit(SigninErrorState("Please Enter Valid Password"));
      }
      else{
        emit(SigninvalidState());
      }
    });
    on<SigninSubmitedEvent>((event, emit){
      emit(SigninLoadingState());

    });

  }



}