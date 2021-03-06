precision mediump float;
varying vec2 vTextureCoords;
uniform sampler2D sTexture;
uniform vec4 uAmbientLightColor;
uniform vec4 uDiffuseLightColor;
varying float vLightIntensity;

void main() {
    gl_FragColor =  vec4(( texture2D( sTexture, vTextureCoords ) * ( uAmbientLightColor + ( vLightIntensity * uDiffuseLightColor ) ) ).xyz, 0.25);
}
