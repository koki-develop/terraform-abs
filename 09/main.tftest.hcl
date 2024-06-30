run "case_1" {
  variables {
    input = <<-EOT
    erasedream
    EOT
  }

  assert {
    condition     = output.result == "YES"
    error_message = "Expected: YES, Actual: ${output.result}"
  }
}

run "case_2" {
  variables {
    input = <<-EOT
    dreameraser
    EOT
  }

  assert {
    condition     = output.result == "YES"
    error_message = "Expected: YES, Actual: ${output.result}"
  }
}

run "case_3" {
  variables {
    input = <<-EOT
    dreamerer
    EOT
  }

  assert {
    condition     = output.result == "NO"
    error_message = "Expected: NO, Actual: ${output.result}"
  }
}
