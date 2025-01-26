import 'package:dartz/dartz.dart';

import '../../data/models/member_model.dart';

abstract class MembersRepositories {
  Future<Either<List<MemberModel>, List<MemberModel>>> getMembers();
}
