function normal( shader, t_base, t_second, t_detail )

  		shader:begin( "ecb_fx_generic", "effects_glow_p" )
		: blend		( true, blend.srcalpha, blend.one )
		: sorting	( 3, false )
		--: aref 		( false, 32 )
		: zb            ( false, false )
		: fog		( false )

		shader : sampler( "s_base" ) 
		: texture  ( t_base ) 
		: clamp() 
		--: f_linear	()

end
