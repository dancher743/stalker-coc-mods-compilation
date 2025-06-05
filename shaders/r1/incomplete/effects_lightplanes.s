function normal		(shader, t_base, t_second, t_detail)
	shader:begin	("base_lplanes","base_lplanes")
			: blend		(true,blend.srcalpha,blend.one)
			: sorting	(3, false) -- always on front
			--: aref 		(true,0)
			: zb 		(false,false)
			: fog		(false)

	shader:sampler	( "s_base" )      
			: texture	( t_base ) 
			: clamp()
-- 			: project( true )
end
