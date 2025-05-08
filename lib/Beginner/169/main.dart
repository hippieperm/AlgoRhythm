/* * 문제
주어진 배열에서 최빈값(majority element)을 찾는 문제입니다.
최빈값은 배열의 원소 중 절반 이상의 개수를 차지하는 원소를 의미합니다.
이 문제에서 당신은 최빈값을 찾아야 하며, 최빈값이 존재하는 것이 보장됩니다.

* 조건
1. 1 <= nums.length <= 5 * 10^4
2. -10^9 <= nums[i] <= 10^9

* 예시
예제 1
	입력: nums = [3,2,3]
	출력: 3
	설명: 3이 배열에서 2번 등장하여 배열의 절반 이상을 차지합니다.

예제 2
	입력: nums = [2,2,1,1,1,2,2]
	출력: 2
	설명: 2가 배열에서 4번 등장하여 배열의 절반 이상을 차지합니다. */

main() {
  Solution().majorityElement([3, 2, 3]);
  Solution().majorityElement([2, 2, 1, 1, 1, 2, 2]);
  
  Solution2().majorityElement([3, 2, 3]);
  Solution2().majorityElement([2, 2, 1, 1, 1, 2, 2]);
}

//TODO: 방법1
class Solution {
  int majorityElement(List<int> nums) {
    if (nums.isEmpty) return 0;

    int count = 0;
    int candidate = 0;

    for (var num in nums) {
      if (count == 0) {
        candidate = num;
      }
      count += (num == candidate) ? 1 : -1;

      /* 보이어-무어 투표 알고리즘 설명
       * 
       * [candidate] : 현재 과반수 후보 숫자
       * [count]     : 후보 숫자의 유효 카운트
       * 
       * 작동 원리:
       *   1. count가 0이면 현재 숫자를 새로운 후보로 지정
       *   2. 현재 숫자가 후보와 같으면 count++ (지지표 증가)
       *      현재 숫자가 후보와 다르면 count-- (지지표 감소)
       * 
       * 핵심 아이디어:
       *   - 과반수 원소는 다른 모든 원소를 상쇄시켜도 최소 1개 이상 남음
       *   - 마치 투표에서 과반수를 얻은 후보는 항상 이기는 것과 같은 원리
       */
    }
    return candidate;
  }
}

//TODO: 방법2
class Solution2 {
  int majorityElement(List<int> nums) {
    if (nums.isEmpty) return 0;

    nums.sort();
    //최빈값은 절반이상을 차지 -> 중앙에 위치한 값이 최빈값
    return nums[nums.length ~/ 2];
  }
}
