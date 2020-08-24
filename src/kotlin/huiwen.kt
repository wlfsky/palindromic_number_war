// 20200820 huiwen.kt
import kotlin.system.*

fun main(args: Array<String>) {
    run()
    println("Hello, World!")
}

fun ishuiwen(n: Int) : Boolean{
    var sn: Int = n;
    var tn: Int = 0;
    while (sn != 0) {
        tn = tn * 10 + sn % 10;
        sn /= 10;
    }
    if (tn == n) {
        return true;
    }
    return false;
}

fun huiwen(max: Int = 10000000) : Int{
    var tx: Int = 0;
    for (x: Int in 0..max) {
        if (ishuiwen(x))
            tx ++;
    }
    return tx;
}

fun run(){
    var total: Int = 0
    val t1 = getTimeMillis()
    val total: Int = huiwen(10000000);
    val t2 = getTimeMillis()
    val tms = t2 - t1
    println("Result:: $total -- Time:: $tms ")
}

// kotlinc huiwen.kt -o huiwen;kotlinc -version;.\huiwen.exe