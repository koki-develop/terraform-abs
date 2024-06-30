# https://atcoder.jp/contests/abs/tasks/arc065_a

variable "input" {
  type = string
}

locals {
  s = chomp(var.input)

  result = replace(
    replace(
      replace(
        replace(
          local.s,
          "eraser", ""
        ),
        "erase", ""
      )
      , "dreamer", ""
    ),
    "dream", ""
  ) == "" ? "YES" : "NO"
}

output "result" {
  value = local.result
}
