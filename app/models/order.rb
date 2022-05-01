class Order < ApplicationRecord
  enum style: { vn_vn:0, vn_vc:1, vn_pf:2 ,vc_pf:3 ,vn_vn_pf:4, vn_vc_pf:5, vn_vn_va_vc:6 }
  enum piece: { anything:0, half_request:1, all_request:2 }
  enum purpose: { hobby:0, ensamble:1, lesson:2, other:3}
end
