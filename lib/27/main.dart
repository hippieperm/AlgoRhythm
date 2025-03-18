void main() {
  print(Solution().removeElement([3, 2, 2, 3], 3));
}

class Solution {
  int removeElement(List<int> nums, int val) {
    int result = 0;

    for (var i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[result] = nums[i];
        result++;
      }
    }

    return result;
  }
}
