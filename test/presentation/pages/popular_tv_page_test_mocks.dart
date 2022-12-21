import 'dart:async' as _i6;
import 'dart:ui' as _i7;

import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_entities.dart';
import 'package:ditonton/domain/usecases/get_popular_tv.dart';
import 'package:ditonton/presentation/provider/popular_tv_notifier.dart';
import 'package:mockito/mockito.dart';

class _FakeGetPopularTv_0 extends Fake implements GetPopularTv {}

/// A class which mocks [PopularTvNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockPopularTvNotifier extends Mock implements PopularTvNotifier {
  MockPopularTvNotifier() {
    throwOnMissingStub(this);
  }

  @override
  GetPopularTv get getPopularTv =>
      (super.noSuchMethod(Invocation.getter(#getPopularTv),
          returnValue: _FakeGetPopularTv_0()) as GetPopularTv);
  @override
  RequestState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: RequestState.Empty) as RequestState);
  @override
  List<Tv> get tv =>
      (super.noSuchMethod(Invocation.getter(#tv), returnValue: <Tv>[])
          as List<Tv>);
  @override
  String get message =>
      (super.noSuchMethod(Invocation.getter(#message), returnValue: '')
          as String);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i6.Future<void> fetchPopularTv() =>
      (super.noSuchMethod(Invocation.method(#fetchPopularTv, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  void addListener(_i7.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i7.VoidCallback? listener) =>
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
