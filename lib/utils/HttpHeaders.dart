class HttpHeaders {
  static Future<Map<String, String>> headers({String token}) async {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'x-auth-token': '${token != null && token.isNotEmpty ? token : ''}',
    };
  }
}
