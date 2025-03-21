/* * 문제
이진 트리의 루트 노드가 주어졌을 때, 이 트리의 최대 깊이를 구하세요.

트리의 깊이는 루트 노드에서 가장 먼 리프 노드까지의 경로에 포함된 노드의 수를 의미합니다.

* 조건
1. 트리는 비어있지 않으며, 노드의 개수는 0에서 10,000 사이입니다.

* 예시
예시1.
	입력: [3,9,20,null,null,15,7]
	트리 구조:
	
    3
   / \
  9  20
     / \
    15  7
	
	출력: 3
	설명: 루트 노드 3에서 리프 노드 15 또는 7까지의 경로 길이는 3입니다.
	
예시2.
	입력: [1, null, 2]
	트리 구조:
	
  1
   \
    2
	
	출력: 2
	설명: 루트 노드 1에서 리프 노드 2까지의 경로 길이는 2입니다. */

import 'dart:math';

void main() {}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  int maxDepth(TreeNode? root) {
    // 기저 조건: 노드가 null이면 깊이는 0
    if (root == null) return 0;

    // 왼쪽 서브트리의 최대 깊이 구하기
    int leftDepth = maxDepth(root.left);

    // 오른쪽 서브트리의 최대 깊이 구하기
    int rightDepth = maxDepth(root.right);

    // 현재 노드의 깊이는 왼쪽과 오른쪽 중 더 큰 값 + 1
    return max(leftDepth, rightDepth) + 1;
  }
}
