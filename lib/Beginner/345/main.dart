/* * 문제
주어진 문자열 s에서 모음(‘a’, ‘e’, ‘i’, ‘o’, ‘u’, 대소문자 구분 없음)들만 뒤집어서 문자열을 반환하세요.
다른 문자는 원래 위치에 그대로 남아 있어야 합니다.

* 조건
1. s.length는 1 이상 3 * 10^5 이하입니다.
2. 문자열은 ASCII 문자로만 이루어져 있습니다.


* 예시
1. 입력: s = "hello" 출력: "holle"
	설명: 'e'와 'o'가 뒤집혀서 'holle'이 됩니다.

2. 입력: s = "leetcode" 출력: "leotcede"
	설명: 'e', 'o', 'e'가 뒤집혀서 'leotcede'가 됩니다. */

void main() {}

class Solution {
  String reverseVowels(String s) {
    // 모음 리스트 (대소문자 구분 없음)
    final vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];

    // 문자열을 문자 리스트로 변환
    List<String> chars = s.split('');

    // 모음만 추출
    List<String> vowelList =
        chars.where((char) => vowels.contains(char)).toList();

    // 모음 리스트 뒤집기
    vowelList = vowelList.reversed.toList();

    // 뒤집은 모음을 원래 위치에 대체
    int vowelIndex = 0;
    for (int i = 0; i < chars.length; i++) {
      if (vowels.contains(chars[i])) {
        chars[i] = vowelList[vowelIndex++];
      }
    }

    // 문자 리스트를 다시 문자열로 변환
    return chars.join('');
  }
}
