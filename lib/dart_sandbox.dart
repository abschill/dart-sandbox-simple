import 'dart:convert';

int val(int num1, int num2) {
	return num1 * num2;
}

void json_test() {
	var jsonString = '''
	[
		{"score": 40},
		{"score": 80}
	]
	''';

	var scores = jsonDecode(jsonString);
	assert(scores is List);

	var firstScore = scores[0];
	assert(firstScore is Map);
	assert(firstScore['score'] == 40);
	print(scores);
}
