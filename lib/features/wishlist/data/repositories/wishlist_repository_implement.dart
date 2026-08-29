import '../../domain/repositories/wishlist_repository.dart';
import '../../data/data_sources/wishlist_data_source.dart';

class WishlistRepositoryImplement implements WishlistRepository {
  final WishlistDataSource dataSource;
    WishlistRepositoryImplement({required this.dataSource});
}
