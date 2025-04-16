/* * 문제
당신은 꽃을 심으려고 합니다. 꽃은 서로 인접한 땅에 심을 수 없습니다.
꽃밭은 이진 배열 flowerbed로 표현되며, 0은 빈 자리, 1은 이미 꽃이 심어진 자리를 나타냅니다.
당신은 추가로 n개의 꽃을 심고 싶습니다.
주어진 규칙에 따라 새로운 꽃을 심을 수 있는지 여부를 반환하세요.

* 조건
1. flowerbed는 길이가 1 이상 2 * 10^4 이하인 배열입니다.
2. flowerbed[i]는 0 또는 1입니다.
3. 꽃은 인접한 칸에 심을 수 없습니다.
4. n은 1 이상 flowerbed 길이 이하입니다.

* 예시
1. 입력: flowerbed = [1,0,0,0,1], n = 1 출력: true
	설명: 2번째 위치에 꽃을 심을 수 있습니다.

2. 입력: flowerbed = [1,0,0,0,1], n = 2 출력: false
	설명: 2번째 위치에 하나의 꽃만 심을 수 있기 때문에 두 개의 꽃을 심을 수 없습니다.
 */

void main() {
  Solution solution = Solution();
  print(solution.canPlaceFlowers([1, 0, 0, 0, 1], 1)); // true
  print(solution.canPlaceFlowers([1, 0, 0, 0, 1], 2)); // false
}

class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    // 심을 수 있는 꽃의 개수를 세는 변수
    int count = 0;

    // 배열의 앞뒤에 가상의 빈 땅(0)을 추가하면 계산이 더 쉬워짐
    List<int> bed = [0, ...flowerbed, 0];

    // 세 개의 연속된 빈 땅이 있으면 가운데에 꽃을 심을 수 있음
    for (int i = 1; i < bed.length - 1; i++) {
      if (bed[i - 1] == 0 && bed[i] == 0 && bed[i + 1] == 0) {
        bed[i] = 1; // 꽃을 심음
        count++; // 심은 꽃 개수 증가
      }
    }

    return count >= n;
  }
}
