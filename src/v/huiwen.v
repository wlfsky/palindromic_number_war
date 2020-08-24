module main

import time

fn main() {
    sw := time.new_stopwatch({})
    r := huiwen()
    println('hello world VLang is here Res=$r == tme::${sw.elapsed().milliseconds()}ms')
}

fn huiwen() int {
    mut tx := 0
    for i in 0..10000000 {
        if ishuiwen(i) == true {
            tx ++
        }
    }
    return tx
}

fn ishuiwen(n int) bool {
    mut sn := 0
    sn = n
    mut tn := 0
    for sn != 0 {
        tn = tn * 10 + sn % 10
        sn = sn / 10
    }
    if tn == n {
        return true
    }
    return false
}

// v run .\vexe001.v; v version
// hello world VLang is here Res=10999 == tme::339ms
// V 0.1.28 bbaf6e3