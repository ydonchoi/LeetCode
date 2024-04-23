class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        ans=''
        if len(word1) > len(word2): res = word1[len(word2):]
        else: res = word2[len(word1):]
        for c in range(min(len(word1),len(word2))): ans += (word1[c]+word2[c])
        ans += res
        return ans