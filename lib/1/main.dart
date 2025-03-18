/* * 문제
input : 정수 배열 nums와 정수 target이 주어질 때, 

두 수를 더해서 / target이 되는 

배열 내 두 숫자의 인덱스를 반환하세요.

같은 요소를 두 번 사용할 수 없습니다.
답은 반드시 하나만 존재한다고 가정합니다.

Follow-up: Can you come up with an algorithm that 
is less than O(n^2) time complexity?

* 조건
2 <= nums.length <= 10^4
-10^9 <= nums[i] <= 10^9
-10^9 <= target <= 10^9
정답은 하나만 존재하며, 중복된 입력이 없습니다.

* 예시
예제 1
	입력: nums = [2, 7, 11, 15], target = 9
	출력: [0, 1]
	설명: nums[0] + nums[1] = 2 + 7 = 9 이므로 [0, 1] 반환

예제 2:
	입력: nums = [3, 2, 4], target = 6
	출력: [1, 2]
	설명: nums[1] + nums[2] = 2 + 4 = 6 이므로 [1, 2] 반환
	
예제 3:
	입력: nums = [3, 3], target = 6
	출력: [0, 1]
	설명: nums[0] + nums[1] = 3 + 3 = 6 이므로 [0, 1] 반환 */

void main() {
  // 예제 1
  List<int> nums1 = [2, 7, 11, 15];
  int target1 = 9;
  print('예제 1: ${twoSum(nums1, target1)}'); // [0, 1]

  // 예제 2
  List<int> nums2 = [3, 2, 4];
  int target2 = 6;
  print('예제 2: ${twoSum(nums2, target2)}'); // [1, 2]

  // 예제 3
  List<int> nums3 = [3, 3];
  int target3 = 6;
  print('예제 3: ${twoSum(nums3, target3)}'); // [0, 1]
}

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> map = {};

  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (map.containsKey(complement)) {
      return [map[complement]!, i];
    }
    map[nums[i]] = i;
  }

  return [];
}
