//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	
	//Desenhando a sprite toda branca!
	//Pegando como a sprite esta sendo desenhada normalmente
	vec4 cor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	cor.rgb = vec3(1.0, 1.0, 1.0);
	//cor.r = 0.5;
	//Tem que colocar . a linguagem do shaders trabalha com numero quebrado
	//r é vermelho
	//g é verda
	//b =e azul
	//a que é o alpha
	
	//Desenhar a sprite toda branca!
  //Ele desenha a minha sprite normalmente
   
   
   
   
   gl_FragColor = cor;
}
