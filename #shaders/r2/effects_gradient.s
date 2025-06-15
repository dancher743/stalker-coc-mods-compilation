function normal( shader, t_base, t_second, t_detail )

  		shader:begin( "effects_gradient", "effects_gradient_p" )
		: blend		( true, blend.srcalpha, blend.one )
		: sorting	( 3, false )
		--: aref 		( false, 2 )
		: zb            ( false, false )
		: fog		( false )
		--:emissive	( true )

		shader : sampler( "s_base" ) 
		: texture  ( t_base ) 
		: clamp() 
		: f_linear	()
		--: wrap()
		--: f_anisotropic()
	
end

