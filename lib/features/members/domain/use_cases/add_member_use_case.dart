import 'package:gym_management/features/members/domain/repositories/members_repositories.dart';

import '../../data/models/member_model.dart';

class AddMemberUseCase {
  MembersRepositories _membersRepositories;

  AddMemberUseCase(this._membersRepositories);

  Future<void> execute(MemberModel member) async {
    return await _membersRepositories.addMember(member);
  }
}
