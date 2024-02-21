import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool termsAndConditionCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> forgotPasswordKey = GlobalKey<FormState>();

  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is SignUpEvent) {
        try {
          emit(SignupLoadingState());
          await addUser();
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailAddress!,
            password: password!,
          );
          await FirebaseAuth.instance.currentUser!.sendEmailVerification();
          emit(SignupSuccessState());
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            emit(SignupErrorState(
                errorMessage: 'The password provided is too weak.'));
          } else if (e.code == 'email-already-in-use') {
            emit(SignupErrorState(
                errorMessage: 'The account already exists for that email.'));
          } else if (e.code == 'invalid-email') {
            emit(SignupErrorState(errorMessage: 'the Email is Invalid'));
          } else {
            emit(SignupErrorState(errorMessage: 'Something Went Wrong '));
          }
        } catch (e) {
          emit(SignupErrorState(errorMessage: e.toString()));
        }
      } else if (event is SignInEvent) {
        try {
          emit(SignInLoadingState());
          await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress!,
            password: password!,
          );
          emit(SignInSuccessState());
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            emit(SignInErrorState(
                errorMessage: 'No user found for that email.'));
          } else if (e.code == 'wrong-password') {
            emit(SignInErrorState(
                errorMessage: "Wrong password provided for that user."));
          } else {
            emit(SignInErrorState(
                errorMessage: "Check your Enail and Password!"));
          }
        } catch (e) {
          emit(SignInErrorState(errorMessage: e.toString()));
        }
      } else if (event is TermsAndConditionUpdateEvent) {
        termsAndConditionCheckBoxValue = event.newValueOfConditionUpdate;
        emit(TermsAndConditionUpdateState());
      } else if (event is ObscurePasswordTextUpdateEvent) {
        if (obscurePasswordTextValue == true) {
          obscurePasswordTextValue = false;
        } else {
          obscurePasswordTextValue = true;
        }
        emit(ObscurePasswordTextUpdateState());
      } else if (event is ResetPasswordEvent) {
        try {
          emit(ResetPasswordLoadingState());
          FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
          emit(ResetPasswordSuccessState());
        } catch (e) {
          emit(ResetPasswordErrorState(errorMessage: e.toString()));
        }
      }
    });
  }
  addUser() async {
    CollectionReference users = FirebaseFirestore.instance.collection("users");

    await users.add(
      {
        "email": emailAddress,
        "firstName": firstName,
        "lastName": lastName,
      },
    );
  }
}
