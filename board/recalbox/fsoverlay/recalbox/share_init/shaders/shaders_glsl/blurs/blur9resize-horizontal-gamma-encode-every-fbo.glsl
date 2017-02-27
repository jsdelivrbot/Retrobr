// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _blur_dxdy;
COMPAT_VARYING     vec2 _tex_uv1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec2 _tex_uv1;
    vec2 _blur_dxdy;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _dxdy_scale;
    vec2 _dxdy;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _dxdy_scale = InputSize/OutputSize;
    _dxdy = _dxdy_scale/TextureSize;
    _OUT._blur_dxdy = vec2(_dxdy.x, 0.00000000E+00);
    _ret_0._position1 = _r0006;
    _ret_0._tex_uv1 = TexCoord.xy;
    _ret_0._blur_dxdy = _OUT._blur_dxdy;
    gl_Position = _r0006;
    TEX0.xy = TexCoord.xy;
    TEX1.xy = _OUT._blur_dxdy;
    return;
    TEX0.xy = _ret_0._tex_uv1;
    TEX1.xy = _ret_0._blur_dxdy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _blur_dxdy;
COMPAT_VARYING     vec2 _tex_uv1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _tex_uv1;
    vec2 _blur_dxdy;
};
vec4 _ret_0;
vec3 _TMP1;
float _TMP13;
float _TMP12;
float _TMP11;
vec4 _TMP14;
vec3 _TMP16;
uniform sampler2D Texture;
vec3 _TMP23;
float _weight_sum_inv0026;
vec3 _sum0026;
float _TMP27;
float _TMP31;
float _TMP35;
float _TMP39;
vec4 _TMP43;
vec2 _tex_coords0044;
vec4 _TMP61;
vec2 _tex_coords0062;
vec4 _TMP79;
vec2 _tex_coords0080;
vec4 _TMP97;
vec2 _tex_coords0098;
vec4 _TMP115;
vec4 _TMP133;
vec2 _tex_coords0134;
vec4 _TMP151;
vec2 _tex_coords0152;
vec4 _TMP169;
vec2 _tex_coords0170;
vec4 _TMP187;
vec2 _tex_coords0188;
vec4 _color0206;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _TMP27 = pow(2.71828198E+00, -1.62647530E-01);
    _TMP31 = pow(2.71828198E+00, -6.50590122E-01);
    _TMP35 = pow(2.71828198E+00, -1.46382773E+00);
    _TMP39 = pow(2.71828198E+00, -2.60236049E+00);
    _weight_sum_inv0026 = 1.00000000E+00/(1.00000000E+00 + 2.00000000E+00*(_TMP27 + _TMP31 + _TMP35 + _TMP39));
    _tex_coords0044 = TEX0.xy - 4.00000000E+00*TEX1.xy;
    _TMP14 = COMPAT_TEXTURE(Texture, _tex_coords0044);
    _TMP11 = pow(_TMP14.x, 2.20000005E+00);
    _TMP12 = pow(_TMP14.y, 2.20000005E+00);
    _TMP13 = pow(_TMP14.z, 2.20000005E+00);
    _TMP16 = vec3(_TMP11, _TMP12, _TMP13);
    _TMP43 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, _TMP14.w);
    _sum0026 = _TMP39*_TMP43.xyz;
    _tex_coords0062 = TEX0.xy - 3.00000000E+00*TEX1.xy;
    _TMP14 = COMPAT_TEXTURE(Texture, _tex_coords0062);
    _TMP11 = pow(_TMP14.x, 2.20000005E+00);
    _TMP12 = pow(_TMP14.y, 2.20000005E+00);
    _TMP13 = pow(_TMP14.z, 2.20000005E+00);
    _TMP16 = vec3(_TMP11, _TMP12, _TMP13);
    _TMP61 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, _TMP14.w);
    _sum0026 = _sum0026 + _TMP35*_TMP61.xyz;
    _tex_coords0080 = TEX0.xy - 2.00000000E+00*TEX1.xy;
    _TMP14 = COMPAT_TEXTURE(Texture, _tex_coords0080);
    _TMP11 = pow(_TMP14.x, 2.20000005E+00);
    _TMP12 = pow(_TMP14.y, 2.20000005E+00);
    _TMP13 = pow(_TMP14.z, 2.20000005E+00);
    _TMP16 = vec3(_TMP11, _TMP12, _TMP13);
    _TMP79 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, _TMP14.w);
    _sum0026 = _sum0026 + _TMP31*_TMP79.xyz;
    _tex_coords0098 = TEX0.xy - TEX1.xy;
    _TMP14 = COMPAT_TEXTURE(Texture, _tex_coords0098);
    _TMP11 = pow(_TMP14.x, 2.20000005E+00);
    _TMP12 = pow(_TMP14.y, 2.20000005E+00);
    _TMP13 = pow(_TMP14.z, 2.20000005E+00);
    _TMP16 = vec3(_TMP11, _TMP12, _TMP13);
    _TMP97 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, _TMP14.w);
    _sum0026 = _sum0026 + _TMP27*_TMP97.xyz;
    _TMP14 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP11 = pow(_TMP14.x, 2.20000005E+00);
    _TMP12 = pow(_TMP14.y, 2.20000005E+00);
    _TMP13 = pow(_TMP14.z, 2.20000005E+00);
    _TMP16 = vec3(_TMP11, _TMP12, _TMP13);
    _TMP115 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, _TMP14.w);
    _sum0026 = _sum0026 + _TMP115.xyz;
    _tex_coords0134 = TEX0.xy + TEX1.xy;
    _TMP14 = COMPAT_TEXTURE(Texture, _tex_coords0134);
    _TMP11 = pow(_TMP14.x, 2.20000005E+00);
    _TMP12 = pow(_TMP14.y, 2.20000005E+00);
    _TMP13 = pow(_TMP14.z, 2.20000005E+00);
    _TMP16 = vec3(_TMP11, _TMP12, _TMP13);
    _TMP133 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, _TMP14.w);
    _sum0026 = _sum0026 + _TMP27*_TMP133.xyz;
    _tex_coords0152 = TEX0.xy + 2.00000000E+00*TEX1.xy;
    _TMP14 = COMPAT_TEXTURE(Texture, _tex_coords0152);
    _TMP11 = pow(_TMP14.x, 2.20000005E+00);
    _TMP12 = pow(_TMP14.y, 2.20000005E+00);
    _TMP13 = pow(_TMP14.z, 2.20000005E+00);
    _TMP16 = vec3(_TMP11, _TMP12, _TMP13);
    _TMP151 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, _TMP14.w);
    _sum0026 = _sum0026 + _TMP31*_TMP151.xyz;
    _tex_coords0170 = TEX0.xy + 3.00000000E+00*TEX1.xy;
    _TMP14 = COMPAT_TEXTURE(Texture, _tex_coords0170);
    _TMP11 = pow(_TMP14.x, 2.20000005E+00);
    _TMP12 = pow(_TMP14.y, 2.20000005E+00);
    _TMP13 = pow(_TMP14.z, 2.20000005E+00);
    _TMP16 = vec3(_TMP11, _TMP12, _TMP13);
    _TMP169 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, _TMP14.w);
    _sum0026 = _sum0026 + _TMP35*_TMP169.xyz;
    _tex_coords0188 = TEX0.xy + 4.00000000E+00*TEX1.xy;
    _TMP14 = COMPAT_TEXTURE(Texture, _tex_coords0188);
    _TMP11 = pow(_TMP14.x, 2.20000005E+00);
    _TMP12 = pow(_TMP14.y, 2.20000005E+00);
    _TMP13 = pow(_TMP14.z, 2.20000005E+00);
    _TMP16 = vec3(_TMP11, _TMP12, _TMP13);
    _TMP187 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, _TMP14.w);
    _sum0026 = _sum0026 + _TMP39*_TMP187.xyz;
    _TMP23 = _sum0026*_weight_sum_inv0026;
    _color0206 = vec4(_TMP23.x, _TMP23.y, _TMP23.z, 1.00000000E+00);
    _TMP11 = pow(_color0206.x, 4.54545438E-01);
    _TMP12 = pow(_color0206.y, 4.54545438E-01);
    _TMP13 = pow(_color0206.z, 4.54545438E-01);
    _TMP1 = vec3(_TMP11, _TMP12, _TMP13);
    _ret_0 = vec4(_TMP1.x, _TMP1.y, _TMP1.z, _color0206.w);
    FragColor = _ret_0;
    return;
} 
#endif
