import '../../domain/repositories/products_repository.dart';
import '../../data/data_sources/products_data_source.dart';

class ProductsRepositoryImplement implements ProductsRepository {
  final ProductsDataSource dataSource;
    ProductsRepositoryImplement({required this.dataSource});
}
