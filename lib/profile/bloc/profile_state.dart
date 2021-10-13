part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _initial;

  const factory ProfileState.loaded(Profile profile) = _loaded;

  const factory ProfileState.error(Object err) = _error;
}
