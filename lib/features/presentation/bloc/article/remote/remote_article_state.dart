import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:newsapp/features/domain/entities/article.dart';

abstract class RemoteArticleState extends Equatable {
  final List<ArticleEntity>? articles;
  final DioException? exception;

  const RemoteArticleState({this.articles, this.exception});

  @override
  List<Object> get props => [articles!, exception!];
}

class RemoteArticlesLoading extends RemoteArticleState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticleState {
  const RemoteArticlesDone(List<ArticleEntity>? articles)
      : super(articles: articles);
}

class RemoteArticlesException extends RemoteArticleState {
  const RemoteArticlesException(DioException? exception)
      : super(exception: exception);
}
