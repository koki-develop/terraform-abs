variable "input" {
  type = string
}

locals {
  # 餅の直径のリストを取得
  lines = split("\n", chomp(var.input))
  dd    = [for i in range(1, length(local.lines)) : tonumber(local.lines[i])]

  # 重複しない直径の数をカウント
  result = length(toset(local.dd))
}

output "result" {
  value = local.result
}
