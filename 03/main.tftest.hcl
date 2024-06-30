run "case_1" {
  variables {
    input = <<-EOT
    3
    8 12 40
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
    4
    5 6 8 10
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
    6
    382253568 723152896 37802240 379425024 404894720 471526144
    EOT
  }

  assert {
    condition     = output.result == "8"
    error_message = "Expected: 8, Actual: ${output.result}"
  }
}
