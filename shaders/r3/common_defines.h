#ifndef	common_defines_h_included
#define	common_defines_h_included

//////////////////////////////////////////////////////////////////////////////////////////
// Defines                                		//
#define def_gloss       float(8.f /255.f)
#define def_aref        float(128.f/255.f)
#define def_dbumph      float(0.333f)
#define def_virtualh    float(0.05f)              // 5cm
#define def_distort     float(0.05f)             // we get -0.5 .. 0.5 range, this is -512 .. 512 for 1024, so scale it
#define def_hdr         float(9.h)         		// hight luminance range float(3.h)
#define def_hdr_clip	float(0.75h)        		//
#define def_lum_hrange	float(0.7h)	// hight luminance range

#define	LUMINANCE_VECTOR	float3(0.3f, 0.48f, 0.22f)

//////////////////////////////////////////////////////////////////////////////////////////
#ifndef SMAP_size
#define SMAP_size        4096
#endif
#define PARALLAX_H 0.02
#define parallax float2(PARALLAX_H, -PARALLAX_H/2)
//////////////////////////////////////////////////////////////////////////////////////////

#endif	//	common_defines_h_included