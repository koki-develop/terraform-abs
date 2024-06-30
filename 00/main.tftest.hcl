run "case_1" {
  variables {
    input = <<-EOT
    1
    2 3
    test
    EOT
  }

  assert {
    condition     = output.result == "6 test"
    error_message = "Expected: 6 test, Actual: ${output.result}"
  }
}

run "case_2" {
  variables {
    input = <<-EOT
    72
    128 256
    myonmyon
    EOT
  }

  assert {
    condition     = output.result == "456 myonmyon"
    error_message = "Expected: 456 myonmyon, Actual: ${output.result}"
  }
}
