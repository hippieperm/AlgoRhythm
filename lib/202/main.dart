/* * 문제
양의 정수 n이 주어졌을 때, 아래 과정을 반복하여 최종적으로 1이 될 수 있는지 확인하세요.

숫자의 각 자리 숫자를 제곱한 값을 모두 더합니다.
이 결과를 새로운 숫자로 사용하여 위의 과정을 반복합니다.
숫자가 1이 되면 이 숫자는 행복한 숫자입니다.
만약 1로 끝나지 않고 계속 순환(loop)하게 된다면, 이 숫자는 행복하지 않은 숫자입니다.

* 조건
1 <= n <= 2^31 - 1

* 예시
예제 1
	입력: n = 19
	출력: true
	설명: 
		19 → 1² + 9² = 82  
		82 → 8² + 2² = 68  
		68 → 6² + 8² = 100  
		100 → 1² + 0² + 0² = 1

예제 2:
	입력: n = 2
	출력: false
	설명:
		2 → 2² = 4  
		4 → 4² = 16  
		16 → 1² + 6² = 37  
		37 → 3² + 7² = 58  
		58 → 5² + 8² = 89  
		89 → 8² + 9² = 145  
		145 → 1² + 4² + 5² = 42  
		42 → 4² + 2² = 20  
		20 → 2² + 0² = 4  
		이후 4 → 16 → ...이 반복됨. */

void main() {
  print(Solution().isHappy(1));
  print(Solution().isHappy(2));
}

class Solution {
  bool isHappy(int n) {
    Set<int> seen = {};

    while (n != 1) {
      n = n
          .toString()
          .split('')
          .map((x) => int.parse(x) * int.parse(x))
          .reduce((sum, nums) => sum + nums);

      if (seen.contains(n)) return false;
      seen.add(n);
    }

    return true;
  }
}
