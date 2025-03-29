import 'dart:convert';
import 'package:http/http.dart' as http;

class MovieService {
  Future<List<dynamic>> popularMovies() async {
    final headers = {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhNTZkYjRlZTAxZDA2ZWY3NzVkMTZiMzc3ZTI4MTU1NSIsIm5iZiI6MTc0MjA1OTQ4MS42MDE5OTk4LCJzdWIiOiI2N2Q1YjdkOTU5NjNlYmZmZGU3YmM3ZTAiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.MNep6zaW5dOZJKDNdfj7frrWRClIU_QOh1W5soWtun4',
      'accept': 'application/json'
    };
    final response = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/popular?language=en-US&page=1'),
        headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['results'];
    } else {
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> topRatedMovies() async {
    final headers = {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhNTZkYjRlZTAxZDA2ZWY3NzVkMTZiMzc3ZTI4MTU1NSIsIm5iZiI6MTc0MjA1OTQ4MS42MDE5OTk4LCJzdWIiOiI2N2Q1YjdkOTU5NjNlYmZmZGU3YmM3ZTAiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.MNep6zaW5dOZJKDNdfj7frrWRClIU_QOh1W5soWtun4',
      'accept': 'application/json'
    };
    final response = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1'),
        headers: headers);
    if (response.statusCode == 200) {
      return (json.decode(response.body))['results'];
    } else {
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> upcomingMovies() async {
    final headers = {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhNTZkYjRlZTAxZDA2ZWY3NzVkMTZiMzc3ZTI4MTU1NSIsIm5iZiI6MTc0MjA1OTQ4MS42MDE5OTk4LCJzdWIiOiI2N2Q1YjdkOTU5NjNlYmZmZGU3YmM3ZTAiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.MNep6zaW5dOZJKDNdfj7frrWRClIU_QOh1W5soWtun4',
      'accept': 'application/json'
    };
    final response = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1'),
        headers: headers);
    if (response.statusCode == 200) {
      return (json.decode(response.body))['results'];
    } else {
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> similarMovies(int movieId) async {
    final headers = {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhNTZkYjRlZTAxZDA2ZWY3NzVkMTZiMzc3ZTI4MTU1NSIsIm5iZiI6MTc0MjA1OTQ4MS42MDE5OTk4LCJzdWIiOiI2N2Q1YjdkOTU5NjNlYmZmZGU3YmM3ZTAiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.MNep6zaW5dOZJKDNdfj7frrWRClIU_QOh1W5soWtun4',
      'accept': 'application/json'
    };
    final response = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/${movieId}/similar?language=en-US&page=1'),
        headers: headers);
    if (response.statusCode == 200) {
      return json.decode(response.body)['results'];
    } else {
      throw Exception('Error');
    }
  }
}
