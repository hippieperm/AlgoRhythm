/* * 문제
정렬된 고유한 정수 배열 nums가 주어졌을 때, 연속된 숫자들을 하나의 범위로 묶어 문자열 형태로 반환하세요.
각 범위는 "a->b"의 형식이며, 숫자가 하나만 포함될 경우 해당 숫자 "a"를 반환합니다.

* 조건
0 <= nums.length <= 20
-2^31 <= nums[i] <= 2^31 - 1
모든 nums의 원소는 고유하며, 오름차순으로 정렬되어 있습니다.

* 예시
예제 1
	입력: nums = [0, 1, 2, 4, 5, 7]
	출력: ["0->2", "4->5", "7"]
	설명: 
		0, 1, 2는 연속적이므로 "0->2"로 묶입니다.
		4, 5는 연속적이므로 "4->5"로 묶입니다.
		7은 혼자이므로 "7"로 나타냅니다.

예제 2:
	입력: nums = [0, 2, 3, 4, 6, 8, 9]
	출력: ["0", "2->4", "6", "8->9"]
	설명:
		2, 3, 4는 연속적이므로 "2->4"로 묶입니다.
		8, 9는 연속적이므로 "8->9"로 묶입니다.
	
예제 3:
	입력: nums = []
	출력: []
	설명: 배열이 비어 있으므로 빈 배열을 반환합니다. */

void main() {
  print(Solution().summaryRanges([0, 1, 2, 4, 5, 7]));
}

class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<String> result = [];

    if (nums.isEmpty) return result;

    int start = nums[0];

    for (var i = 1; i < nums.length; i++) {
      if (nums[i] != nums[i - 1] + 1) {
        if (start == nums[i - 1]) {
          result.add(start.toString());
        } else {
          result.add('$start->${nums[i - 1]}');
        }
        start = nums[i];
      }
    }

    if (start == nums.last) {
      result.add(start.toString());
    } else {
      result.add('$start->${nums.last}');
    }

    return result;
  }
}
