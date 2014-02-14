"Shevchuc And 11 a"
Open "example.in" For Input As #1
Input #1, a, b, n, m 
x1=a*n-2*a+2
y1=a*n
x2=b*m-2*m+2
y2=b*m
If x1<x2 Then g=x2
Else
g=x1
EndIf
If y1<y2 Then h=y1
Else
h=y2
EndIf
Close #1