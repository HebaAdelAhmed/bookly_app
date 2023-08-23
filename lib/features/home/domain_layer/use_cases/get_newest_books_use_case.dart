import 'package:dartz/dartz.dart';
import '../../../../core/errors/faliure.dart';
import '../entities/book_entity.dart';
import '../repositories/home_base_repository.dart';
import '../../../../core/use_cases/base_use_case.dart';

class GetNewestBooksUseCase extends BaseUseCase<List<BookEntity> , NoParam>{
  final HomeBaseRepository homeBaseRepository;

  GetNewestBooksUseCase(this.homeBaseRepository);

  @override
  Future<Either<Failure, List<BookEntity>>> execute([NoParam ? param]) async {
    return await homeBaseRepository.getNewestBooks();

  }



}