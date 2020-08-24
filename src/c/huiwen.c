#include<stdio.h>
#include<stdlib.h>
#include<time.h>

bool ishuiwen(int n) {
    int sn = 0;
    sn = n;
    int tn = 0;
    while (sn != 0) {
        tn = tn * 10 + sn % 10;
        sn = sn / 10;
    }
    if (tn == n)
        return true;
    return false;
}

int hw1() {
    int tx = 0;
    int x = 0;
    for (x = 0; x <= 10000000; x++) {
        if (ishuiwen(x) == true)
            tx ++;
    }
    return tx;
}

void runhw() {
    clock_t start, finish;
    double  duration;
    start = clock();
    int total = hw1();
    finish = clock();
    duration = (double)(finish - start) / CLOCKS_PER_SEC;
    printf("total = %d,  %f seconds\n", total, duration);
}

int main()
{
    runhw();
    return 0;
}

// VS2019\Community build with -release
// total = 10999,  0.134000 seconds (120-160)