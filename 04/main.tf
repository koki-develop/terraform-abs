# https://atcoder.jp/contests/abs/tasks/abc087_b

variable "input" {
  type = string
}

locals {
  # a, b, c, x を取得
  lines = split("\n", chomp(var.input))
  a     = tonumber(local.lines[0])
  b     = tonumber(local.lines[1])
  c     = tonumber(local.lines[2])
  x     = tonumber(local.lines[3])

  # 各硬貨の組み合わせを計算
  combinations = [for a in range(0, local.a + 1) : [
    for b in range(0, local.b + 1) : [
      for c in range(0, local.c + 1) : (a * 500 + b * 100 + c * 50 == local.x) ? 1 : 0
    ]
  ]]

  # 組み合わせの数を計算
  result = tostring(sum(flatten(local.combinations)))
}

output "result" {
  value = local.result
}
