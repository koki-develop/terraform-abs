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
