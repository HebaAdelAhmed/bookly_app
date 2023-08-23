import 'package:dartz/dartz.dart';

import '../../../../core/errors/faliure.dart';
import '../entities/book_entity.dart';

abstract class HomeBaseRepository {
  Future<Either<Failure , List<BookEntity>>> getFeaturedBooks();
  Future<Either<Failure , List<BookEntity>>> getNewestBooks();
}