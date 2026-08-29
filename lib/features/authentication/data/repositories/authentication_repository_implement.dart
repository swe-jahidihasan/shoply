import '../../domain/repositories/authentication_repository.dart';
import '../../data/data_sources/authentication_data_source.dart';

class AuthenticationRepositoryImplement implements AuthenticationRepository {
  final AuthenticationDataSource dataSource;
    AuthenticationRepositoryImplement({required this.dataSource});
}
