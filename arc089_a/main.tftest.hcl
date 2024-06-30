run "case_1" {
  variables {
    input = <<-EOT
    2
    3 1 2
    6 1 1
    EOT
  }

  assert {
    condition     = output.result == "Yes"
    error_message = "Expected: Yes, Actual: ${output.result}"
  }
}

run "case_2" {
  variables {
    input = <<-EOT
    1
    2 100 100
    EOT
  }

  assert {
    condition     = output.result == "No"
    error_message = "Expected: No, Actual: ${output.result}"
  }
}

run "case_3" {
  variables {
    input = <<-EOT
    2
    5 1 1
    100 1 1
    EOT
  }

  assert {
    condition     = output.result == "No"
    error_message = "Expected: No, Actual: ${output.result}"
  }
}
