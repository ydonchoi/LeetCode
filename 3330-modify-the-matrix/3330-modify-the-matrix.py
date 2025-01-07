class Solution:
    def modifiedMatrix(self, matrix: List[List[int]]) -> List[List[int]]:
        col = list(zip(*matrix))
        for i in range(len(col)):
            col[i] = list(col[i])
            if -1 in col[i]:
                for j in range(len(col[i])):
                    if col[i][j] == -1:
                        col[i][j] = max(col[i])
        matrix = list(zip(*col))
        for i in range(len(matrix)):
            matrix[i] = list(matrix[i])
        return matrix