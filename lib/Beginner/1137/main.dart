/* * 문제
n번째 Tribonacci 수를 구하는 문제입니다.
Tribonacci 수열은 초기 값이 T0 = 0, T1 = 1, T2 = 1로 시작하며,
Tn = T(n-1) + T(n-2) + T(n-3)로 정의됩니다.

* 조건
1. 0 <= n <= 37
2. answer <= 2^31 - 1.

* 예시
예제 1:
	입력: n = 4
	출력: 4
	설명: T3까지 계산하면 [0, 1, 1, 2, 4]가 됩니다.

예제 2:
	입력: n = 25
	출력: 1389537 */

void main() {
  print(Solution().tribonacci(4));
  print(Solution().tribonacci(25));
}

class Solution {
  int tribonacci(int n) {
    // 기본 케이스 처리
    if (n == 0) return 0;
    if (n == 1 || n == 2) return 1;

    // 처음 세 개의 값으로 초기화
    int t0 = 0, t1 = 1, t2 = 1;

    // n번째 값까지 계산
    for (int i = 3; i <= n; i++) {
      int tn = t0 + t1 + t2;
      // 값 이동
      t0 = t1;
      t1 = t2;
      t2 = tn;
    }

    return t2;
  }
}
