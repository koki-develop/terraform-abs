# https://atcoder.jp/contests/abs/tasks/abc088_b

variable "input" {
  type = string
}

locals {
  # n, a1...an を取得
  lines = split("\n", chomp(var.input))
  n     = tonumber(local.lines[0])
  aa    = [for a in split(" ", local.lines[1]) : tonumber(a)]

  # カードを降順にソート、数値に変換
  sorted_cards = [
    # `sort` は文字列しかサポートしていないため、 0 埋めすることで数値順のソートを実現
    for a_str in reverse(sort([
      for a in local.aa : format("%03d", a)
    ])) : tonumber(a_str)
  ]

  # Alice と Bob の得点を計算
  alice = sum([for i in range(0, local.n, 2) : local.sorted_cards[i]])
  bob   = sum([for i in range(1, local.n, 2) : local.sorted_cards[i]])

  # 得点差を計算
  result = tostring(local.alice - local.bob)
}

output "result" {
  value = local.result
}
