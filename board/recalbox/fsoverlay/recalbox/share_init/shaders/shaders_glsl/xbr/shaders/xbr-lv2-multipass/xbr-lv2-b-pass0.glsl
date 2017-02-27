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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
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
    vec4 _color1;
    vec2 _texCoord1;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -2.00000000E+00*_ps.y);
    _OUT._t2 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t3 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t4 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t5 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 2.00000000E+00*_ps.y);
    _OUT._t6 = TexCoord.xyyy + vec4(-2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _OUT._t7 = TexCoord.xyyy + vec4(2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
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
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
vec3 _TMP41;
vec4 _TMP29;
vec4 _TMP28;
bvec4 _TMP27;
bvec4 _TMP26;
bvec4 _TMP25;
bvec4 _TMP24;
bvec4 _TMP23;
bvec4 _TMP22;
bvec4 _TMP21;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
vec4 _r0097;
vec4 _r0107;
vec4 _r0117;
vec4 _r0127;
vec4 _r0137;
vec4 _r0147;
vec4 _TMP158;
vec4 _a0161;
vec4 _TMP164;
vec4 _a0167;
vec4 _TMP170;
vec4 _a0173;
vec4 _TMP176;
vec4 _a0179;
vec4 _TMP182;
vec4 _a0185;
vec4 _TMP188;
vec4 _a0191;
vec4 _TMP194;
vec4 _a0197;
vec4 _TMP200;
vec4 _a0203;
vec4 _TMP204;
vec4 _a0207;
vec4 _TMP208;
vec4 _a0211;
vec4 _TMP212;
vec4 _a0215;
vec4 _TMP216;
vec4 _a0219;
vec4 _TMP222;
vec4 _a0225;
vec4 _TMP226;
vec4 _a0229;
vec4 _TMP230;
vec4 _a0233;
vec4 _TMP234;
vec4 _a0237;
vec4 _TMP238;
vec4 _a0241;
vec4 _TMP242;
vec4 _a0245;
vec4 _TMP246;
vec4 _a0249;
vec4 _TMP250;
vec4 _a0253;
vec4 _TMP254;
vec4 _a0257;
vec4 _a0259;
vec4 _a0261;
vec4 _a0263;
vec3 _x0267;
vec3 _TMP268;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    vec3 _info;
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX4.xw);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX4.yw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX5.xw);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX5.yw);
    _TMP14 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP15 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP16 = COMPAT_TEXTURE(Texture, TEX6.xz);
    _TMP17 = COMPAT_TEXTURE(Texture, TEX6.xw);
    _TMP18 = COMPAT_TEXTURE(Texture, TEX7.xy);
    _TMP19 = COMPAT_TEXTURE(Texture, TEX7.xz);
    _TMP20 = COMPAT_TEXTURE(Texture, TEX7.xw);
    _r0097.x = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0097.y = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0097.z = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0097.w = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0107.x = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0107.y = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0107.z = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0107.w = dot(_TMP11.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0117.x = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0117.y = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0117.z = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0117.w = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0127.x = dot(_TMP20.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0127.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0127.z = dot(_TMP15.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0127.w = dot(_TMP12.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0137.x = dot(_TMP14.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0137.y = dot(_TMP18.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0137.z = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0137.w = dot(_TMP17.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0147.x = dot(_TMP13.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0147.y = dot(_TMP19.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0147.z = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0147.w = dot(_TMP16.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _a0161 = _r0097.wxyz - _r0097;
    _TMP158 = abs(_a0161);
    _TMP21 = bvec4(_TMP158.x < 1.50000000E+01, _TMP158.y < 1.50000000E+01, _TMP158.z < 1.50000000E+01, _TMP158.w < 1.50000000E+01);
    _a0167 = _r0097.zwxy - _r0097.yzwx;
    _TMP164 = abs(_a0167);
    _TMP22 = bvec4(_TMP164.x < 1.50000000E+01, _TMP164.y < 1.50000000E+01, _TMP164.z < 1.50000000E+01, _TMP164.w < 1.50000000E+01);
    _a0173 = _r0117 - _r0107.wxyz;
    _TMP170 = abs(_a0173);
    _TMP23 = bvec4(_TMP170.x < 1.50000000E+01, _TMP170.y < 1.50000000E+01, _TMP170.z < 1.50000000E+01, _TMP170.w < 1.50000000E+01);
    _a0179 = _r0097.wxyz - _r0127;
    _TMP176 = abs(_a0179);
    _TMP24 = bvec4(_TMP176.x < 1.50000000E+01, _TMP176.y < 1.50000000E+01, _TMP176.z < 1.50000000E+01, _TMP176.w < 1.50000000E+01);
    _a0185 = _r0097.zwxy - _r0137;
    _TMP182 = abs(_a0185);
    _TMP25 = bvec4(_TMP182.x < 1.50000000E+01, _TMP182.y < 1.50000000E+01, _TMP182.z < 1.50000000E+01, _TMP182.w < 1.50000000E+01);
    _a0191 = _r0117 - _r0107.zwxy;
    _TMP188 = abs(_a0191);
    _TMP26 = bvec4(_TMP188.x < 1.50000000E+01, _TMP188.y < 1.50000000E+01, _TMP188.z < 1.50000000E+01, _TMP188.w < 1.50000000E+01);
    _a0197 = _r0117 - _r0107;
    _TMP194 = abs(_a0197);
    _TMP27 = bvec4(_TMP194.x < 1.50000000E+01, _TMP194.y < 1.50000000E+01, _TMP194.z < 1.50000000E+01, _TMP194.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_r0117.x != _r0097.w && _r0117.x != _r0097.z && (!_TMP21.x && !_TMP22.x || _TMP23.x && !_TMP24.x && !_TMP25.x || _TMP26.x || _TMP27.x), _r0117.y != _r0097.x && _r0117.y != _r0097.w && (!_TMP21.y && !_TMP22.y || _TMP23.y && !_TMP24.y && !_TMP25.y || _TMP26.y || _TMP27.y), _r0117.z != _r0097.y && _r0117.z != _r0097.x && (!_TMP21.z && !_TMP22.z || _TMP23.z && !_TMP24.z && !_TMP25.z || _TMP26.z || _TMP27.z), _r0117.w != _r0097.z && _r0117.w != _r0097.y && (!_TMP21.w && !_TMP22.w || _TMP23.w && !_TMP24.w && !_TMP25.w || _TMP26.w || _TMP27.w));
    _interp_restriction_lv2_left = bvec4(_r0117.x != _r0107.z && _r0097.y != _r0107.z, _r0117.y != _r0107.w && _r0097.z != _r0107.w, _r0117.z != _r0107.x && _r0097.w != _r0107.x, _r0117.w != _r0107.y && _r0097.x != _r0107.y);
    _interp_restriction_lv2_up = bvec4(_r0117.x != _r0107.x && _r0097.x != _r0107.x, _r0117.y != _r0107.y && _r0097.y != _r0107.y, _r0117.z != _r0107.z && _r0097.z != _r0107.z, _r0117.w != _r0107.w && _r0097.w != _r0107.w);
    _a0203 = _r0117 - _r0107;
    _TMP200 = abs(_a0203);
    _a0207 = _r0117 - _r0107.zwxy;
    _TMP204 = abs(_a0207);
    _a0211 = _r0107.wxyz - _r0147;
    _TMP208 = abs(_a0211);
    _a0215 = _r0107.wxyz - _r0147.yzwx;
    _TMP212 = abs(_a0215);
    _a0219 = _r0097.zwxy - _r0097.wxyz;
    _TMP216 = abs(_a0219);
    _TMP28 = _TMP200 + _TMP204 + _TMP208 + _TMP212 + 4.00000000E+00*_TMP216;
    _a0225 = _r0097.zwxy - _r0097.yzwx;
    _TMP222 = abs(_a0225);
    _a0229 = _r0097.zwxy - _r0137;
    _TMP226 = abs(_a0229);
    _a0233 = _r0097.wxyz - _r0127;
    _TMP230 = abs(_a0233);
    _a0237 = _r0097.wxyz - _r0097;
    _TMP234 = abs(_a0237);
    _a0241 = _r0117 - _r0107.wxyz;
    _TMP238 = abs(_a0241);
    _TMP29 = _TMP222 + _TMP226 + _TMP230 + _TMP234 + 4.00000000E+00*_TMP238;
    _edr = bvec4(_TMP28.x < _TMP29.x && _interp_restriction_lv1.x, _TMP28.y < _TMP29.y && _interp_restriction_lv1.y, _TMP28.z < _TMP29.z && _interp_restriction_lv1.z, _TMP28.w < _TMP29.w && _interp_restriction_lv1.w);
    _a0245 = _r0097.wxyz - _r0107.zwxy;
    _TMP242 = abs(_a0245);
    _a0249 = _r0097.zwxy - _r0107;
    _TMP246 = abs(_a0249);
    _edr_left = bvec4((2.00000000E+00*_TMP242).x <= _TMP246.x && _interp_restriction_lv2_left.x && _edr.x, (2.00000000E+00*_TMP242).y <= _TMP246.y && _interp_restriction_lv2_left.y && _edr.y, (2.00000000E+00*_TMP242).z <= _TMP246.z && _interp_restriction_lv2_left.z && _edr.z, (2.00000000E+00*_TMP242).w <= _TMP246.w && _interp_restriction_lv2_left.w && _edr.w);
    _a0253 = _r0097.wxyz - _r0107.zwxy;
    _TMP250 = abs(_a0253);
    _a0257 = _r0097.zwxy - _r0107;
    _TMP254 = abs(_a0257);
    _edr_up = bvec4(_TMP250.x >= (2.00000000E+00*_TMP254).x && _interp_restriction_lv2_up.x && _edr.x, _TMP250.y >= (2.00000000E+00*_TMP254).y && _interp_restriction_lv2_up.y && _edr.y, _TMP250.z >= (2.00000000E+00*_TMP254).z && _interp_restriction_lv2_up.z && _edr.z, _TMP250.w >= (2.00000000E+00*_TMP254).w && _interp_restriction_lv2_up.w && _edr.w);
    _a0259 = vec4(float(_edr.x), float(_edr.y), float(_edr.z), float(_edr.w));
    _info.x = dot(_a0259, vec4( 8.00000000E+00, 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _a0261 = vec4(float(_edr_left.x), float(_edr_left.y), float(_edr_left.z), float(_edr_left.w));
    _info.y = dot(_a0261, vec4( 8.00000000E+00, 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _a0263 = vec4(float(_edr_up.x), float(_edr_up.y), float(_edr_up.z), float(_edr_up.w));
    _info.z = dot(_a0263, vec4( 8.00000000E+00, 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _x0267 = _info/vec3( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02);
    _TMP41 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0267);
    _TMP268 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP41);
    _ret_0 = vec4(_TMP268.x, _TMP268.y, _TMP268.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
