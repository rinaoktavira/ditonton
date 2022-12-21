import 'dart:async' as _i6;
import 'dart:convert' as _i16;
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/data/datasources/db/database_helper_tv.dart';
import 'package:ditonton/data/datasources/tv_local_data_source.dart';
import 'package:ditonton/data/datasources/tv_remote_data_source.dart';
import 'package:ditonton/data/models/tv_detal_model.dart';
import 'package:ditonton/data/models/tv_model.dart';
import 'package:ditonton/data/models/tv_table.dart';
import 'package:ditonton/domain/entities/tv_entities.dart';
import 'package:ditonton/domain/entities/tv_detail_entities.dart';
import 'package:ditonton/domain/repositories/tv_repository.dart';
import 'package:http/http.dart';
import 'package:mockito/mockito.dart';
import 'package:sqflite/sqflite.dart';

class _FakeEither_0<L, R> extends Fake implements Either<L, R> {}

class _FakeTvDetailResponse_1 extends Fake implements TvDetailResponse {}

class _FakeResponse_2 extends Fake implements Response {}

class _FakeStreamedResponse_3 extends Fake implements StreamedResponse {}

/// A class which mocks [TvRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvRepository extends Mock implements TvRepository {
  MockTvRepository() {
    throwOnMissingStub(this);
  }

  @override
  _i6.Future<Either<Failure, List<Tv>>> getNowPlayingTv() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingTv, []),
              returnValue: Future<Either<Failure, List<Tv>>>.value(
                  _FakeEither_0<Failure, List<Tv>>()))
          as _i6.Future<Either<Failure, List<Tv>>>);
  @override
  _i6.Future<Either<Failure, List<Tv>>> getPopularTv() =>
      (super.noSuchMethod(Invocation.method(#getPopularTv, []),
              returnValue: Future<Either<Failure, List<Tv>>>.value(
                  _FakeEither_0<Failure, List<Tv>>()))
          as _i6.Future<Either<Failure, List<Tv>>>);
  @override
  _i6.Future<Either<Failure, List<Tv>>> getTopRatedTv() =>
      (super.noSuchMethod(Invocation.method(#getTopRatedTv, []),
              returnValue: Future<Either<Failure, List<Tv>>>.value(
                  _FakeEither_0<Failure, List<Tv>>()))
          as _i6.Future<Either<Failure, List<Tv>>>);
  @override
  _i6.Future<Either<Failure, TvDetail>> getTvDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvDetail, [id]),
              returnValue: Future<Either<Failure, TvDetail>>.value(
                  _FakeEither_0<Failure, TvDetail>()))
          as _i6.Future<Either<Failure, TvDetail>>);
  @override
  _i6.Future<Either<Failure, List<Tv>>> getTvRecommendations(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvRecommendations, [id]),
              returnValue: Future<Either<Failure, List<Tv>>>.value(
                  _FakeEither_0<Failure, List<Tv>>()))
          as _i6.Future<Either<Failure, List<Tv>>>);
  @override
  _i6.Future<Either<Failure, List<Tv>>> searchTv(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchTv, [query]),
              returnValue: Future<Either<Failure, List<Tv>>>.value(
                  _FakeEither_0<Failure, List<Tv>>()))
          as _i6.Future<Either<Failure, List<Tv>>>);
  @override
  _i6.Future<Either<Failure, String>> saveWatchlistTv(TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#saveWatchlistTv, [tv]),
              returnValue: Future<Either<Failure, String>>.value(
                  _FakeEither_0<Failure, String>()))
          as _i6.Future<Either<Failure, String>>);
  @override
  _i6.Future<Either<Failure, String>> removeWatchlistTv(TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlistTv, [tv]),
              returnValue: Future<Either<Failure, String>>.value(
                  _FakeEither_0<Failure, String>()))
          as _i6.Future<Either<Failure, String>>);
  @override
  _i6.Future<bool> isAddedToWatchlistTv(int? id) =>
      (super.noSuchMethod(Invocation.method(#isAddedToWatchlistTv, [id]),
          returnValue: Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<Either<Failure, List<Tv>>> getWatchlistTv() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTv, []),
              returnValue: Future<Either<Failure, List<Tv>>>.value(
                  _FakeEither_0<Failure, List<Tv>>()))
          as _i6.Future<Either<Failure, List<Tv>>>);
}

/// A class which mocks [TelevisionRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTelevisionRemoteDataSource extends Mock
    implements TelevisionRemoteDataSource {
  MockTelevisionRemoteDataSource() {
    throwOnMissingStub(this);
  }

  @override
  _i6.Future<List<TvModel>> getNowPlayingTv() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingTv, []),
              returnValue: Future<List<TvModel>>.value(<TvModel>[]))
          as _i6.Future<List<TvModel>>);
  @override
  _i6.Future<List<TvModel>> getPopularTv() =>
      (super.noSuchMethod(Invocation.method(#getPopularTv, []),
              returnValue: Future<List<TvModel>>.value(<TvModel>[]))
          as _i6.Future<List<TvModel>>);
  @override
  _i6.Future<List<TvModel>> getTopRatedTv() =>
      (super.noSuchMethod(Invocation.method(#getTopRatedTv, []),
              returnValue: Future<List<TvModel>>.value(<TvModel>[]))
          as _i6.Future<List<TvModel>>);
  @override
  _i6.Future<TvDetailResponse> getTvDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvDetail, [id]),
              returnValue:
                  Future<TvDetailResponse>.value(_FakeTvDetailResponse_1()))
          as _i6.Future<TvDetailResponse>);
  @override
  _i6.Future<List<TvModel>> getTvRecommendations(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvRecommendations, [id]),
              returnValue: Future<List<TvModel>>.value(<TvModel>[]))
          as _i6.Future<List<TvModel>>);
  @override
  _i6.Future<List<TvModel>> searchTv(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchTv, [query]),
              returnValue: Future<List<TvModel>>.value(<TvModel>[]))
          as _i6.Future<List<TvModel>>);
}

/// A class which mocks [TelevisionLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTelevisionLocalDataSource extends Mock
    implements TelevisionLocalDataSource {
  MockTelevisionLocalDataSource() {
    throwOnMissingStub(this);
  }

  @override
  _i6.Future<String> insertWatchlistTv(TvTable? tv) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlistTv, [tv]),
          returnValue: Future<String>.value('')));

  @override
  _i6.Future<String> removeWatchlistTv(TvTable? tv) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlistTv, [tv]),
          returnValue: Future<String>.value('')));
  @override
  _i6.Future<TvTable?> getTvById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvById, [id]),
          returnValue: Future<TvTable?>.value()) as _i6.Future<TvTable?>);
  @override
  _i6.Future<List<TvTable>> getWatchlistTv() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTv, []),
              returnValue: Future<List<TvTable>>.value(<TvTable>[]))
          as _i6.Future<List<TvTable>>);
}

/// A class which mocks [DatabaseHelperTelevision].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseHelperTelevision extends Mock
    implements DatabaseHelperTelevision {
  MockDatabaseHelperTelevision() {
    throwOnMissingStub(this);
  }

  @override
  _i6.Future<Database?> get databasetlvs =>
      (super.noSuchMethod(Invocation.getter(#databasetlvs),
          returnValue: Future<Database?>.value()) as _i6.Future<Database?>);
  @override
  _i6.Future<int> insertWatchlistTv(TvTable? tv) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlistTv, [tv]),
          returnValue: Future<int>.value(0)) as _i6.Future<int>);
  @override
  _i6.Future<int> removeWatchlistTv(TvTable? tv) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlistTv, [tv]),
          returnValue: Future<int>.value(0)) as _i6.Future<int>);
  @override
  _i6.Future<Map<String, dynamic>?> getTvById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvById, [id]),
              returnValue: Future<Map<String, dynamic>?>.value())
          as _i6.Future<Map<String, dynamic>?>);
  @override
  _i6.Future<List<Map<String, dynamic>>> getWatchlistTv() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTv, []),
              returnValue: Future<List<Map<String, dynamic>>>.value(
                  <Map<String, dynamic>>[]))
          as _i6.Future<List<Map<String, dynamic>>>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends Mock implements Client {
  MockHttpClient() {
    throwOnMissingStub(this);
  }

  @override
  _i6.Future<Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<Response>.value(_FakeResponse_2()))
          as _i6.Future<Response>);
  @override
  _i6.Future<Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<Response>.value(_FakeResponse_2()))
          as _i6.Future<Response>);
  @override
  _i6.Future<Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i16.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<Response>.value(_FakeResponse_2()))
          as _i6.Future<Response>);
  @override
  _i6.Future<Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i16.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<Response>.value(_FakeResponse_2()))
          as _i6.Future<Response>);
  @override
  _i6.Future<Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i16.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<Response>.value(_FakeResponse_2()))
          as _i6.Future<Response>);
  @override
  _i6.Future<Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i16.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<Response>.value(_FakeResponse_2()))
          as _i6.Future<Response>);
  @override
  _i6.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i6.Future<String>);
  @override
  _i6.Future<Uint8List> readBytes(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<Uint8List>.value(Uint8List(0)))
          as _i6.Future<Uint8List>);
  @override
  _i6.Future<StreamedResponse> send(BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<StreamedResponse>.value(_FakeStreamedResponse_3()))
          as _i6.Future<StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}
