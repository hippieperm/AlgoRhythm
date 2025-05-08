/* * 문제
정수 배열 nums와 정수 k가 주어질 때, 
nums에서 길이가 k인 연속 부분 배열의 평균값 중 최대값을 찾는 함수를 작성하세요.
답을 소수점 다섯 번째 자리까지 반올림하여 반환합니다.

* 예시
1. 입력: nums = [1,12,-5,-6,50,3], k = 4 출력: 12.75000
	설명: [12, -5, -6, 50] 부분 배열의 평균값이 12.75로 최대입니다.

2. 입력: nums = [5], k = 1 출력: 5.00000
	설명: 배열 전체가 길이 1인 부분 배열이므로 그 평균값이 최대입니다. */

void main() {
  Solution solution = Solution();
  print(solution.findMaxAverage([1, 12, -5, -6, 50, 3], 4)); // 12.75000
  print(solution.findMaxAverage([5], 1)); // 5.00000
}

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    double maxAverage = double.negativeInfinity;
    double currentSum = 0;

    for (int i = 0; i < nums.length; i++) {
      currentSum += nums[i];

      if (i >= k - 1) {
        double currentAverage = currentSum / k;
        maxAverage = maxAverage < currentAverage ? currentAverage : maxAverage;
        currentSum -= nums[i - k + 1];
      }
    }

    return maxAverage;
  }
}
