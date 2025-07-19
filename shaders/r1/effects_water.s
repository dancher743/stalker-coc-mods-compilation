local tex_base                = "water\\water_water"
local tex_nmap                = "water\\water_normal"
local tex_dist                = "water\\water_dudv"
local tex_env0                = "$user$sky0"         -- "sky\\sky_8_cube"
local tex_env1                = "$user$sky1"         -- "sky\\sky_8_cube"
local tex_leaves              = "water\\water_foam"

function normal                (shader, t_base, t_second, t_detail)
  shader:begin                ("water","water")
        : sorting        (2, true)
        : blend                (true,blend.srcalpha,blend.invsrcalpha)
              : aref                (true,0)
              : zb                (true,false)
              : distort        (true)
              : fog                (true)
  shader:sampler        ("s_base")       :texture  (tex_base)
  shader:sampler        ("s_env")        :texture  (tex_env)   : clamp()
end

function l_special        (shader, t_base, t_second, t_detail)
  shader:begin                ("waterd","waterd")
        : sorting        (2, true)
        : blend                (true,blend.srcalpha,blend.invsrcalpha)
        : zb                (true,false)
        : fog                (false)
        : distort        (true)
  shader:sampler        ("s_base")       :texture  (tex_base)
  shader:sampler        ("s_distort0")   :texture  (tex_dist)
  shader:sampler        ("s_distort1")   :texture  (tex_dist2)
end

