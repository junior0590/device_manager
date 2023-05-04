enum ServerStatus {
  online,
  offline,
  connecting,
}

enum DataStatus { INITIAL, EMPTY, LOADING, COMPLETED, ERROR }

enum ResponseState { EMPTY, LOADING, COMPLETE, ERROR }

enum RequestState { EMPTY, LOADING, COMPLETE, ERROR }

enum SocketStateEnum { ONLINE, CONNECTING, OFFLINE }
