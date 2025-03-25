/* * 문제
주어진 문자열이 팰린드롬인지 확인하는 문제입니다.
팰린드롬이란, 앞에서 읽으나 뒤에서 읽으나 동일한 문자열을 의미합니다.
대소문자와 공백을 무시하고, 알파벳과 숫자만 비교합니다.

* 조건
1. 문자열은 길이가 1 이상 2^5 이하입니다.
2. 문자열은 알파벳과 숫자만 포함될 수 있습니다.

* 예시
예제 1
	입력: "A man, a plan, a canal: Panama"
	출력: true
	설명: 공백과 구두점을 제외하고 문자열은 "amanaplanacanalpanama"로 팰린드롬입니다.

예제 2:
	입력: "race a car"
	출력: false
	설명: 공백을 제외해도 "raceacar"는 팰린드롬이 아닙니다. */

void main() {
  // Solution().isPalindrome("A man, a plan, a canal: Panama");
  Solution().isPalindrome("race a car");
}

class Solution {
  bool isPalindrome(String s) {
    String alphanumericText =
        s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    String reversedText = alphanumericText.split('').reversed.join('');

    print(alphanumericText);
    print(reversedText);

    return alphanumericText == reversedText;
  }
}
