part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadProfile() = _loadProfile;

  const factory ProfileEvent.errorHappened(Object err) = _errorHappened;
}
