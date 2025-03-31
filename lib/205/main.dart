/* * 문제
두 문자열 s와 t가 주어집니다.
두 문자열이 동형(isomorphic)인지 확인하세요.
두 문자열이 동형이라는 것은, 하나의 문자열의 문자가 다른 문자열의 문자로 일대일 매핑될 수 있음을 의미합니다.

같은 문자는 같은 문자로 매핑되어야 합니다.
다른 문자는 다른 문자로 매핑되어야 합니다.
문자는 자신에게 매핑될 수 있습니다.

* 조건
1 <= s.length, t.length <= 5 * 10⁴
s와 t의 길이는 같습니다.
s와 t는 영어 소문자로만 이루어져 있습니다.

* 예시
예제 1
	입력: s = "egg", t = "add"
	출력: true
	설명: 'e' → 'a', 'g' → 'd'. 서로 일대일 매핑이 가능합니다.

예제 2:
	입력: s = "foo", t = "bar"
	출력: false
	설명: 'o'가 'a'와 'r'로 매핑될 수 없으므로 불가능합니다.

	
예제 3:
	입력: s = "paper", t = "title"
	출력: true
	설명: 'p' → 't', 'a' → 'i', 'e' → 'l', 'r' → 'e'. 일대일 매핑 가능. */

void main() {
  print(Solution().isIsomorphic('egg', 'add'));
  print(Solution().isIsomorphic('foo', 'bar'));
  print(Solution().isIsomorphic('paper', 'title'));
}

class Solution {
  bool isIsomorphic(String s, String t) {
    return encode(s) == encode(t);
  }

  String encode(String str) {
    Map<String, int> map = {};

    return str
        .split('')
        .map((char) => map.putIfAbsent(char, () => map.length))
        .join('#');
  }
}
