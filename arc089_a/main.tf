variable "input" {
  type = string
}

locals {
  # n を取得
  lines = split("\n", chomp(var.input))
  n     = tonumber(local.lines[0])

  # 各時刻と座標をリストに格納
  t_x_y = [
    for i in range(1, local.n + 1) : {
      t = tonumber(split(" ", local.lines[i])[0]),
      x = tonumber(split(" ", local.lines[i])[1]),
      y = tonumber(split(" ", local.lines[i])[2])
    }
  ]

  # 各ステップの情報をリストに格納
  steps = [
    for i in range(0, local.n) : {
      current_t = local.t_x_y[i].t,
      current_x = local.t_x_y[i].x,
      current_y = local.t_x_y[i].y,
      prev_t    = i == 0 ? 0 : local.t_x_y[i - 1].t,
      prev_x    = i == 0 ? 0 : local.t_x_y[i - 1].x,
      prev_y    = i == 0 ? 0 : local.t_x_y[i - 1].y
    }
  ]

  # 各ステップの移動可能性を判定
  movables = [
    for step in local.steps : (
      step.current_t - step.prev_t >= abs(step.current_x - step.prev_x) + abs(step.current_y - step.prev_y) &&
      (step.current_t - step.prev_t - abs(step.current_x - step.prev_x) - abs(step.current_y - step.prev_y)) % 2 == 0
    )
  ]

  # 全てのステップが移動可能であれば "Yes" そうでなければ "No"
  result = alltrue(local.movables) ? "Yes" : "No"
}

output "result" {
  value = local.result
}
