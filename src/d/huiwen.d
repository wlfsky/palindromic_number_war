import std.stdio;
import std.datetime;

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
    for (x = 0; x <= 10000000; ++x) {
        if (ishuiwen(x) == true)
            tx ++;
    }
    return tx;
}

int main(string[] argv)
{
    auto currentTime1 = Clock.currTime();
    auto all = hw1();
    auto currentTime2 = Clock.currTime();
    writeln("it is ", all, "have ", currentTime2 - currentTime1, " sec.");
    return 0;
}
//dmd -release huiwen.d