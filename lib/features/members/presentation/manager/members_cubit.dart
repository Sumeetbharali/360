import 'package:bloc/bloc.dart';
import 'package:gym_management/features/members/data/data_sources/members_data_source.dart';
import 'package:gym_management/features/members/data/models/member_model.dart';
import 'package:gym_management/features/members/data/repositories_imp/members_repositories_imp.dart';
import 'package:gym_management/features/members/domain/repositories/members_repositories.dart';
import 'package:gym_management/features/members/domain/use_cases/members_use_case.dart';
import 'package:meta/meta.dart';

import '../../domain/use_cases/add_member_use_case.dart';
import '../../domain/use_cases/delete_member_use_case.dart';

part 'members_state.dart';

class MembersCubit extends Cubit<MembersState> {
  MembersCubit() : super(MembersInitial());
  late MembersUseCase _membersUseCase;
  late AddMemberUseCase _addMemberUseCase;
  late DeleteMemberUseCase _deleteMemberUseCase;
  late MembersRepositories _membersRepositories;
  late MembersDataSource _membersDataSource;
  List<MemberModel> members = [];
  MemberModel member = MemberModel();

  Future<void> getMembers() async {
    _membersDataSource = MembersOnlineDataSource();
    _membersRepositories = MembersRepositoriesImp(_membersDataSource);
    _membersUseCase = MembersUseCase(_membersRepositories);
    emit(MembersLoading());
    final result = await _membersUseCase.execute();

    result.fold(
      (l) {
        print("The length is >>>>>>>>>>>>>>> ${l.length}");
        members = l;
        emit(MembersFail(members));
      },
      (r) {
        r.listen((onData) {
          members = onData;
          emit(MembersSuccess(members));
        }, onError: (error) => emit(MembersFail([])));
      },
    );
  }

  Future<void> addMember() async {
    _membersDataSource = MembersOnlineDataSource();
    _membersRepositories = MembersRepositoriesImp(_membersDataSource);
    _addMemberUseCase = AddMemberUseCase(_membersRepositories);
    emit(MembersLoading());
    await _addMemberUseCase.execute(member);
    emit(MemberAdded());
  }

  Future<void> deleteMember() async {
    _membersDataSource = MembersOnlineDataSource();
    _membersRepositories = MembersRepositoriesImp(_membersDataSource);
    _deleteMemberUseCase = DeleteMemberUseCase(_membersRepositories);
    emit(MembersLoading());
    await _deleteMemberUseCase.execute(member.id);
    emit(MemberDeleted());
  }
}
