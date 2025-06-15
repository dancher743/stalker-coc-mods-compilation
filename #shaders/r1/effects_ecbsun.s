function normal(shader, t_base, t_second, t_detail)

  		shader:begin("ecb_fx_generic","effects_sun_p")
		: blend		(true,blend.srcalpha,blend.one)
		: zb                (true,true)
		: fog (false)
		: sampler("s_base") : texture  (t_base)

end
