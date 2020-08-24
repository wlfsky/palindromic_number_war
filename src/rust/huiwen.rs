use std::time::SystemTime;

fn main() {
    hw21();
}

fn hw21() {
    let local1 = SystemTime::now();
    hw2();
    let local2 = SystemTime::now();
    let rtime = local2.duration_since(local1);
    println!("{:?}", rtime);
}

fn hw2() {
    let mut tx: i32 = 0;
    for x in 0..10000000 {
        if hw(x) == true {
            tx = tx + 1;
        }
    }
    println!("--{:?}--", tx);
}

fn hw(n: i32) -> bool {
    let mut sn: i32 = n;
    let mut tn: i32 = 0;
    while sn != 0 {
        tn = tn * 10 + sn % 10;
        sn = sn / 10;
    }
    if tn == n {
        return true;
    }
    return false;
}
