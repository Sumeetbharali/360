import 'package:dartz/dartz.dart';
import 'package:gym_management/features/members/domain/repositories/members_repositories.dart';

import '../../data/models/member_model.dart';

class MembersUseCase {
  MembersRepositories _membersRepositories;

  MembersUseCase(this._membersRepositories);

  Future<Either<List<MemberModel>, List<MemberModel>>> execute() async {
    return await _membersRepositories.getMembers();
  }
}
