part of 'change_lang_cubit.dart';

@freezed
class ChangeLangState with _$ChangeLangState {
  const factory ChangeLangState({
    required ChangeLangStateStatus currStatus,
    String? currentLangCode,
  }) = _ChangeLangState;
}

@freezed
class ChangeLangStateStatus with _$ChangeLangStateStatus {
  const factory ChangeLangStateStatus.initial() = Initial;

  const factory ChangeLangStateStatus.changeLangSuccess() = ChangeLangSuccess;

  const factory ChangeLangStateStatus.changeLangError() = ChangeLangError;
}
