function normal(shader, t_base, t_second, t_detail)

  		shader:begin("detail_wave","detail")
		: blend		(true,blend.one,blend.zero)
		: zb                (true,true)
		: aref(true, 254)
		: fog (false)
		: sorting( 1, true )
		: sampler("s_base") : texture  (t_base)
end

function l_special(shader, t_base, t_second, t_detail)

  		shader:begin("detail_wave","detail")
		: blend		(true,blend.one,blend.zero)
		: zb                (true,true)
		: aref(true, 254)
		: fog (false)
		: sorting( 3, true )
		: sampler("s_base") : texture  (t_base)
end
