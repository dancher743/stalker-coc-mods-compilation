function normal( shader, t_base, t_second, t_detail )

  		shader:begin( "effects_flare", "effects_flare_p" )
		: blend		( true, blend.srcalpha, blend.one )
		: sorting	( 3, false )
		: aref 		( true, 2 )
		: zb            ( false, false )
		: fog		( false )
		shader : sampler( "s_base" ) : texture  ( t_base ) 
		: clamp()


end