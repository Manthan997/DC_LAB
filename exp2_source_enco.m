clc
clear
pkg load communications
k=input(' Enter the length of the message used : ' )
n=input('enter the length of the code word used ')
p=input('ente the parity matrix:')
g=[eye(k),p]
m=input('enter messgae word')
c=encode(m,n,k,'linear',g)
d=decode(c,n,k,'linear',g)
h=[p' eye(n-k)]
r=input('enter the received code word')
s=rem(r*h,2)


