class Solution:
    def romanToInt(self, s: str) -> int:
        result = 0
        idx = 1
        RN = {'o': 0, 'I': 1, 'V': 5, 'X': 10, 'L': 50,
              'C': 100, 'D': 500, 'M': 1000}
        s += 'o'

        while idx < len(s):
            if RN[s[idx]] <= RN[s[idx-1]]:
                result += RN[s[idx-1]]

            else:
                result += (RN[s[idx]] - RN[s[idx-1]])
                idx += 1
            
            idx += 1
        
        return result