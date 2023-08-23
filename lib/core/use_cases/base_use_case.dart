import 'package:dartz/dartz.dart';

import '../errors/faliure.dart';

abstract class BaseUseCase<Type , Param> {
Future<Either<Failure , Type>> execute([Param param]);
}

class NoParam {

}