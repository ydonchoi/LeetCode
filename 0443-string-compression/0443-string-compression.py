class Solution:
    def compress(self, chars: List[str]) -> int:
        
        # 새로운 문자가 등장하는 위치를 확인하기 위한 초기값 설정
        i = 0       # 새로운 문자 등장 위치
        res = 0     # 반복문자 길이를 하나로 압축한 이후의 위치
        
        # 전체 문자 리스트 길이만큼 반복 탐색
        while i < len(chars):
            
            # 매 반복마다 동일 문자 그룹 길이 확인 위한 초기값 설정
            group_length = 1
            
            # 비교 조건1: 동일 문자 그룹 길이는 전체 길이보다 짧은가?
            # 비교 조건2: 동일 문자 그룹 길이는 얼마인가?
            while (i + group_length < len(chars) and chars[i + group_length] == chars[i]):
                
                # 동일 문자 그룹에 해당하면 +1 카운팅
                group_length += 1
            
            # 동일 문자로 변경하고 문자 리스트 내 다음 원소로 이동
            chars[res] = chars[i]
            res += 1
            
            # 동일 문자 그룹 길이가 둘 이상인 경우, 동일하게 반복되는 문자 그룹 길이만큼 문자 타입의 반복 횟수(숫자)로 변경
            if group_length > 1:
                str_repr = str(group_length)
                chars[res:res+len(str_repr)] = list(str_repr)
                res += len(str_repr)
            
            # 반복되는 길이 이후 위치로 이동
            i += group_length

        return res
        