import 'package:newsapp/features/domain/repository/article_repository.dart';

import '../../../core/resources/data_state.dart';
import '../../domain/entities/article.dart';

class ArticleRepositoryImplementation implements ArticleRepository {
  @override
  Future<DataState<List<ArticleEntity>>> getNewsArticle() {
    // TODO: implement getNewsArticle
    throw UnimplementedError();
  }
}
