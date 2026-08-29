import '../../domain/repositories/store_repository.dart';
import '../../data/data_sources/store_data_source.dart';

class StoreRepositoryImplement implements StoreRepository {
  final StoreDataSource dataSource;
    StoreRepositoryImplement({required this.dataSource});
}
