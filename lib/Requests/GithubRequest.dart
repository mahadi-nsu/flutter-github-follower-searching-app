// Client ID
// 7f590ac5db3423111978
// Client Secret
// ccafa6fa5f7eab7d529f890efca96da2e54e17b2

import 'package:http/http.dart' as http;

class Github {
  final String userName;
  final String url = 'https://api.github.com/';
  static String client_id = '7f590ac5db3423111978';
  static String client_secret = 'ccafa6fa5f7eab7d529f890efca96da2e54e17b2';

  final String query = "?client_id=${client_id}&client_secret=${client_secret}";

  Github(this.userName);

  Future<http.Response> fetchUser() {
    return http.get(url + 'users/' + userName + query);
  }

  Future<http.Response> fetchFollowing() {
    return http.get(url + 'users/' + userName + '/following' + query);
  }
}
