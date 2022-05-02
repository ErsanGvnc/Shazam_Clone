import 'package:shazam_clone/acr/failure.dart';
import 'package:dartz/dartz.dart';

class BaseRepository {
  Future<Either<Failure, T>> informDeviceIsOffline<T>() async {
    return Left<Failure, T>(DeviceOfflineFailure());
  }

  Either<Failure, T> informServerFailure<T>({
    int code = -1,
    String message = '',
  }) {
    return Left<Failure, T>(
      ServerFailure(code: code, message: message),
    );
  }

  Either<Failure, T> informLocalCacheFailure<T>() {
    return Left<Failure, T>(LocalCacheFailure());
  }
}
