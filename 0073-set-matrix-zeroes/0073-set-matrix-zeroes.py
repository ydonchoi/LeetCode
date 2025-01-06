class Solution:
    def setZeroes(self, matrix: List[List[int]]) -> None:
        """
        Do not return anything, modify matrix in-place instead.
        """
        col = []
        for r in range(len(matrix)):
            if 0 in matrix[r]:
                for c in range(len(matrix[r])):
                    if matrix[r][c] == 0:
                        col.append(c)
                matrix[r] = [0]*len(matrix[r])
        for c in col:
            for r in range(len(matrix)):
                matrix[r][c] = 0