/* * 문제
0에서 정수 n까지의 모든 정수에 대해 2진수로 나타냈을 때
1의 개수를 세는 배열을 반환하세요.

* 조건
0 <= n <= 10^5

* 예시
예제 1:
	입력: n = 2
	출력: [0, 1, 1]
	설명: 
	- 0 : 2진수의(0) 1의 개수는 0개
	- 1 : 2진수(1)의 1의 개수는 1개
	- 2 : 2진수(10)의 1의 개수는 1개

예제 2:
	입력: n = 5
	출력: [0,1,1,2,1,2]
	설명: 
	- 0 : 2진수의 1의 개수는 0개
	- 1 : 2진수(1)의 1의 개수는 1개
	- 2 : 2진수(10)의 1의 개수는 1개
	- 3 : 2진수(11)의 1의 개수는 2개
	- 4 : 2진수(100)의 1의 개수는 1개
	- 5 : 2진수(101)의 1의 개수는 2개 */

void main() {
  print(Solution().countBits(2)); // [0, 1, 1]
  print(Solution().countBits(5)); // [0, 1, 1, 2, 1, 2]
}

class Solution {
  List<int> countBits(int n) {
    List<int> result = [];

    for (int i = 0; i <= n; i++) {
      // 숫자를 2진수 문자열로 변환
      String binary = i.toRadixString(2);
      // 1의 개수를 세서 결과에 추가
      result.add(binary.replaceAll('0', '').length);
    }

    return result;
  }
}
