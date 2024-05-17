class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        
        # 두 문자열의 첫 문자부터 탐색 시작
        s_idx, t_idx = 0,0
        
        # 두 문자열 중 길이가 짧은 문자열 길이만큼 반복
        while s_idx < len(s) and t_idx < len(t):
            
            # 두 문자열의 문자가 같다면
            if s[s_idx] == t[t_idx]:
                
                # 길이가 짧은 문자열의 다음 인덱스를 지정하여 탐색
                s_idx += 1
            
            # 길이가 긴 문자열에서 순차적으로 하나씩 탐색
            t_idx += 1
        
        # 길이가 짧은 문자열의 탐색이 종료되었다면 True 반환
        return s_idx == len(s)