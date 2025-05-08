/* * 문제
계단 배열이 주어졌을 때, 계단을 올라가는 최소 비용을 계산하는 문제입니다.
배열의 각 요소는 해당 계단을 밟을 때의 비용을 나타냅니다.
계단은 한 번에 한 계단 또는 두 계단씩 오를 수 있으며, 배열의 마지막이나 마지막에서 두 번째 인덱스에서 도착하는 것이 목표입니다.

* 조건
1. 2 <= cost.length <= 1000
2. 0 <= cost[i] <= 999

* 예시
예제 1:
	입력: cost = [10, 15, 20]
	출력: 15
	설명: 인덱스 1에서 시작하여 15의 비용으로 마지막에 도달합니다.

예제 2:
	입력: cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
	출력: 6
	설명: 경로는 0, 2, 4, 6, 7, 9 순으로 1 + 1 + 1 + 1 + 1 + 1의 비용을 소모합니다. */

import 'dart:math';

void main() {
  // * 예제 1
  List<int> cost = [10, 15, 20];
  print(minCostClimbingStairs(cost));

  // * 예제 2
  cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1];
  print(minCostClimbingStairs(cost));
}

int minCostClimbingStairs(List<int> cost) {
  int n = cost.length;

  // * 첫 번째와 두 번째 계단에서 시작할 수 있으므로 0으로 초기화
  int first = 0;
  int second = 0;

  // * 상향식 DP 진행
  for (int i = 2; i <= n; i++) {
    // * 현재 위치의 최소 비용 계산
    int current = min(first + cost[i - 2], second + cost[i - 1]);

    // * 다음 단계를 위해 변수 업데이트
    first = second;
    second = current;
  }

  return second; // * 최종 결과는 꼭대기 계단의 최소 비용
}
