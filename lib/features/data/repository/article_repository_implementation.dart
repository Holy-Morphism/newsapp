import 'dart:io';

import 'package:dio/dio.dart';
import 'package:newsapp/core/constants/contstants.dart';
import 'package:newsapp/features/domain/repository/article_repository.dart';

import '../../../core/resources/data_state.dart';
import '../../domain/entities/article.dart';
import '../data_sources/remote/news_api_service.dart';

class ArticleRepositoryImplementation implements ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImplementation(this._newsApiService);

  @override
  Future<DataState<List<ArticleEntity>>> getNewsArticle() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticle(
        apiKey: newsApiKey,
        country: country,
        category: category,
      );
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
