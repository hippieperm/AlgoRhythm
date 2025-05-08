/* * 문제
정수 배열 nums가 주어질 때, 배열 내에서 정확히 한 번만 나타나는 유일한 숫자를 찾으세요.
모든 숫자는 두 번씩 등장하며, 단 하나만 예외입니다.

* 조건
1 <= nums.length <= 3 * 10^4
-3 * 10^4 <= nums[i] <= 3 * 10^4
배열 요소는 하나를 제외하고는 모두 두 번 나타납니다.

* 예시
예제 1:
	입력: nums = [2, 2, 1]
	출력: 1

예제 2:
	입력: nums = [4,1,2,1,2]
	출력: 4
	
예제 3:
	입력: nums = [1]
	출력: 1 */

main() {
  print(Solution().singleNumber([4, 1, 2, 1, 2]));
}

class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;
    for (var num in nums) {
      result ^= num;
    }
    return result;
  }
}
