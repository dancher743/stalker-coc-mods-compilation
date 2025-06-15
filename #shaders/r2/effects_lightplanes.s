function normal		(shader, t_base, t_second, t_detail)
	shader:begin	("base_lplanes","base_lplanes")
			: blend		(true,blend.srcalpha,blend.one)
			: sorting	(2, true)
			--: aref 		(true,0)
			: zb 		(true,false)

	shader:sampler	( "s_base" )      
			: texture	( t_base ) 
			: clamp() 
			--: f_linear()
			--: wrap()
			--: f_anisotropic()
			--: project   	(true) -- используется фонариком
end
