# https://atcoder.jp/contests/abs/tasks/abc086_a

variable "input" {
  type = string
}

locals {
  # a, b を数値に変換
  ab = split(" ", chomp(var.input))
  a  = tonumber(local.ab[0])
  b  = tonumber(local.ab[1])

  # a * b が偶数か奇数か判定
  result = local.a * local.b % 2 == 0 ? "Even" : "Odd"
}

output "result" {
  value = local.result
}
