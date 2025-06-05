function normal( shader, t_base, t_second, t_detail )

  		shader:begin( "effects_glow", "effects_glow_p" )
		: blend		( true, blend.srcalpha, blend.one )
		: sorting	( 1, false )
		--: aref 		( true, 2 )
		: zb            ( false, false )
		: fog		( false )
		shader : sampler( "s_base" ) : texture  ( t_base ) 
		: clamp()


end