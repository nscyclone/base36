defmodule Base36Test do
  use ExUnit.Case, async: true

  import Base36

  test :encode do
    assert encode(0) == "0"
    assert encode(1) == "1"
    assert encode(2) == "2"
    assert encode(3) == "3"
    assert encode(4) == "4"
    assert encode(5) == "5"
    assert encode(6) == "6"
    assert encode(7) == "7"
    assert encode(8) == "8"
    assert encode(9) == "9"
    assert encode(10) == "A"
    assert encode(11) == "B"
    assert encode(12) == "C"
    assert encode(13) == "D"
    assert encode(14) == "E"
    assert encode(15) == "F"
    assert encode(16) == "G"
    assert encode(17) == "H"
    assert encode(18) == "I"
    assert encode(19) == "J"
    assert encode(20) == "K"
    assert encode(21) == "L"
    assert encode(22) == "M"
    assert encode(23) == "N"
    assert encode(24) == "O"
    assert encode(25) == "P"
    assert encode(26) == "Q"
    assert encode(27) == "R"
    assert encode(28) == "S"
    assert encode(29) == "T"
    assert encode(30) == "U"
    assert encode(31) == "V"
    assert encode(32) == "W"
    assert encode(33) == "X"
    assert encode(34) == "Y"
    assert encode(35) == "Z"
    assert encode(36) == "10"
    assert encode(100) == "2S"
    assert encode(420) == "BO"
    assert encode(3_14_159_265) == "571IU9"
    assert encode(18_746_9043_385_228_8443) == "E8QYAO0R0ZAZ"
    assert encode(97_144_3434_982_163_7035) == "21T07KRCDO2WB"
  end

  test :decode do
    assert decode("0") == { :ok, 0 }
    assert decode("1") == { :ok, 1 }
    assert decode("2") == { :ok, 2 }
    assert decode("3") == { :ok, 3 }
    assert decode("4") == { :ok, 4 }
    assert decode("5") == { :ok, 5 }
    assert decode("6") == { :ok, 6 }
    assert decode("7") == { :ok, 7 }
    assert decode("8") == { :ok, 8 }
    assert decode("9") == { :ok, 9 }
    assert decode("A") == { :ok, 10 }
    assert decode("B") == { :ok, 11 }
    assert decode("C") == { :ok, 12 }
    assert decode("D") == { :ok, 13 }
    assert decode("E") == { :ok, 14 }
    assert decode("F") == { :ok, 15 }
    assert decode("G") == { :ok, 16 }
    assert decode("H") == { :ok, 17 }
    assert decode("I") == { :ok, 18 }
    assert decode("J") == { :ok, 19 }
    assert decode("K") == { :ok, 20 }
    assert decode("L") == { :ok, 21 }
    assert decode("M") == { :ok, 22 }
    assert decode("N") == { :ok, 23 }
    assert decode("O") == { :ok, 24 }
    assert decode("P") == { :ok, 25 }
    assert decode("Q") == { :ok, 26 }
    assert decode("R") == { :ok, 27 }
    assert decode("S") == { :ok, 28 }
    assert decode("T") == { :ok, 29 }
    assert decode("U") == { :ok, 30 }
    assert decode("V") == { :ok, 31 }
    assert decode("W") == { :ok, 32 }
    assert decode("X") == { :ok, 33 }
    assert decode("Y") == { :ok, 34 }
    assert decode("Z") == { :ok, 35 }
    assert decode("10") == { :ok, 36 }
    assert decode("2S") == { :ok, 100 }
    assert decode("BO") == { :ok, 420 }
    assert decode("571IU9") == { :ok, 3_14_159_265 }
    assert decode("E8QYAO0R0ZAZ") == { :ok, 18_746_9043_385_228_8443 }
    assert decode("21T07KRCDO2WB") == { :ok, 97_144_3434_982_163_7035 }
  end

  test :decode! do
    assert decode!("0") == 0
    assert decode!("1") == 1
    assert decode!("2") == 2
    assert decode!("3") == 3
    assert decode!("4") == 4
    assert decode!("5") == 5
    assert decode!("6") == 6
    assert decode!("7") == 7
    assert decode!("8") == 8
    assert decode!("9") == 9
    assert decode!("A") == 10
    assert decode!("B") == 11
    assert decode!("C") == 12
    assert decode!("D") == 13
    assert decode!("E") == 14
    assert decode!("F") == 15
    assert decode!("G") == 16
    assert decode!("H") == 17
    assert decode!("I") == 18
    assert decode!("J") == 19
    assert decode!("K") == 20
    assert decode!("L") == 21
    assert decode!("M") == 22
    assert decode!("N") == 23
    assert decode!("O") == 24
    assert decode!("P") == 25
    assert decode!("Q") == 26
    assert decode!("R") == 27
    assert decode!("S") == 28
    assert decode!("T") == 29
    assert decode!("U") == 30
    assert decode!("V") == 31
    assert decode!("W") == 32
    assert decode!("X") == 33
    assert decode!("Y") == 34
    assert decode!("Z") == 35
    assert decode!("10") == 36
    assert decode!("2S") == 100
    assert decode!("BO") == 420
    assert decode!("571IU9") == 3_14_159_265
    assert decode!("E8QYAO0R0ZAZ") == 18_746_9043_385_228_8443
    assert decode!("21T07KRCDO2WB") == 97_144_3434_982_163_7035
  end
end
