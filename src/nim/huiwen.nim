import strutils, times

proc ishuiwen(n : int): bool =
  var sn : int = n
  var tn : int
  tn = 0
  while sn != 0 :
    tn = tn * 10 + sn mod 10
    sn = sn div 10
  if tn == n :
    return true
  return false

proc hw1() : int =
  var tx:int = 0
  for x in 0..10000000 :
    if ishuiwen(x) == true :
      tx=tx+1
  return tx

var t0 = times.cpuTime()
var total : int = hw1()
var t1 = times.cpuTime()
echo("Nim HW all ok ", total, " . use : ", t1 - t0)
