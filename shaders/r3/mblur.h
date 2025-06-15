#ifndef	MBLUR_H
#define MBLUR_H

#ifndef 	USE_MBLUR
float3 	mblur	(float2 UV, float3 pos, float3 c_original)	{ return c_original; }
#else
#include "common.h"

//	SkyLoader: DX10: Reimplement done
//	DON`T TORCH IT!!

uniform float4x4	m_current;
uniform float4x4	m_previous;
uniform float2 	m_blur;		// scale_x / 12, scale_y / 12

#define MBLUR_SAMPLES 	float(12)
#define MBLUR_CLAMP	float(0.001)

float3 	mblur	(float2 UV, float3 pos, float3 c_original)	
{
	pos.z   +=		(saturate(0.001 - pos.z)*10000.h);

	float4 	pos4		= float4	(pos,0.01h);

	float4 	p_current	= mul	(m_current,	pos4);
	float4 	p_previous 	= mul	(m_previous,	pos4);
	float2 	p_velocity 	= m_blur * ( (p_current.xy/p_current.w)-(p_previous.xy/p_previous.w) );
		p_velocity	= clamp	(p_velocity,-MBLUR_CLAMP,+MBLUR_CLAMP);

	// For each sample, sum up each sample's color in "Blurred" and then divide
	// to average the color after all the samples are added.
	half3 	blurred 	= 	half3(0.f, 0.f, 0.f); // was c_original
        	blurred 	+= 	s_image.Sample( smp_rtlinear, p_velocity * 1.h  + UV).rgb;
		blurred		+= 	s_image.Sample( smp_rtlinear, p_velocity * 2.h  + UV).rgb;
		blurred		+= 	s_image.Sample( smp_rtlinear, p_velocity * 3.h  + UV).rgb;
		blurred		+= 	s_image.Sample( smp_rtlinear, p_velocity * 4.h  + UV).rgb;
        	blurred 	+= 	s_image.Sample( smp_rtlinear, p_velocity * 5.h  + UV).rgb;
		blurred		+= 	s_image.Sample( smp_rtlinear, p_velocity * 6.h  + UV).rgb;
		blurred		+= 	s_image.Sample( smp_rtlinear, p_velocity * 7.h  + UV).rgb;
		blurred		+= 	s_image.Sample( smp_rtlinear, p_velocity * 8.h  + UV).rgb;
        	blurred 	+= 	s_image.Sample( smp_rtlinear, p_velocity * 9.h  + UV).rgb;
		blurred		+= 	s_image.Sample( smp_rtlinear, p_velocity * 10.h + UV).rgb;
		blurred		+= 	s_image.Sample( smp_rtlinear, p_velocity * 11.h + UV).rgb;
	return 	blurred/MBLUR_SAMPLES;
}

#endif

#endif

#ifndef	MBLUR_H
#define MBLUR_H

#ifndef 	USE_MBLUR
half3 	mblur	(float2 UV, float3 pos, float3 c_original)	{ return c_original; }
#else
#include "common.h"

uniform float4x4	m_current;
uniform float4x4	m_previous;
uniform float2 	m_blur;		// scale_x / 12, scale_y / 12

#define MBLUR_SAMPLES 	float(12)
#define MBLUR_CLAMP	float(100.h)

float3 	mblur	(float2 UVQ, float3 pos, float3 c_original)	{
	float4 	pos4		= float4	(pos,0.001h);

	float4 	p_current	= mul	(m_current,	pos4);
	float4 	p_previous 	= mul	(m_previous,	pos4);
	float2 	p_velocity 	= m_blur * ( (p_current.xy/p_current.w)-(p_previous.xy/p_previous.w) );
		p_velocity	= clamp	(p_velocity,-MBLUR_CLAMP,+MBLUR_CLAMP);

	// For each sample, sum up each sample's color in "Blurred" and then divide
	// to average the color after all the samples are added.
	float3 	blurred 	= 	c_original * 12.0 ;	//h	;
		blurred 	+= 	s_image.Sample(s_bloom, p_velocity * 1.h + UVQ).rgb;	// * 2.h;	//1.5h;
		blurred		+= 	s_image.Sample(s_bloom, p_velocity * 3.h + UVQ).rgb;	// * 2.h;
		blurred		+= 	s_image.Sample(s_bloom, p_velocity * 5.h + UVQ).rgb;	// * 2.h;
		blurred		+= 	s_image.Sample(s_bloom, p_velocity * 7.h + UVQ).rgb;	// * 2.h;
        	blurred 	+= 	s_image.Sample(s_bloom, p_velocity * 9.h + UVQ).rgb;	// * 2.h;
		blurred		+= 	s_image.Sample(s_bloom, p_velocity * 11.h + UVQ).rgb;	// * 2.h;
		blurred		+= 	s_image.Sample(s_bloom, p_velocity * 13.h + UVQ).rgb;	// * 2.h;
		blurred		+= 	s_image.Sample(s_bloom, p_velocity * 15.h + UVQ).rgb;	// * 2.h;
		blurred 	+= 	s_image.Sample(s_bloom, p_velocity * 17.h + UVQ).rgb;	// * 2.h;
		blurred		+= 	s_image.Sample(s_bloom, p_velocity * 19.h + UVQ).rgb;	// * 2.h;
		blurred		+= 	s_image.Sample(s_bloom, p_velocity * 21.h + UVQ).rgb;	// * 2.h;
	return 	blurred/MBLUR_SAMPLES;
}
#endif

#endif
