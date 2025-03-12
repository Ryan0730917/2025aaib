class Solution:
    def maximumCount(self, nums: List[int]) -> int:
        pos=0
        neg=0#迴圈前面,準備好,都放0
        for i in range(len(nums)):
            if nums[i]>0: pos+=1
            if nums[i]<0: neg+=1

        return max(pos,neg)
