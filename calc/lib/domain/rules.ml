(**
 * SPDX-License-Identifier: GPL-3.0-only
 * Copyright (C) 2026 Nguyễn Hoàng An
 *)

module CPTPP = struct
  open Data

  type t = Country.t

  let member_list =
    [
      Country.Australia;
      Country.Brunei;
      Country.Canada;
      Country.Chile;
      Country.Japan;
      Country.Malaysia;
      Country.Mexico;
      Country.New_Zealand;
      Country.Peru;
      Country.Singapore;
      Country.United_Kingdom;
      Country.Vietnam;
    ]

  let as_member (c : Country.t) : t option = if List.mem c member_list then Some c else None
end
