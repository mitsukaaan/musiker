class Player < ApplicationRecord
  enum instrument: { vn:0,va:1,vc:2,pf:3 }
end
