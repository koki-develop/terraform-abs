run "case_1" {
  variables {
    input = <<-EOT
    4
    10
    8
    8
    6
    EOT
  }

  assert {
    condition     = output.result == "3"
    error_message = "Expected: 3, Actual: ${output.result}"
  }
}

run "case_2" {
  variables {
    input = <<-EOT
    3
    15
    15
    15
    EOT
  }

  assert {
    condition     = output.result == "1"
    error_message = "Expected: 1, Actual: ${output.result}"
  }
}

run "case_3" {
  variables {
    input = <<-EOT
    7
    50
    30
    50
    100
    50
    80
    30
    EOT
  }

  assert {
    condition     = output.result == "4"
    error_message = "Expected: 4, Actual: ${output.result}"
  }
}
