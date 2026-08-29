import '../../domain/repositories/splash_repository.dart';
import '../../data/data_sources/splash_data_source.dart';

class SplashRepositoryImplement implements SplashRepository {
  final SplashDataSource dataSource;
    SplashRepositoryImplement({required this.dataSource});
}
