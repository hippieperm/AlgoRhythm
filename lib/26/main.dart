void main() {
  Solution().removeDuplicates([1, 1, 2]);
  Solution().removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]);
  Solution().removeDuplicates([0, 0, 1, 1, 1, 4, 2, 3, 3, 4]);
}

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    nums.sort();
    List<int> result = [nums[0]];
    for (var element in nums) {
      if (!result.contains(element)) {
        result.add(element);
      }
    }
    print(result);
    print(result.length);
    return result.length;
  }
}
