import 'package:dartz/dartz.dart';
import 'package:gym_management/features/members/data/data_sources/members_data_source.dart';
import 'package:gym_management/features/members/domain/repositories/members_repositories.dart';

import '../models/member_model.dart';

class MembersRepositoriesImp implements MembersRepositories {
  MembersRepositoriesImp(this._membersDataSource);

  MembersDataSource _membersDataSource;

  @override
  Future<Either<List<MemberModel>, Stream<List<MemberModel>>>>
      getMembers() async {
    final result = await _membersDataSource.getMembers();
    return result.fold((left) {
      return Left(left);
    }, (right) {
      return Right(right);
    });
  }

  @override
  Future<void> addMember(MemberModel member) async {
    await _membersDataSource.addMember(member);
  }
}
