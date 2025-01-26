part of 'members_cubit.dart';

@immutable
sealed class MembersState {}

final class MembersInitial extends MembersState {}

final class MembersSuccess extends MembersState {
  List<MemberModel> members;

  MembersSuccess(this.members);
}

final class MembersLoading extends MembersState {}

final class MembersFail extends MembersState {
  List<MemberModel> members;

  MembersFail(this.members);
}
