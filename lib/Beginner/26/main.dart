/* * 문제
정렬된 배열 nums에서 중복된 요소를 제거하고, 남은 요소의 유효한 길이를 반환해야 합니다.
배열에서 중복된 요소는 하나만 남겨두고, 
나머지는 제거해야 하며, 제거 후의 배열은 처음 부분에 남아 있어야 합니다.

유효한 길이를 넘어선 배열은 어떤것이 남던 상관 없습니다.


* 조건
1. 0 <= nums.length <= 3 * 10^4
2. -100 <= nums[i] <= 100
3. nums는 정렬되어 있습니다.

* 예시
예제 1
	입력: nums = [1,1,2]
	출력: 2
	설명: 중복된 1을 제거하면 배열은 nums = [1,2,_]가 됩니다. 유효한 길이는 2입니다.

예제 2
	입력: nums = [0,0,1,1,1,2,2,3,3,4]
	출력: 5
	설명: 중복된 요소를 제거하면 배열은 nums = [0,1,2,3,4,_,_,_,_,_]가 됩니다. 유효한 길이는 5입니다. */

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
