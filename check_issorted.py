#rotation
a=[3,4,5,1,2]
b=[3,4,1,2,5]
nums=[]
def is_rotating(nums):
    count=0
    for i in range(1,len(nums)):
        if nums[i]<nums[i-1] :
            count+=1
    
    if count>1:
        return False
    
    return count==0 or nums[0]>=nums[(len(nums))-1]

print(is_rotating(a))
print(is_rotating(b))

