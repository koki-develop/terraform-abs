# https://atcoder.jp/contests/abs/tasks/abc083_b

variable "input" {
  type = string
}

locals {
  # n, a, b を取得
  nab = split(" ", chomp(var.input))
  n   = tonumber(local.nab[0])
  a   = tonumber(local.nab[1])
  b   = tonumber(local.nab[2])

  # 各整数の各桁の和を計算
  sums = [for i in range(1, local.n + 1) : sum([for c in split("", tostring(i)) : tonumber(c)])]

  # 各桁の和が A から B の間にある整数のリストを作成
  valid_numbers = [for i in range(1, local.n + 1) : i if local.a <= local.sums[i - 1] && local.sums[i - 1] <= local.b]

  # 総和を計算
  result = tostring(sum(local.valid_numbers))
}

output "result" {
  value = local.result
}
