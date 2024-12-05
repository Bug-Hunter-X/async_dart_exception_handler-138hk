```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // Process the data successfully
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request, rethrow for upper handling
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled by a higher-level function.
  }
}
```