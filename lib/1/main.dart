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
