import 'package:grpc/grpc.dart';

class GrpcFlutterClient {
  static ClientChannel? client;

  static ClientChannel? getClient() {
    // if (client == null) {
      client =
        ClientChannel(
          "35.222.246.89",
          port: 6000,
          options: const ChannelOptions(
            credentials: ChannelCredentials.insecure(),
            idleTimeout: Duration()
          ),
        );
    // }
    return client;
  }
}