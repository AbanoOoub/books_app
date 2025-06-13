import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

@Injectable(as: INetworkInfo)
class NetworkInfo implements INetworkInfo {
  final InternetConnectionChecker _connectionChecker;

  NetworkInfo() : _connectionChecker = InternetConnectionChecker.instance;

  @override
  Future<bool> get isConnected => _connectionChecker.hasConnection;
}
