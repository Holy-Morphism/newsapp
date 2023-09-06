import 'package:newsapp/core/resources/data_state.dart';
import 'package:newsapp/features/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticle();
}
