/* * 문제
정수 배열 nums와 정수 k가 주어질 때, 같은 값을 가지는 두 인덱스 i와 j에 대해 abs(i - j) <= k를 만족하는 경우가 있는지 확인하세요.
만약 조건을 만족하는 인덱스 쌍이 있다면 true를 반환하고, 그렇지 않으면 false를 반환하세요.

* 조건
1 <= nums.length <= 10^5
-10^9 <= nums[i] <= 10^9
0 <= k <= 10^5

* 예시
예제 1
	입력: nums = [1, 2, 3, 1] k = 3
	출력: true
	설명: nums[0]와 nums[3]의 값이 동일하며, abs(0 - 3) = 3으로 조건을 만족합니다.

예제 2:
	입력: nums = [1, 0, 1, 1] k = 1
	출력: true
	설명: nums[2]와 nums[3]의 값이 동일하며, abs(2 - 3) = 1로 조건을 만족합니다.
	
예제 3:
	입력: nums = [1, 2, 3, 1, 2, 3] k = 2
	출력: false
	설명: 중복 값들은 존재하지만, 조건 abs(i - j) <= 2를 만족하는 쌍이 없습니다. */

void main() {
  print(Solution().containsNearbyDuplicate([1, 2, 3, 1], 3));
  print(Solution().containsNearbyDuplicate([1, 0, 1, 1], 1));
  print(Solution().containsNearbyDuplicate([1, 2, 3, 1, 2, 3], 1));
}

class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    // 숫자와 그 인덱스를 저장할 해시맵
    Map<int, int> numMap = {};

    for (int i = 0; i < nums.length; i++) {
      // 현재 숫자가 이미 해시맵에 있고, 인덱스 차이가 k 이하인지 확인
      if (numMap.containsKey(nums[i]) && i - numMap[nums[i]]! <= k) {
        return true;
      }
      // 해시맵 업데이트 (또는 새로 추가)
      numMap[nums[i]] = i;
    }

    return false;
  }
}
