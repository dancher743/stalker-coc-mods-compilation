#include "common.h"

struct	v_TL
{
	float2	Tex0	: TEXCOORD0;
	float4	Color	: COLOR; 
	float4	P	: POSITION;
};

struct	v2p_TL
{
	float2 	Tex0	: TEXCOORD0;
	float4	Color	: COLOR;
	float4 	HPos	: POSITION;	// Clip-space position 	(for rasterization)
};

//////////////////////////////////////////////////////////////////////////////////////////
// Vertex
v2p_TL main ( v_TL I )
{
	v2p_TL O;

	O.HPos = mul(m_VP, I.P);
	O.HPos.z = O.HPos.w;
	O.Tex0 = I.Tex0;
	O.Color = float4( L_sun_color, 1);

 	return O;
}
