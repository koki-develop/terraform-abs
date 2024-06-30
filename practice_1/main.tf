variable "input" {
  type = string
}

locals {
  # 入力を改行で分割
  lines = (split("\n", chomp(var.input)))

  # a, b, c を数値に変換
  a  = tonumber(local.lines[0])
  bc = local.lines[1]
  b  = tonumber(split(" ", local.bc)[0])
  c  = tonumber(split(" ", local.bc)[1])

  # s を文字列として取得
  s = local.lines[2]

  # a + b + c と s を結合
  result = "${local.a + local.b + local.c} ${local.s}"
}

output "result" {
  value = local.result
}
