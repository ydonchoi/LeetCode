class Solution:
    def increasingTriplet(self, nums: List[int]) -> bool:
        
        # 연속하는 세 숫자 중 첫번째와 두번째를 무한으로 설정
        first, second = float('inf'), float('inf')
        
        # 숫자 배열에서 차례대로 원소를 가져와서,
        for n in nums:
            
            # 첫번째 숫자를 나타내는 변수와 비교하여 작으면 first 변수에 해당 숫자 할당
            if n <= first:
                first = n
            
            # 두번째 숫자를 나타내는 변수와 비교하여 작으면 second 변수에 해당 숫자 할당
            elif n <= second:
                second = n
            
            # first 값과 second 값보다 큰 세번째 숫자이므로 True 반환
            else:
                return True
        
        # 연속하여 증가하는 세 숫자가 존재하지 않으므로 False 반환
        return False
            