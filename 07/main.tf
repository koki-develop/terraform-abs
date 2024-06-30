# https://atcoder.jp/contests/abs/tasks/abc085_b

variable "input" {
  type = string
}

locals {
  # n, d1...dn を取得
  lines = split("\n", chomp(var.input))
  n     = tonumber(local.lines[0])
  dd    = [for i in range(1, local.n + 1) : tonumber(local.lines[i])]

  # 重複しない直径の数をカウント
  result = tostring(length(toset(local.dd)))
}

output "result" {
  value = local.result
}
