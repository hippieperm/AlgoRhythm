/* * 문제
두 개의 문자열 s와 t가 주어졌을 때,
t가 s의 애너그램인지 확인하는 함수를 작성하세요.
애너그램은 두 문자열이 같은 문자를 같은 개수만큼 가지고 있지만, 순서는 다른 경우를 말합니다.

* 조건
1. 1 <= s.length, t.length <= 5 * 10^4
2. s와 t는 영어 소문자로만 이루어져 있습니다.

* 예시
1. 입력: s = "anagram", t = "nagaram" 출력: true
	설명: t는 s의 애너그램입니다.

2. 입력: s = "rat", t = "car" 출력: false
	설명: t는 s의 애너그램이 아닙니다. */

void main() {
  print(Solution().isAnagram("anagram", "nagaram")); // true
  print(Solution().isAnagram("rat", "car")); // false
  print(Solution().isAnagram("listen", "silent")); // true
  print(Solution().isAnagram("hello", "world")); // false
}

class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    // s의 각 문자 개수 세기
    Map<String, int> sCount = {};
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      sCount[char] = (sCount[char] ?? 0) + 1;
    }

    // t의 각 문자 개수 세기
    Map<String, int> tCount = {};
    for (int i = 0; i < t.length; i++) {
      String char = t[i];
      tCount[char] = (tCount[char] ?? 0) + 1;
    }

    // 두 문자열의 문자 개수 비교
    for (String char in sCount.keys) {
      if (sCount[char] != tCount[char]) {
        return false;
      }
    }

    return true;
  }
}
