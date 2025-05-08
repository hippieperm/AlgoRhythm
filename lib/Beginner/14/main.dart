/* * 문제
주어진 문자열 배열에서 모든 문자열에 대해 공통으로 나타나는 접두사를 구하는 문제입니다.
만약 공통 접두사가 없다면 빈 문자열을 반환합니다.

* 조건
1. 1 <= strs.length <= 200
2. 0 <= strs[i].length <= 200
3. strs[i]는 영어 대소문자 알파벳으로만 구성됩니다.

* 예시
예제 1
	입력: ["flower","flow","flight"]
	출력: "fl"
	설명: 모든 문자열에 대해 "fl"이 공통 접두사입니다.

예제 2
	입력: ["dog","racecar","car"]
	출력: ""
	설명: 공통 접두사가 없으므로 빈 문자열이 반환됩니다. */

void main() {
  var strings1 = ['flower', 'flow', 'flight'];
  print(prefix(strings1));

  // var strings2 = ['dog', 'racecar', 'car'];
  // print(prefix(strings2));

  // var strings3 = ['interspecies', 'interstellar', 'interstate'];
  // print(prefix(strings3));
}

String prefix(List<String> strs) {
  if (strs.isEmpty) return '';
  if (strs.length == 1) return strs[0];

  strs.sort();

  String first = strs.first;
  String mid = strs[1];
  String last = strs.last;

  print(first);
  print(last);

  int i = 0;

  while (i < first.length &&
      i < last.length &&
      i < mid.length &&
      first[i] == last[i] &&
      first[i] == mid[i]) {
    i++;
  }

  return first.substring(0, i);
}
