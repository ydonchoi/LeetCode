class Solution:
    def setZeroes(self, matrix: List[List[int]]) -> None:
        """
        Do not return anything, modify matrix in-place instead.
        """
        col = []
        for i in range(len(matrix)):
            r = 1
            for j in range(len(matrix[i])):
                if matrix[i][j] == 0:
                    r = 0
                    col.append(j)
            if r == 0:
                for j in range(len(matrix[i])):
                    matrix[i][j] = 0
        for k in col:
            for l in range(len(matrix)):
                matrix[l][k] = 0

