import 'package:ditonton/data/datasources/db/database_helper_tv.dart';
import 'package:ditonton/data/datasources/tv_local_data_source.dart';
import 'package:ditonton/data/datasources/tv_remote_data_source.dart';
import 'package:ditonton/domain/repositories/tv_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([
  TvRepository,
  TelevisionRemoteDataSource,
  TelevisionLocalDataSource,
  DatabaseHelperTelevision,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}


