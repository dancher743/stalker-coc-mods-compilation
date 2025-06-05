function normal( shader, t_base, t_second, t_detail )

  		shader:begin( "ecb_fx_gradient", "effects_gradient_p" )
		: blend		( true, blend.srcalpha, blend.one )
		: sorting	( 3, false )
		: zb            ( false, false )
		: fog		( false )

		shader : sampler( "s_gradient" ) 
		: texture  ( t_base )  

end
