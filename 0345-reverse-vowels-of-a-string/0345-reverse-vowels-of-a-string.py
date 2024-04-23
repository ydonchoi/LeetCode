class Solution:
    def reverseVowels(self, s: str) -> str:
        vowels = ['a','e','o','i','u','A','E','O','I','U']
        chk = [i for i in range(len(s)) for v in vowels if v == s[i]]
        S = [c for c in s]
        for k in range(len(chk)//2):
            S[chk[k]], S[chk[-(k+1)]] = S[chk[-(k+1)]], S[chk[k]]
        s = "".join(S)
        return s