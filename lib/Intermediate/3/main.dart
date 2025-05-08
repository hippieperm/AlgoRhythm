// * 문제
// 문자열 s가 주어졌을 때, 모든 문자가 서로 다르게 구성된 가장 긴 부분 문자열의 길이를 구하세요.

// * 조건
// 0 <= s.length <= 5 * 10^4
// s는 영어 대소문자, 숫자, 기호, 공백으로 구성될 수 있습니다.

// * 예시
// 예제 1
// 	입력: s = "abcabcbb"
// 	출력: 3
// 	설명: 반복되지 않는 가장 긴 부분 문자열은 "abc"이며 길이는 3입니다.

// 예제 2:
// 	입력: s = "bbbbb"
// 	출력: 1
// 	설명: 반복되지 않는 가장 긴 부분 문자열은 "b"이며 길이는 1입니다.

// 예제 3:
// 	입력: s = "pwwkew"
// 	출력: 3
// 	설명: 반복되지 않는 가장 긴 부분 문자열은 "wke"이며 길이는 3입니다.
// 			 답이 "pwke"가 아닌 이유는 부분 문자열이 연속적이어야 하기 때문입니다.

void main() {}

class Solution {
  int lengthOfLongestSubstring(String s) {
    int maxLength = 0;
    int start = 0;
    Map<String, int> seen = {};

    for (int end = 0; end < s.length; end++) {
      String char = s[end];
      if (seen.containsKey(char) && seen[char]! >= start) {
        start = seen[char]! + 1;
      }
      seen[char] = end;
      maxLength = maxLength > (end - start + 1) ? maxLength : (end - start + 1);
    }

    return maxLength;
  }
}
