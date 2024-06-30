# https://atcoder.jp/contests/abs/tasks/abc085_c

variable "input" {
  type = string
}

locals {
  # n, y を取得
  lines = split("\n", chomp(var.input))
  ny    = split(" ", local.lines[0])
  n     = tonumber(local.ny[0])
  y     = tonumber(local.ny[1])

  # 全ての有効な組み合わせを計算
  combinations = flatten([for x in range(0, local.n + 1) : [
    for y in range(0, local.n - x + 1) : {
      count_10000 = x,
      count_5000  = y,
      count_1000  = local.n - x - y,
    } if 10000 * x + 5000 * y + 1000 * (local.n - x - y) == local.y
  ]])

  # 組み合わせの取得
  combination = length(local.combinations) > 0 ? local.combinations[0] : { count_10000 = -1, count_5000 = -1, count_1000 = -1 }

  # 結果文字列を形成
  result = "${local.combination.count_10000} ${local.combination.count_5000} ${local.combination.count_1000}"
}

output "result" {
  value = local.result
}
