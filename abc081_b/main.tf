variable "input" {
  type = string
}

locals {
  # a1...an を数値に変換
  lines = split("\n", chomp(var.input))
  aa    = [for a in split(" ", local.lines[1]) : tonumber(a)]

  # a1...an を2進数に変換
  bins = [for a in local.aa : format("%b", a)]

  # 2進数の末尾の0の数 = 2 で割れる回数を数える
  counts = [for bin in local.bins : length(regex("0*$", bin))]

  # 最小値を取得
  result = min(local.counts...)
}

output "result" {
  value = local.result
}
