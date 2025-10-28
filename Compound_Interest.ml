(* Compound Interest Calculator *)

let compound_interest principal rate time compounds_per_year =
  let r = rate /. 100.0 in  (* Convert percentage to decimal *)
  let n = float_of_int compounds_per_year in
  let t = float_of_int time in
  
  (* Formula: P(1 + r/n)^(nt) *)
  let amount = principal *. (1.0 +. r /. n) ** (n *. t) in
  let interest = amount -. principal in
  (amount, interest)

(* Example usage function *)
let print_investment_details principal rate time compounds =
  let (final_amount, interest_earned) = compound_interest principal rate time compounds in
  Printf.printf "Principal Amount: $%.2f\n" principal;
  Printf.printf "Interest Rate: %.2f%%\n" rate;
  Printf.printf "Time Period: %d years\n" time;
  Printf.printf "Compounds per year: %d\n" compounds;
  Printf.printf "Final Amount: $%.2f\n" final_amount;
  Printf.printf "Interest Earned: $%.2f\n" interest_earned

(* Example usage *)
let () =
  print_investment_details 1000.0 5.0 5 12  (* $1000 at 5% for 5 years, compounded monthly *)