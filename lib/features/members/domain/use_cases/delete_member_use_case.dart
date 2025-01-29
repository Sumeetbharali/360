import 'package:gym_management/features/members/domain/repositories/members_repositories.dart';

class DeleteMemberUseCase {
  MembersRepositories _membersRepositories;

  DeleteMemberUseCase(this._membersRepositories);

  Future<void> execute(String id) async {
    return await _membersRepositories.deleteMember(id);
  }
}
