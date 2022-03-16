import 'package:connectivity_plus/connectivity_plus.dart';

class CheckInternetService {
  Future<bool> isConnected() async {
    var connectivity = Connectivity();
    var connectivityResult = await (connectivity.checkConnectivity());

    return connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.ethernet;
  }
}
