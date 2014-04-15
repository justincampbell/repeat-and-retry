load test_helper

@test "repeat runs a failing command once" {
  run $repeat false

  [ $status -eq 1 ]
}

@test "repeat runs a successful command until it fails" {
  run $repeat -n 0 mkdir $RR_TMPDIR/foo

  [ $status -eq 1 ]
}
