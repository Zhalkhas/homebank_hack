import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homebankhack/profile/bloc/profile_bloc.dart';
import 'package:homebankhack/profile/model/profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) => state.when(
                    initial: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (Profile profile) => Column(
                      children: [
                        UserAccountsDrawerHeader(
                            currentAccountPicture: const Icon(
                              Icons.account_circle,
                              color: Colors.white,
                              size: 80,
                            ),
                            accountName:
                                Text('${profile.name} ${profile.surname}'),
                            accountEmail: Text('${profile.birthDate}'))
                      ],
                    ),
                    error: (Object err) => Center(
                      child: Text('Ooooops some err happened $err'),
                    ),
                  ));
        },
      ),
    );
  }
}
