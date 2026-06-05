type flag_rule = 
  | RequiresCertificate
  | ExceedsWeightThreshold
  | RegionalValueContentOnly
  | DeMinimisApplied

let encode_rule (rule : flag_rule) : int64 =
  match rule with
  | RequiresCertificate     -> 0b0001L
  | ExceedsWeightThreshold  -> 0b0010L
  | RegionalValueContentOnly -> 0b0100L
  | DeMinimisApplied        -> 0b1000L

let combine_masks masks = 
  List.fold_left Int64.logor 0L masks