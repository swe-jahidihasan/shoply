import '../../domain/repositories/cart_repository.dart';
import '../../data/data_sources/cart_data_source.dart';

class CartRepositoryImplement implements CartRepository {
  final CartDataSource dataSource;
    CartRepositoryImplement({required this.dataSource});
}
