module CPTPP : sig
  open Data

  type t = Data.Country.t

  val member_list : Data.Country.t list
  val as_member : Data.Country.t -> t option
end
