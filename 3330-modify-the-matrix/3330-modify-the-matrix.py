class Solution:
    def modifiedMatrix(self, matrix: List[List[int]]) -> List[List[int]]:
        # 배워야 하는 방식 (깔끔하네)
        # 컬럼별 최대값 추출하여 -1을 대체하는 방식
        rows, cols = len(matrix), len(matrix[0])
        maxInCol = [0] * cols

        for r in range(rows):
            for c in range(cols):
                maxInCol[c] = max(maxInCol[c], matrix[r][c])

        for r in range(rows):
            for c in range(cols):
                if matrix[r][c] == -1:
                    matrix[r][c] = maxInCol[c]

        # 아래는 내가 처음에 시도했던 방법
        # col = list(zip(*matrix))
        # for i in range(len(col)):
        #     col[i] = list(col[i])
        #     if -1 in col[i]:
        #         for j in range(len(col[i])):
        #             if col[i][j] == -1:
        #                 col[i][j] = max(col[i])
        # matrix = list(zip(*col))
        # for i in range(len(matrix)):
        #     matrix[i] = list(matrix[i])

        return matrix