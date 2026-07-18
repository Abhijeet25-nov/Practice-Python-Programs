a=[1,2,2,3,4,6,5,7,7]
def sec_largest(arr):
    large=float('inf')
    small=float('inf')
    second_large=float('-inf')
    second_small=float('inf')
    for i in range(len(arr)):
        small=min(small,arr[i])
        large=max(large,arr[i])
        
    for i in range(len(arr)):
        if arr[i]< second_small and arr[i]!= small:
            second_small=arr[i]
        if arr[i] > second_large and arr[i]!=large:
            second_large=arr[i]    
    
    return second_small,second_large

print(sec_largest(a))