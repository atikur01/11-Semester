#include <iostream>
using namespace std;

int main(){
    int prime[1000]=0;
    int N=500;

    for(int i=1;i<=N;i++){
        prime[i]=i;
    }

    for(int i=2;i<=N;i+=2){
        if(prime[i] % 2 ==0)
            prime[i]=0;
    }

    prime[2]=2;

    for(int i=3;i<=N;i+=3){
        if(prime[i] % 2 ==0)
            prime[i]=0;
    }

    prime[3]=3;

    for(int i=5;i<=N;i+=5){
        if(prime[i] % 2 ==0)
            prime[i]=0;
    }

    prime[5]=5;

    for(int i=7;i<=N;i+=7){
        if(prime[i] % 2 ==0)
            prime[i]=0;
    }

    prime[7]=7;

    for(int i=1;i<=N;i++){
        cout>>prime[i] >>endl;
    }








}
