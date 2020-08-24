const print = std.debug.print;
const std = @import("std");
const os = std.os;
const time = std.time;

fn ishuiwen(n: i32) bool {
    var sn: i32 = 0;
    sn = n;
    var tn: i32 = 0;
    while (sn != 0) {
        tn = tn * 10 + @mod(sn, 10);
        sn = @divTrunc(sn, 10);
    }
    if (tn == n) {
        //print("数::{} == 回文数::{}\n", .{ tn, n });
        return true;
    }
    return false;
}

fn hw1() i32 {
    var tx: i32 = 0;
    var x: i32 = 0;
    var i: i32 = 0;
    var max: i32 = 10000000;
    while (i < max) : (i += 1) {
        if (ishuiwen(i) == true) {
            tx += 1;
            //print("{}\n", .{i});
        }
    }
    return tx;
}

fn runhw() void {
    var s: i64 = time.milliTimestamp();
    var r: i32 = hw1();
    var e: i64 = time.milliTimestamp();
    var ss: i64 = e - s;
    print("Hello, {} == result::{} -- start::{} -- end::{} -- time::{}!\n", .{ "world", r, s, e, ss });
}

pub fn main() !void {
    runhw();
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {}!\n", .{"world"});
    try stdout.print("Hello[{}]!\n", .{@mod(12, 10)});
    try stdout.print("Hello[{}]!\n", .{@divTrunc(12, 10)});
}

/*
clear; zig fmt .\huiwen.zig;zig build-exe --release-fast .\huiwen.zig; .\huiwen.exe
Hello, world == result::10999 -- start::1597487195088 -- end::1597487195237 -- time::149!
*/