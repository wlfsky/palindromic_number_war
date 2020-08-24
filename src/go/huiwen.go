
func HW(num int) bool {
    var source int = num
    var tnum int = 0
    for num != 0 {
        tnum = tnum*10 + num%10
        num = num / 10
    }
    if tnum == source {
        //fmt.Println(source)
        return true
    }
    return false
}

func hw() {
    all := 10000000
    t1 := time.Now()
    total := 0
    for n := 0; n <= all; n++ {
        if HW(n) {
            total++
        }
    }
    t2 := time.Now()
    fmt.Println(total)
    fmt.Println(t2.Sub(t1))
}
// go build -ldflags "-w -s";go version;.\huiwen.exe