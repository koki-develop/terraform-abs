run "case_1" {
  variables {
    input = <<-EOT
    20 2 5
    EOT
  }

  assert {
    condition     = output.result == "84"
    error_message = "Expected: 84, Actual: ${output.result}"
  }
}

run "case_2" {
  variables {
    input = <<-EOT
    10 1 2
    EOT
  }

  assert {
    condition     = output.result == "13"
    error_message = "Expected: 13, Actual: ${output.result}"
  }
}

run "case_3" {
  variables {
    input = <<-EOT
    100 4 16
    EOT
  }

  assert {
    condition     = output.result == "4554"
    error_message = "Expected: 4554, Actual: ${output.result}"
  }
}
