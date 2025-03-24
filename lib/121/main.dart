/* * 문제
주어진 주식 가격 배열 prices에서 주식을 한 번 사고 한 번 팔아서 얻을 수 있는 최대 이익을 계산하는 문제입니다.
사고 팔 수 있는 주식의 날짜는 서로 다르게 선택해야 합니다.

* 조건
1. 1 <= prices.length <= 10^5
2. 0 <= prices[i] <= 10^4

* 예시
예제 1
	입력: prices = [7,1,5,3,6,4]
	출력: 5
	설명: 주식을 1에 사고 6에 팔면 이익이 5가 됩니다. (6 - 1 = 5)

예제 2
	입력: prices = [7,6,4,3,1]
	출력: 0
	설명: 이 경우 주식을 사서 팔 수 있는 이익이 없습니다. (최대 이익이 0)  */

import 'dart:math';

void main() {
  print(Solution().maxProfit([7, 1, 5, 3, 6, 4]));
  print(Solution().maxProfit([7, 6, 4, 3, 1]));
}

class Solution {
  int maxProfit(List<int> prices) {
    if (prices.isEmpty) return 0;

    int minVal = prices[0];
    int maxVal = 0;

    for (var i = 1; i < prices.length; i++) {
      int currentVal = prices[i] - minVal;

      maxVal = max(maxVal, currentVal);
      minVal = min(minVal, prices[i]);
    }

    return maxVal;
  }
}
