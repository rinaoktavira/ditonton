import 'dart:async' as _i11;
import 'dart:ui' as _i12;

import 'package:ditonton/common/state_enum.dart' as _i9;
import 'package:ditonton/domain/entities/tv_entities.dart' as _i10;
import 'package:ditonton/domain/entities/tv_detail_entities.dart' as _i7;
import 'package:ditonton/domain/usecases/get_tv_detail.dart' as _i2;
import 'package:ditonton/domain/usecases/get_tv_recomendation.dart' as _i3;
import 'package:ditonton/domain/usecases/get_watchlits_status_tv.dart' as _i4;
import 'package:ditonton/domain/usecases/remove_watchlist_tv.dart' as _i6;
import 'package:ditonton/domain/usecases/save_watchlist_tv.dart' as _i5;
import 'package:ditonton/presentation/provider/tv_detail_notifier.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;

class _FakeGetTvDetail_0 extends _i1.Fake implements _i2.GetTvDetail {}

class _FakeGetTvRecommendations_1 extends _i1.Fake
    implements _i3.GetTvRecommendations {}

class _FakeGetWatchListStatusTv_2 extends _i1.Fake
    implements _i4.GetWatchListStatusTv {}

class _FakeSaveWatchlistTv_3 extends _i1.Fake implements _i5.SaveWatchlistTv {}

class _FakeRemoveWatchlistTv_4 extends _i1.Fake
    implements _i6.RemoveWatchlistTv {}

class _FakeTvDetail_5 extends _i1.Fake implements _i7.TvDetail {}

/// A class which mocks [TvDetailNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvDetailNotifier extends _i1.Mock implements _i8.TvDetailNotifier {
  MockTvDetailNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetTvDetail get getTvDetail =>
      (super.noSuchMethod(Invocation.getter(#getTvDetail),
          returnValue: _FakeGetTvDetail_0()) as _i2.GetTvDetail);
  @override
  _i3.GetTvRecommendations get getTvRecommendations => (super.noSuchMethod(
      Invocation.getter(#getTvRecommendations),
      returnValue: _FakeGetTvRecommendations_1()) as _i3.GetTvRecommendations);
  @override
  _i4.GetWatchListStatusTv get getWatchListStatusTv => (super.noSuchMethod(
      Invocation.getter(#getWatchListStatusTv),
      returnValue: _FakeGetWatchListStatusTv_2()) as _i4.GetWatchListStatusTv);
  @override
  _i5.SaveWatchlistTv get saveWatchlistTv =>
      (super.noSuchMethod(Invocation.getter(#saveWatchlistTv),
          returnValue: _FakeSaveWatchlistTv_3()) as _i5.SaveWatchlistTv);
  @override
  _i6.RemoveWatchlistTv get removeWatchlistTv =>
      (super.noSuchMethod(Invocation.getter(#removeWatchlistTv),
          returnValue: _FakeRemoveWatchlistTv_4()) as _i6.RemoveWatchlistTv);
  @override
  _i7.TvDetail get tv => (super.noSuchMethod(Invocation.getter(#tv),
      returnValue: _FakeTvDetail_5()) as _i7.TvDetail);
  @override
  _i9.RequestState get tvState =>
      (super.noSuchMethod(Invocation.getter(#tvState),
          returnValue: _i9.RequestState.Empty) as _i9.RequestState);
  @override
  List<_i10.Tv> get tvRecommendations =>
      (super.noSuchMethod(Invocation.getter(#tvRecommendations),
          returnValue: <_i10.Tv>[]) as List<_i10.Tv>);
  @override
  _i9.RequestState get recommendationTvState =>
      (super.noSuchMethod(Invocation.getter(#recommendationTvState),
          returnValue: _i9.RequestState.Empty) as _i9.RequestState);
  @override
  String get message =>
      (super.noSuchMethod(Invocation.getter(#message), returnValue: '')
          as String);
  @override
  bool get isAddedToWatchlistTv =>
      (super.noSuchMethod(Invocation.getter(#isAddedToWatchlistTv),
          returnValue: false) as bool);
  @override
  String get watchlistMessageTv => (super
          .noSuchMethod(Invocation.getter(#watchlistMessageTv), returnValue: '')
      as String);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i11.Future<void> fetchTvDetail(int? id) => (super.noSuchMethod(
      Invocation.method(#fetchTvDetail, [id]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> addWatchlistTv(_i7.TvDetail? tv) => (super.noSuchMethod(
      Invocation.method(#addWatchlistTv, [tv]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> removeFromWatchlistTv(_i7.TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#removeFromWatchlistTv, [tv]),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i11.Future<void>);
  @override
  _i11.Future<void> loadWatchlistStatusTv(int? id) => (super.noSuchMethod(
      Invocation.method(#loadWatchlistStatusTv, [id]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  void addListener(_i12.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i12.VoidCallback? listener) =>
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
