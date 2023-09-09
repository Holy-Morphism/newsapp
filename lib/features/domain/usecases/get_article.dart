import 'package:newsapp/core/resources/data_state.dart';
import 'package:newsapp/core/usecases/usecase.dart';
import 'package:newsapp/features/domain/entities/article.dart';
import 'package:newsapp/features/domain/repository/article_repository.dart';

class GetArticleUseCase
    implements Usecase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void param}) {
    return _articleRepository.getNewsArticle();
  }
}
