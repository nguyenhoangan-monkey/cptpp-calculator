open Result.Syntax
let compile raw_data ctx =
  let* validated  = Validator.run raw_data ctx in
  let* optimized  = Optimizer.run validated ctx in
  let* compressed = Compressor.run optimized ctx in
  Ok compressed