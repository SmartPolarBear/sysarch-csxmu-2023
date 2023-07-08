#include <stdio.h>

#define n 1024
int A[1024][1024],
    B[1024][1024],
    C[1024][1024];

int init(){
  for(int i=0;i<1024;i++)
    for(int j=0;j<1024;j++)
      A[i][j]=B[j][i]=i+j;
}

int main(){
  init();
  for(int i=0;i<n;i++)
     for(int k=0;k<n;k++)
       for(int j=0;j<n;j++)
         C[i][j]+=A[i][k]*B[k][j];
  return 0;
}
