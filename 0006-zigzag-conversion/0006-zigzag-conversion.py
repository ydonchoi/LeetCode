class Solution:
    def convert(self, s: str, numRows: int) -> str:

        if numRows < 2 or numRows > len(s):
            return s

        rows = ['']*numRows
        idx = 0
        direction = -1
        result = ''

        for chr in s:
            if idx == 0 or numRows-idx == 1:
                direction *= -1
            rows[idx]+=chr
            idx += direction                

        for i in range(len(rows)):
            result += rows[i]

        return result