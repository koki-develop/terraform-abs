variable "input" {
  type = string
}

locals {
  # n, aa を取得
  lines = split("\n", chomp(var.input))
  n     = tonumber(local.lines[0])
  aa    = [for a in split(" ", local.lines[1]) : tonumber(a)]

  # カードを降順にソート、数値に変換
  sorted_cards = [
    # `sort` は文字列しかサポートしていないため、
    # 0 埋めすることで数値順のソートを実現
    for a_str in reverse(sort([
      for a in local.aa : format("%03d", a)
    ])) : tonumber(a_str)
  ]

  # AliceとBobの得点を計算
  alice = sum([for i in range(0, local.n, 2) : local.sorted_cards[i]])
  bob   = sum([for i in range(1, local.n, 2) : local.sorted_cards[i]])

  # 得点差を計算
  result = local.alice - local.bob
}

output "result" {
  value = local.result
}
