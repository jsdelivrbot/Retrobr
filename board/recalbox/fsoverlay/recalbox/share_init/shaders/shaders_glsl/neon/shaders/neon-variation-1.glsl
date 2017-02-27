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
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color;
struct output_dummy {
    vec4 _color;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0005;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _otexCoord;
    _r0005 = VertexCoord.x*MVPMatrix[0];
    _r0005 = _r0005 + VertexCoord.y*MVPMatrix[1];
    _r0005 = _r0005 + VertexCoord.z*MVPMatrix[2];
    _r0005 = _r0005 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0005;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0005;
    TEX0.xy = TexCoord.xy;
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
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color;
struct output_dummy {
    vec4 _color;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec3 _TMP15;
vec3 _TMP14;
float _TMP13;
float _TMP12;
float _TMP11;
float _TMP10;
float _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
input_dummy _IN1;
uniform sampler2D Texture;
vec2 _c0020;
vec2 _c0022;
vec2 _c0024;
vec2 _c0026;
vec2 _c0030;
vec2 _c0032;
vec2 _c0034;
vec2 _c0036;
float _x0038;
float _x0042;
float _x0046;
float _x0050;
float _x0054;
vec3 _a0060;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _delta;
    output_dummy _OUT;
    vec3 _first;
    vec3 _second;
    vec3 _mid_horiz;
    vec3 _mid_vert;
    vec3 _res;
    vec3 _TMP18;
    _delta = 5.00000000E-01/TextureSize;
    _c0020 = TEX0.xy + vec2(-_delta.x, -_delta.y);
    _TMP0 = COMPAT_TEXTURE(Texture, _c0020);
    _c0022 = TEX0.xy + vec2(-_delta.x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0022);
    _c0024 = TEX0.xy + vec2(-_delta.x, _delta.y);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0024);
    _c0026 = TEX0.xy + vec2(0.00000000E+00, -_delta.y);
    _TMP3 = COMPAT_TEXTURE(Texture, _c0026);
    _c0030 = TEX0.xy + vec2(0.00000000E+00, _delta.y);
    _TMP5 = COMPAT_TEXTURE(Texture, _c0030);
    _c0032 = TEX0.xy + vec2(_delta.x, -_delta.y);
    _TMP6 = COMPAT_TEXTURE(Texture, _c0032);
    _c0034 = TEX0.xy + vec2(_delta.x, 0.00000000E+00);
    _TMP7 = COMPAT_TEXTURE(Texture, _c0034);
    _c0036 = TEX0.xy + vec2(_delta.x, _delta.y);
    _TMP8 = COMPAT_TEXTURE(Texture, _c0036);
    _x0038 = TEX0.x*TextureSize.x + 5.00000000E-01;
    _TMP9 = fract(_x0038);
    _first = _TMP0.xyz + _TMP9*(_TMP6.xyz - _TMP0.xyz);
    _x0042 = TEX0.x*TextureSize.x + 5.00000000E-01;
    _TMP10 = fract(_x0042);
    _second = _TMP2.xyz + _TMP10*(_TMP8.xyz - _TMP2.xyz);
    _x0046 = TEX0.x*TextureSize.x + 5.00000000E-01;
    _TMP11 = fract(_x0046);
    _mid_horiz = _TMP1.xyz + _TMP11*(_TMP7.xyz - _TMP1.xyz);
    _x0050 = TEX0.y*TextureSize.y + 5.00000000E-01;
    _TMP12 = fract(_x0050);
    _mid_vert = _TMP3.xyz + _TMP12*(_TMP5.xyz - _TMP3.xyz);
    _x0054 = TEX0.y*TextureSize.y + 5.00000000E-01;
    _TMP13 = fract(_x0054);
    _res = _first + _TMP13*(_second - _first);
    _TMP14 = _mid_horiz + 5.00000000E-01*(_mid_vert - _mid_horiz);
    _a0060 = _res - _TMP14;
    _TMP15 = abs(_a0060);
    _TMP18 = 2.80000001E-01*(_res + _mid_horiz + _mid_vert) + 4.69999981E+00*_TMP15;
    _OUT._color = vec4(_TMP18.x, _TMP18.y, _TMP18.z, 1.00000000E+00);
    FragColor = _OUT._color;
    return;
} 
#endif
