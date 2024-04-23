class Solution:
    def reverseWords(self, s: str) -> str:
        while "  " in s:
            s = s.replace("  "," ")
        a = s.split(" ")
        while "" in a:
            a.remove("")
        res = " ".join(a[::-1])
        return res