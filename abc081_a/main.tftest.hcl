run "case_1" {
  variables {
    input = <<-EOT
    101
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
    000
    EOT
  }

  assert {
    condition     = output.result == "0"
    error_message = "Expected: 0, Actual: ${output.result}"
  }
}
