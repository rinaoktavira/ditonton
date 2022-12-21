import 'package:ditonton/common/exception.dart';
import 'package:ditonton/data/datasources/tv_local_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../dummy_data/dummy_objects_tv.dart';
import '../../helpers/test_helper_tv_mocks.dart';

void main() {
  late TvLocalDataSourceImpl dataSourcetv;
  late MockDatabaseHelperTelevision mockDatabaseHelperTelevision;

  setUp(() {
    mockDatabaseHelperTelevision = MockDatabaseHelperTelevision();
    dataSourcetv =
        TvLocalDataSourceImpl(databaseHelpertv: mockDatabaseHelperTelevision);
  });

  group('save watchlist', () {
    test('should return success message when insert to database is success',
            () async {
          // arrange
          when(mockDatabaseHelperTelevision.insertWatchlistTv(testTvTable))
              .thenAnswer((_) async => 1);
          // act
          final result = await dataSourcetv.insertWatchlistTv(testTvTable);
          // assert
          expect(result, 'Added to Watchlist');
        });

    test('should throw DatabaseException when insert to database is failed',
            () async {
          // arrange
          when(mockDatabaseHelperTelevision.insertWatchlistTv(testTvTable))
              .thenThrow(Exception());
          // act
          final call = dataSourcetv.insertWatchlistTv(testTvTable);
          // assert
          expect(() => call, throwsA(isA<DatabaseException>()));
        });
  });

  group('remove watchlist', () {
    test('should return success message when remove from database is success',
            () async {
          // arrange
          when(mockDatabaseHelperTelevision.removeWatchlistTv(testTvTable))
              .thenAnswer((_) async => 1);
          // act
          final result = await dataSourcetv.removeWatchlistTv(testTvTable);
          // assert
          expect(result, 'Removed from Watchlist');
        });

    test('should throw DatabaseException when remove from database is failed',
            () async {
          // arrange
          when(mockDatabaseHelperTelevision.removeWatchlistTv(testTvTable))
              .thenThrow(Exception());
          // act
          final call = dataSourcetv.removeWatchlistTv(testTvTable);
          // assert
          expect(() => call, throwsA(isA<DatabaseException>()));
        });
  });

  group('Get TV Detail By Id', () {
    final tId = 1;

    test('should return TV Detail Table when data is found', () async {
      // arrange
      when(mockDatabaseHelperTelevision.getTvById(tId))
          .thenAnswer((_) async => testTvMap);
      // act
      final result = await dataSourcetv.getTvById(tId);
      // assert
      expect(result, testTvTable);
    });

    test('should return null when data is not found', () async {
      // arrange
      when(mockDatabaseHelperTelevision.getTvById(tId))
          .thenAnswer((_) async => null);
      // act
      final result = await dataSourcetv.getTvById(tId);
      // assert
      expect(result, null);
    });
  });

  group('get watchlist TV', () {
    test('should return list of TV Table from database', () async {
      // arrange
      when(mockDatabaseHelperTelevision.getWatchlistTv())
          .thenAnswer((_) async => [testTvMap]);
      // act
      final result = await dataSourcetv.getWatchlistTv();
      // assert
      expect(result, [testTvTable]);
    });
  });
}
