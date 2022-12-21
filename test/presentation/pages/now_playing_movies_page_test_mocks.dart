// Mocks generated by Mockito 5.0.8 from annotations
// in ditonton/test/presentation/pages/popular_movies_page_test.dart.
// Do not manually edit this file.

import 'dart:async';
import 'dart:ui';

import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/get_now_playing_movies.dart';
import 'package:ditonton/presentation/provider/now_playing_movies_notifier.dart';
import 'package:mockito/mockito.dart';

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeGetNowPlayingMovies extends Fake implements GetNowPlayingMovies {}

/// A class which mocks [NowPlayingMoviesNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockNowPlayingMoviesNotifier extends Mock
    implements NowPlayingMoviesNotifier {
  MockNowPlayingMoviesNotifier() {
    throwOnMissingStub(this);
  }

  @override
  GetNowPlayingMovies get getNowPlayingMovies =>
      (super.noSuchMethod(Invocation.getter(#getNowPlayingMovies),
          returnValue: _FakeGetNowPlayingMovies()) as GetNowPlayingMovies);
  @override
  RequestState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: RequestState.Empty) as RequestState);
  @override
  List<Movie> get movies =>
      (super.noSuchMethod(Invocation.getter(#movies), returnValue: <Movie>[])
          as List<Movie>);
  @override
  String get message =>
      (super.noSuchMethod(Invocation.getter(#message), returnValue: '')
          as String);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  Future<void> fetchNowPlayingMovies() =>
      (super.noSuchMethod(Invocation.method(#fetchPopularMovies, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as Future<void>);
  @override
  void addListener(VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
