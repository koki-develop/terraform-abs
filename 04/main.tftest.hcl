run "case_1" {
  variables {
    input = <<-EOT
    2
    2
    2
    100
    EOT
  }

  assert {
    condition     = output.result == "2"
    error_message = "Expected: 2, Actual: ${output.result}"
  }
}

run "case_2" {
  variables {
    input = <<-EOT
    5
    1
    0
    150
    EOT
  }

  assert {
    condition     = output.result == "0"
    error_message = "Expected: 0, Actual: ${output.result}"
  }
}

run "case_3" {
  variables {
    input = <<-EOT
    30
    40
    50
    6000
    EOT
  }

  assert {
    condition     = output.result == "213"
    error_message = "Expected: 213, Actual: ${output.result}"
  }
}
