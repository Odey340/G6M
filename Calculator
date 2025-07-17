let add x y = x + y
let subtract x y = x - y
let multiply x y = x * y
let divide x y =
  if y = 0 then failwith "Division by zero"
  else x / y

let () =
  print_endline "Enter first integer:";
  let x = read_int () in
  print_endline "Enter operator (+, -, *, /):";
  let op = read_line () in
  print_endline "Enter second integer:";
  let y = read_int () in
  let result =
    match op with
    | "+" -> add x y
    | "-" -> subtract x y
    | "*" -> multiply x y
    | "/" -> divide x y
    | _ -> failwith "Unknown operator"
  in
  Printf.printf "Result: %d\n" result
