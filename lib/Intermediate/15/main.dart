// * 문제
// 정수 배열 nums가 주어질 때, 총합이 0이 되는 모든 고유한 세 숫자의 조합을 찾으세요.

// 각 조합은 nums[i] + nums[j] + nums[k] == 0을 만족해야 합니다.
// 결과에는 중복된 조합이 포함되지 않아야 합니다.

// * 조건
// 3 <= nums.length <= 3000
// -10^5 <= nums[i] <= 10^5

// * 예시
// 예제 1
// 	입력: nums = [-1, 0, 1, 2, -1, -4]
// 	출력: [[-1, -1, 2], [-1, 0, 1]]
// 	설명:
// 		nums[i] + nums[j] + nums[k] == 0을 만족하는 조합:
// 			(-1) + (-1) + 2 = 0
// 			(-1) + 0 + 1 = 0

// 예제 2:
// 	입력: nums = [0, 1, 1]
// 	출력: []

// 예제 3:
// 	입력: nums = [0, 0, 0]
// 	출력: [[0, 0, 0]],

void main() {
  final solution = Solution();

  // 테스트 케이스 1
  final test1 = solution.threeSum([-1, 0, 1, 2, -1, -4]);
  print('테스트 케이스 1: $test1'); // 예상 출력: [[-1, -1, 2], [-1, 0, 1]]

  // 테스트 케이스 2
  final test2 = solution.threeSum([0, 1, 1]);
  print('테스트 케이스 2: $test2'); // 예상 출력: []

  // 테스트 케이스 3
  final test3 = solution.threeSum([0, 0, 0]);
  print('테스트 케이스 3: $test3'); // 예상 출력: [[0, 0, 0]]

  // 추가 테스트 케이스
  final test4 = solution.threeSum([-2, -1, 0, 1, 2]);
  print('테스트 케이스 4: $test4'); // 예상 출력: [[-2, 0, 2], [-1, 0, 1]]
}

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    // 결과를 저장할 리스트
    List<List<int>> result = [];

    // 길이가 3보다 작으면 빈 배열 반환
    if (nums.length < 3) return result;

    // 정렬 (투 포인터 알고리즘을 적용하기 위해 필수)
    nums.sort();

    // 모든 요소를 기준점으로 순회
    for (int i = 0; i < nums.length - 2; i++) {
      // 중복된 값 건너뛰기
      if (i > 0 && nums[i] == nums[i - 1]) continue;

      // 기준점보다 큰 범위에서 두 개의 포인터 사용
      int left = i + 1;
      int right = nums.length - 1;

      while (left < right) {
        int sum = nums[i] + nums[left] + nums[right];

        if (sum < 0) {
          // 합이 0보다 작으면 left를 증가
          left++;
        } else if (sum > 0) {
          // 합이 0보다 크면 right를 감소
          right--;
        } else {
          // 합이 0이면 결과에 추가
          result.add([nums[i], nums[left], nums[right]]);

          // 중복 건너뛰기
          while (left < right && nums[left] == nums[left + 1]) left++;
          while (left < right && nums[right] == nums[right - 1]) right--;

          // 포인터 이동
          left++;
          right--;
        }
      }
    }

    return result;
  }
}
