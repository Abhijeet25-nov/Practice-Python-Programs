#leetcoe 3536

n=322
b=list(str(n))
a=[]
while n>9:
    p=n%10
    a.append(p)
    
    q=n//10
    if q<10:
        a.append(q)
    n=n//10

    
print(b)
    