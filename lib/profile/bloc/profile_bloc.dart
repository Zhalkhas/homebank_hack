import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homebankhack/profile/model/profile.dart';
import 'package:meta/meta.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) => event.when(
          loadProfile: () async {
            await Future<void>.delayed(const Duration(seconds: 1)).then(
              (_) => emit(ProfileState.loaded(Profile(
                  name: 'Түлкібай',
                  surname: 'Алпысбайұлы',
                  birthDate: DateTime(1969, 6, 9)))),
            );
          },
          errorHappened: (err) => emit(ProfileState.error(err)),
        ));
    add(const ProfileEvent.loadProfile());
  }
}
