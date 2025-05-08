/* * 문제
주어진 문자열 haystack과 needle이 있을 때, 
needle이 haystack 내에서 처음 나타나는 위치를 반환합니다.
needle이 존재하지 않으면 -1을 반환합니다.

* 조건
1. 1 <= haystack.length, needle.length <= 10^4
2. haystack, needle 는 영소문자로 이루어졌습니다.

* 예시
예제 1
	입력: haystack = "sadbutsad", needle = "sad"
	출력: 0

예제 2
	입력: haystack = "leetcode", needle = "leeto"
	출력: -1 */

void main() {
  print(Solution().strStr('sadbutsad', 'sad'));
  print(Solution().strStr('leetcode', 'leeto'));
}

class Solution {
  int strStr(String haystack, String needle) {
    return haystack.indexOf(needle);
  }
}
