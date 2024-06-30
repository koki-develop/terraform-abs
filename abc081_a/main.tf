variable "input" {
  type = string
}

locals {
  # 入力を1文字ずつ分割して数値に変換
  ss   = split("", chomp(var.input))
  nums = [for i in local.ss : tonumber(i)]

  # 合計
  result = sum(local.nums)
}

output "result" {
  value = local.result
}
