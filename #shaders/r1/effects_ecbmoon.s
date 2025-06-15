function normal(shader, t_base, t_second, t_detail)

  		shader:begin("ecb_fx_generic","effects_moon_p")
		: blend		(true,blend.one,blend.one)
		: zb                (true,true)
		: aref ( true, 80 )
		: fog (false)
		: sampler("s_base") : texture  (t_base)

end
