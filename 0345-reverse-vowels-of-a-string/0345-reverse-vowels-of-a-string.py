class Solution:
    def reverseVowels(self, s: str) -> str:
        
        # 모음 리스트 생성
        vowels = ['a','e','o','i','u','A','E','O','I','U']
        
        # 주어진 문자열에서 모음 위치(index)를 나타내는 리스트 생성
        chk = [i for i in range(len(s)) for v in vowels if v == s[i]]
        
        # 주어진 문자열을 문자 단위로 분할
        S = [c for c in s]
        
        # 대칭되는 위치에 있는 모음끼리 치환
        for k in range(len(chk)//2):
            S[chk[k]], S[chk[-(k+1)]] = S[chk[-(k+1)]], S[chk[k]]
            
        # 하나의 문자열로 결합하여 반환
        s = "".join(S)
        return s