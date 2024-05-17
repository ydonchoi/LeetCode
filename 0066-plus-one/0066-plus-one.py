class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        
        # 마지막 숫자를 확인하여
        for i, d in reversed(list(enumerate(digits))):
            
            # 9보다 작으면 1을 더하고
            if d < 9:
                digits[i] += 1
                
                # list 반환
                return digits
            
            # 마지막 숫자가 9라면 0으로 치환하고
            digits[i] = 0
            
        # list의 첫번째 원소에 1을 추가한 list로 반환
        return [1] + digits