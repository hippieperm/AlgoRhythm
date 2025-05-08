/* * 문제
주어진 두 문자열 str1과 str2의 가장 큰 공약수(GCD)를 찾아야 합니다.
두 문자열의 공약수는, 두 문자열을 여러 번 반복해서 만들 수 있는 문자열입니다.
예를 들어, "ABCABC"와 "ABC"는 공통적으로 "ABC"로 나뉠 수 있습니다.

* 조건
1. 두 문자열 str1, str2는 각각 길이 1 이상 1000 이하입니다.
2. 문자열은 대문자로만 이루어져 있습니다.

* 예시
1. 입력: str1 = "ABCABC", str2 = "ABC" 출력: "ABC"

2. 입력: str1 = "ABABAB", str2 = "ABAB" 출력: "AB"

3. 입력: str1 = "LEET", str2 = "CODE" 출력: "" (공통 부분이 없음)

4. 입력: str1 = "ABABABAB", str2 = "ABAB" 출력: "ABAB" */

void main() {
  print(Solution().gcdOfStrings("ABCABC", "ABC"));
  print(Solution().gcdOfStrings("ABABAB", "ABAB"));
  print(Solution().gcdOfStrings("LEET", "CODE"));
  print(Solution().gcdOfStrings("ABABABAB", "ABAB"));
}

class Solution {
  String gcdOfStrings(String str1, String str2) {
    // 최대공약수 계산 함수
    int _findGCD(int a, int b) {
      while (b != 0) {
        int temp = b;
        b = a % b;
        a = temp;
      }
      return a;
    }

    // 공통 패턴 확인
    if (str1 + str2 != str2 + str1) {
      return "";
    }

    // 두 문자열 길이의 최대공약수 구하기
    int len = _findGCD(str1.length, str2.length);

    // 최대공약수 길이만큼의 문자열 반환
    return str1.substring(0, len);
  }
}
