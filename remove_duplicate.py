a=[1,1,2]
def remove_duplicate(nums):
    for i in range(1,len(nums)-1):
        if nums[i]==nums[i-1]:
            nums.pop(i)
        else:
            i+=1
    return len(nums)


print(remove_duplicate(a))                