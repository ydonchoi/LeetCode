class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        
        # i = (문자, 공란 상관없이) 주어진 텍스트의 마지막 인덱스
        i = len(s) - 1
        
        # 제일 마지막에 위치한 문자가 등장할 때까지 (index - 1)
        while i >= 0 and s[i] == ' ':
            i -= 1     
        lastIndex = i

        # 마지막 문자 index로부터 빈 칸(space)이 나타날 때까지 (index - 1)
        while i >= 0 and s[i] != ' ':
            i-= 1
        
        return lastIndex -i