#include "common.h"

struct vf
{
	float4 hpos	: POSITION;
	float2 tc0	: TEXCOORD0;		// base
	float4 c0	: COLOR0;		// color
};

vf main (v_vert v)
{
	vf 		o;

	o.hpos 		= mul			(m_VP, v.P);		// xform, input in world coords
//	o.hpos.z	= o.hpos.w;
	o.tc0		= unpack_tc_base	(v.uv,v.T.w,v.B.w);	// copy tc

	// calculate fade
	float3  dir_v 	= normalize		(mul(m_WV,v.P));
	float3 	norm_v 	= normalize 		(mul(m_WV,unpack_normal(v.N)));
	float 	fade 	= abs			(dot(dir_v,norm_v));
	o.c0		= float4( fade, fade, fade, 1 );

	return o;
}
