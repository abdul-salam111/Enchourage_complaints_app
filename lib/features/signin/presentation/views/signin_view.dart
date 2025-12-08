import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/signin_bloc.dart';
import '../blocs/signin_event.dart';
import '../blocs/signin_state.dart';
import '../../../../core/app_dependencies.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<SignInBloc>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Sign In')),
        body: BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) {
            if (state is SignInLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            
            if (state is SignInSuccess) {
              return const Center(child: Text('Sign In Successful!'));
            }
            
            if (state is SignInError) {
              return Center(child: Text('Error: ${state.message}'));
            }
            
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<SignInBloc>().add(
                    SignInSubmitted(email: 'test@example.com', password: 'password'),
                  );
                },
                child: const Text('Login'),
              ),
            );
          },
        ),
      ),
    );
  }
}
