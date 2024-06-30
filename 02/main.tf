# https://atcoder.jp/contests/abs/tasks/abc081_a

variable "input" {
  type = string
}

locals {
  # 入力を1文字ずつ分割して数値に変換
  ss = [for i in split("", chomp(var.input)) : tonumber(i)]

  # 合計
  result = tostring(sum(local.ss))
}

output "result" {
  value = local.result
}
