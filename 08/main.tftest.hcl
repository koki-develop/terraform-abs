run "case_1" {
  variables {
    input = <<-EOT
    9 45000
    EOT
  }

  assert {
    condition     = output.result == "0 9 0"
    error_message = "Expected: 0 9 0, Actual: ${output.result}"
  }
}

run "case_2" {
  variables {
    input = <<-EOT
    20 196000
    EOT
  }

  assert {
    condition     = output.result == "-1 -1 -1"
    error_message = "Expected: -1 -1 -1, Actual: ${output.result}"
  }
}

run "case_3" {
  variables {
    input = <<-EOT
    1000 1234000
    EOT
  }

  assert {
    condition     = output.result == "2 54 944"
    error_message = "Expected: 2 54 944, Actual: ${output.result}"
  }
}

# FIXME: N の値が 1024 以上だと動かない
# run "case_4" {
#   variables {
#     input = <<-EOT
#     2000 20000000
#     EOT
#   }
# 
#   assert {
#     condition     = output.result == "2000 0 0"
#     error_message = "Expected: 2000 0 0, Actual: ${output.result}"
#   }
# }
