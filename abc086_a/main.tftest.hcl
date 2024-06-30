run "case_1" {
  variables {
    input = <<-EOT
    3 4
    EOT
  }

  assert {
    condition     = output.result == "Even"
    error_message = "Expected: Even, Actual: ${output.result}"
  }
}

run "case_2" {
  variables {
    input = <<-EOT
    1 21
    EOT
  }

  assert {
    condition     = output.result == "Odd"
    error_message = "Expected: Odd, Actual: ${output.result}"
  }
}
