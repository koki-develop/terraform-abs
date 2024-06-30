# https://atcoder.jp/contests/abs/tasks/abc081_a

variable "input" {
  type = string
}

locals {
  # "1" の数をカウント
  count = length([for a in split("", chomp(var.input)) : a if a == "1"])

  result = tostring(local.count)
}

output "result" {
  value = local.result
}
