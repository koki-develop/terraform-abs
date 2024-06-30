run "case_1" {
  variables {
    input = <<-EOT
    2
    3 1
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
    3
    2 7 4
    EOT
  }

  assert {
    condition     = output.result == "5"
    error_message = "Expected: 5, Actual: ${output.result}"
  }
}

run "case_3" {
  variables {
    input = <<-EOT
    4
    20 18 2 18
    EOT
  }

  assert {
    condition     = output.result == "18"
    error_message = "Expected: 18, Actual: ${output.result}"
  }
}
