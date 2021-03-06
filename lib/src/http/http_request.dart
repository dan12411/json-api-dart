/// The request which is sent by the client and received by the server
class HttpRequest {
  HttpRequest(String method, this.uri,
      {String body, Map<String, String> headers})
      : headers = Map.unmodifiable(
            (headers ?? {}).map((k, v) => MapEntry(k.toLowerCase(), v))),
        method = method.toUpperCase(),
        body = body ?? '';

  /// Requested URI
  final Uri uri;

  /// Request method, uppercase
  final String method;

  /// Request body
  final String body;

  /// Request headers. Unmodifiable. Lowercase keys
  final Map<String, String> headers;
}
