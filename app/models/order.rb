class Order < ApplicationRecord
  enum style: { vn_vn:0, vn_vc:1, vn_pf:2 ,vc_pf:3 ,vn_vn_pf:4, vn_vc_pf:5, vn_vn_va_vc:6 }
end
