class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        
        # 결과값을 받을 빈 문자열 생성
        ans=''
        
        # 두 문자열을 비교하여, 길이가 긴 문자열에서 길이가 짧은 문자열 길이를 초과하는 문자열을 res 변수로 미리 할당
        if len(word1) > len(word2): res = word1[len(word2):]
        else: res = word2[len(word1):]
            
        # 길이가 짧은 문자열을 기준으로 반복 횟수를 설정하고, 두 문자열에서 각 인덱스에 해당하는 문자를 결과값 변수인 ans에 순차적으로 추가
        for c in range(min(len(word1),len(word2))): ans += (word1[c]+word2[c])
        
        # 뒤이어 길이가 긴 문자열에서 짧은 문자열 길이를 초과하는 문자열을 추가
        ans += res
        
        # 결과값 ans(str) 반환
        return ans