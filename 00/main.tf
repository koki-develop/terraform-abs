# https://atcoder.jp/contests/abs/tasks/practice_1

variable "input" {
  type = string
}

locals {
  # 入力を改行で分割
  lines = split("\n", chomp(var.input))

  # a, b, c を取得
  a  = tonumber(local.lines[0])
  bc = split(" ", local.lines[1])
  b  = tonumber(local.bc[0])
  c  = tonumber(local.bc[1])

  # s を取得
  s = local.lines[2]

  # a + b + c と s を結合
  result = "${local.a + local.b + local.c} ${local.s}"
}

output "result" {
  value = local.result
}
