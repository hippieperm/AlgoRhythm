/* * 문제
두 개의 이진 트리 root1과 root2가 주어집니다.
이 두 트리가 리프-유사(leaf-similar) 트리인지 확인하세요.

리프-유사란 두 트리의 리프 노드들이 왼쪽에서 오른쪽 순서로 동일한 값을 가지는 것을 의미합니다.
리프 노드는 자식이 없는 노드를 의미합니다.

* 조건
1. 트리의 노드 개수는 각각 1 이상 200 이하입니다.
2. 각 노드의 값은 0 이상 200 이하입니다.

* 예시
예시 1
	입력: root1 = [3,5,1,6,2,9,8,null,null,7,4], root2 = [3,5,1,6,7,4,2,null,null,null,null,null,null,9,8]
	출력: true
	설명: 두 트리의 리프 노드 순서는 [6, 7, 4, 9, 8]로 동일합니다.

예시 2
	입력: root1 = [1,2,3], root2 = [1,3,2]
	출력: false
	설명: 첫 번째 트리의 리프 노드 순서는 [2, 3], 두 번째 트리의 리프 노드 순서는 [3, 2]로 다릅니다. */

void main() {
  // * 예시 1
  TreeNode root1 = TreeNode(
    3,
    TreeNode(
      5,
      TreeNode(6),
      TreeNode(2, TreeNode(7), TreeNode(4)),
    ),
    TreeNode(1, TreeNode(9), TreeNode(8)),
  );
  TreeNode root2 = TreeNode(
    3,
    TreeNode(
      5,
      TreeNode(6),
      TreeNode(
        7,
        TreeNode(4),
        TreeNode(
          2,
          TreeNode(9),
          TreeNode(8),
        ),
      ),
    ),
  );
  print(Solution().leafSimilar(root1, root2));

  // * 예시 2
  root1 = TreeNode(
    1,
    TreeNode(2),
    TreeNode(3),
  );
  root2 = TreeNode(
    1,
    TreeNode(3),
    TreeNode(2),
  );
  print(Solution().leafSimilar(root1, root2));
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    // 각 트리의 리프 노드 값들을 저장할 리스트
    List<int> leaves1 = [];
    List<int> leaves2 = [];

    // 각 트리의 리프 노드 값들을 수집
    collectLeaves(root1, leaves1);
    collectLeaves(root2, leaves2);

    // 두 리스트가 같은지 비교
    if (leaves1.length != leaves2.length) {
      return false;
    }

    for (int i = 0; i < leaves1.length; i++) {
      if (leaves1[i] != leaves2[i]) {
        return false;
      }
    }

    return true;
  }

  // 재귀적으로 리프 노드 값들을 수집하는 헬퍼 함수
  void collectLeaves(TreeNode? node, List<int> leaves) {
    if (node == null) return;

    // 리프 노드인 경우 (왼쪽 자식과 오른쪽 자식이 모두 없는 경우)
    if (node.left == null && node.right == null) {
      leaves.add(node.val);
      return;
    }

    // 왼쪽 서브트리 탐색
    collectLeaves(node.left, leaves);
    // 오른쪽 서브트리 탐색
    collectLeaves(node.right, leaves);
  }
}
