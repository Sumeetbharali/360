import 'package:flutter/material.dart';
import 'package:gym_management/features/login/presentation/views/login_options.dart';
import 'package:gym_management/main_layout.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
              body: Center(
            child: CircularProgressIndicator(),
          ));
        }

        final session = snapshot.hasData ? snapshot.data!.session : null;
        if (session != null) {
          return MainLayout();
        } else {
          return LoginOptions();
        }
      },
    );
  }
}
