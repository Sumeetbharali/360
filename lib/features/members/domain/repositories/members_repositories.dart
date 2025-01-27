import 'package:dartz/dartz.dart';

import '../../data/models/member_model.dart';

abstract class MembersRepositories {
  Future<void> addMember(MemberModel member);
  Future<Either<List<MemberModel>, List<MemberModel>>> getMembers();
}
