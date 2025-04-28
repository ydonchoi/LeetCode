class Solution:
    def scoreOfString(self, s: str) -> int:
        lst = []
        sum = 0

        for idx in range(len(s)):
            lst.append(ord(s[idx]))
        
        for idx in range(len(lst)-1):
            sum += lst[idx] - lst[idx+1] if lst[idx] > lst[idx+1] else lst[idx+1] - lst[idx]

        return sum
