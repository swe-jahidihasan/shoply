import '../../domain/repositories/profile_repository.dart';
import '../../data/data_sources/profile_data_source.dart';

class ProfileRepositoryImplement implements ProfileRepository {
  final ProfileDataSource dataSource;
    ProfileRepositoryImplement({required this.dataSource});
}
