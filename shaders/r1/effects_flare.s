function normal( shader, t_base, t_second, t_detail )

  		shader:begin( "ecb_fx_flares", "effects_flare_p" )
		: blend		( true, blend.srcalpha, blend.one )
		: sorting	( 2, false )
		--: aref 		( false, 2 )
		: zb            ( false, false )
		: fog		( false )

		shader : sampler( "s_base" ) 
		: texture  ( t_base ) 
		: clamp() 
		--: f_linear	()




end
