
// Project: jogo AGK 
// Created: 2022-06-25

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "jogo AGK" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


controlavidaroy=0
controlavidabig=0


//imagem de fundo
CreateSprite(3,LoadImage("fundogame1.png"))
SetSpriteSize(3,1024,768)



//boneco da esquerda
roy = CreateSprite(LoadImage("imagemroy.png"))
//LoadImage(roy,"imagemroy.png")
SetSpriteSize(roy,150,170)
SetSpritePosition(roy,110,350)
AddSpriteAnimationFrame(roy,LoadImage("roy1.png"))
AddSpriteAnimationFrame(roy,LoadImage("roy2.png"))
SetSpriteAnimation(roy,75,100,2)
PlaySprite(roy,2,1,1,2)

//boneco da direita
bigjow = CreateSprite(LoadImage("imagembigjow.png"))
//LoadImage(2,"imagembigjow.png")
SetSpriteSize(bigjow,150,170)
SetSpritePosition(bigjow,710,350)
AddSpriteAnimationFrame(bigjow,LoadImage("bigjow1.png"))
AddSpriteAnimationFrame(bigjow,LoadImage("bigjow2.png"))
SetSpriteAnimation(bigjow,75,100,2)
PlaySprite(bigjow,2,1,1,2)

// imagem do tiro

tirodoroy=CreateSprite(LoadImage("tirojogo.png"))
SetSpritePosition(tirodoroy,-10,-10)
SetSpriteSize(tirodoroy,15,15)
tirodobig=CreateSprite(LoadImage("tiro2.png"))
SetSpritePosition(tirodobig,20,20)
SetSpriteSize(tirodobig,15,15)

pei as integer =2
pei2 as integer =2



// caixa de colisao
//SetSpriteShape(roy,2)
//SetSpriteShape(bigjow,2)

//SetSpriteShape(tirodoroy,2)
//SetSpriteShape(tirodobig,2)

//audios
eibigjow= LoadSound("eibigjow.wav")
carregado=LoadSound("esotucarregado.wav")
nassim=LoadSound("nficaassim.wav")




//textos
CreateText(1,"vida roy: ")
CreateText(2,"vida bigjow: ")
//vidaroy
vida3roy=CreateText("3")

SetTextPosition(vida3roy,180,5)
SetTextSize(vida3roy,50)
SetTextColor(vida3roy,0,0,0,255)

vida2roy=CreateText("2")

SetTextPosition(vida2roy,180,5)
SetTextSize(vida2roy,50)
SetTextColor(vida2roy,0,0,0,255)
SetTextVisible(vida2roy,0)

vida1roy=CreateText("1")

SetTextPosition(vida1roy,180,5)
SetTextSize(vida1roy,50)
SetTextColor(vida1roy,0,0,0,255)
SetTextVisible(vida1roy,0)

vida0roy=CreateText("0")

SetTextPosition(vida0roy,180,5)
SetTextSize(vida0roy,50)
SetTextColor(vida0roy,0,0,0,255)
SetTextVisible(vida0roy,0)

//vidabig
vida3big=CreateText("3")

SetTextPosition(vida3big,970,5)
SetTextSize(vida3big,50)
SetTextColor(vida3big,0,0,0,255)

vida2big=CreateText("2")

SetTextPosition(vida2big,970,5)
SetTextSize(vida2big,50)
SetTextColor(vida2big,0,0,0,255)
SetTextVisible(vida2big,0)

vida1big=CreateText("1")

SetTextPosition(vida1big,970,5)
SetTextSize(vida1big,50)
SetTextColor(vida1big,0,0,0,255)
SetTextVisible(vida1big,0)

vida0big=CreateText("0")

SetTextPosition(vida0big,970,5)
SetTextSize(vida0big,50)
SetTextColor(vida0big,0,0,0,255)
SetTextVisible(vida0big,0)

//variaveis de vida
vidaroy as integer = 3
vidabigjow as integer = 3

SetTextPosition(1,10,2)
SetTextSize(1,50)
SetTextColor(1,0,0,0,255)

//SetTextPosition(3,10,30)
//SetTextSize(3,40)
//SetTextColor(3,0,0,0,255)

SetTextPosition(2,740,2)
SetTextSize(2,50)
SetTextColor(2,0,0,0,255)

//SetTextPosition(4,740,30)
//SetTextSize(4,40)
//SetTextColor(4,0,0,0,255)

//sprites temporizadores

temp3=CreateText("3")
SetTextSize(temp3,150)
SetTextPosition(temp3,500,200)
SetTextColor(temp3,255,0,0,255)
SetTextVisible(temp3,0)

temp2=CreateText("2")
SetTextSize(temp2,150)
SetTextPosition(temp2,500,200)
SetTextColor(temp2,255,0,0,255)
SetTextVisible(temp2,0)

temp1=CreateText("1")
SetTextSize(temp1,150)
SetTextPosition(temp1,500,200)
SetTextColor(temp1,255,0,0,255)
SetTextVisible(temp1,0)

go=CreateText("GO!")
SetTextSize(go,150)
SetTextPosition(go,490,200)
SetTextColor(go,0,255,0,255)
SetTextVisible(go,0)
	
inicio = 1

telainicial:

tinicio=CreateSprite(LoadImage("tela de inicio do jogo agk.png"))
SetSpriteSize(tinicio,1024,768)
SetSpriteVisible(tinicio,1)	
SetTextVisible(1,0)
SetTextVisible(vida3roy,0)

SetTextVisible(2,0)
SetTextVisible(vida3big,0)


SetSpritePosition(roy,110,350)
SetSpritePosition(tirodoroy,-10,-10)

SetSpritePosition(bigjow,710,350)
SetSpritePosition(tirodobig,-1,-1)

repeat
sync()
until GetPointerPressed()
SetTextVisible(1,1)
SetTextVisible(vida3roy,1)

SetTextVisible(2,1)
SetTextVisible(vida3big,1)


SetSpriteVisible(tinicio,0)
inicio = 0


//comandos
soumavez=0
if(soumavez=0)
	comando=CreateSprite(LoadImage("tela comandos.png"))
	SetSpriteSize(comando,1024,768)
	//SetSpritePosition(comando,400,500)
	
	SetTextVisible(1,0)
SetTextVisible(vida3roy,0)

SetTextVisible(2,0)
SetTextVisible(vida3big,0)
	
	soumavez=1
	
	repeat
	sync()
	until GetPointerPressed()
PlaySound(eibigjow)
SetTextVisible(1,1)
SetTextVisible(vida3roy,1)

SetTextVisible(2,1)
SetTextVisible(vida3big,1)
SetSpriteVisible(comando,0)
pei=2
pei2=2

Time = GetSeconds ( )
	
endif

controlatemp=0

//telagameover:
function telaroyvenceu()
	
royvenceu=CreateSprite(LoadImage("royvenceu.png"))
SetSpriteSize(royvenceu,1024,768)

SetSpriteVisible(royvenceu,1)


repeat
sync()
until GetPointerPressed()
SetSpriteVisible(royvenceu,0)


endfunction

function telabigvenceu ()
		
	
	bigjowvenceu=CreateSprite(LoadImage("bigjowvenceu.png"))
	SetSpriteSize(bigjowvenceu,1024,768)
	SetSpriteVisible(bigjowvenceu,1)
	
	repeat
		sync()
	until GetPointerPressed()
	
	SetSpriteVisible(bigjowvenceu,0)
	
endfunction

	


do
	
	if(inicio=1)
		
		gosub telainicial
		

	endif
	
	

		
	

	x# = GetJoystickX ( )
    y# = GetJoystickY ( )
    
   
    
    SetSpritePosition ( roy, GetSpriteX ( roy ) + x#* 10 , GetSpriteY ( roy ) + y#*10 )
    
    if ( GetSpriteX ( roy ) < 10 )
        SetSpriteX ( roy, 10 )
    endif


    if ( GetSpriteX ( roy ) > 380 )
        SetSpriteX ( roy, 380 )
    endif


    if ( GetSpriteY ( roy ) < 10 )
        SetSpriteY ( roy, 10 )
    endif


    if ( GetSpriteY ( roy ) > 560 )
        SetSpriteY ( roy, 560 )
    endif
    
    
   
// Move Sprite para a esquerda 
If (GetRawKeyState ( 37 )) 
	SetSpritePosition (bigjow, GetSpriteX ( bigjow ) - 3 * 3 , GetSpriteY ( bigjow ) + 0 * 3 )
	EndIf   
// Move Sprite para cima 
If (GetRawKeyState ( 38 )) 
	SetSpritePosition ( bigjow , GetSpriteX ( bigjow ) + 0 * 3 , GetSpriteY ( bigjow ) - 3 * 3 ) 
	EndIf 
// Move Sprite para a direita
If (GetRawKeyState ( 39 ))
	SetSpritePosition ( bigjow , GetSpriteX ( bigjow ) + 3 * 3 , GetSpriteY ( bigjow ) + 0 * 3 ) 
EndIf 
// Move Sprite para baixo 
If (GetRawKeyState ( 40 ))
	SetSpritePosition ( bigjow , GetSpriteX ( bigjow ) + 0 * 3 , GetSpriteY ( bigjow ) + 3 * 3 ) 
EndIf
    
    if ( GetSpriteX ( bigjow ) < 520 )
        SetSpriteX ( bigjow, 520 )
    endif


    if ( GetSpriteX ( bigjow ) > 820 )
        SetSpriteX ( bigjow, 820 )
    endif


    if ( GetSpriteY ( bigjow ) < 50 )
        SetSpriteY ( bigjow , 50 )
    endif


    if ( GetSpriteY ( bigjow ) > 560 )
        SetSpriteY ( bigjow , 560 )
    endif
    
    
    //tiroroy
    if(GetRawKeyState (32) = 1 and pei=0)
		tx= GetSpriteX(roy)
		ty=GetSpriteY(roy)
		SetSpritePosition(tirodoroy,tx,ty)
		SetSpriteVisible(tirodoroy,1)

		pei=1
	endif
	
	//Mover Bala roy
	if(pei=1)
		tx=tx+20
		SetSpritePosition(tirodoroy,tx+220,ty+65)
	endif
	
	//Se chegar ao fim da tela 
	if(GetSpriteX(tirodoroy)>1050)
		pei=0
		SetSpritePosition(tirodoroy,2000,2000)
	endif
		
	//tiro bigjow
	if(GetRawKeyState( 13 )=1 and pei2=0)
		tx2=GetSpriteX(bigjow)
		ty2=GetSpriteY(bigjow)
		SetSpritePosition(tirodobig,tx2,ty2)
		SetSpriteVisible(tirodobig,1)
		pei2=1
		
	endif
	
	//MoveTiro bigjow
	if(pei2=1)
		tx2=tx2-20
		SetSpritePosition(tirodobig,tx2,ty2+65)
		endif
	if(GetSpriteX(tirodobig)<1)
		pei2=0
	SetSpritePosition(tirodobig,10000,10000)
	endif
	
//colisao
//Roy levando tiro
if GetSpriteCollision(roy,tirodobig)=1
	
	SetSpritePosition(tirodobig,1000,1000)
	SetSpriteVisible(tirodobig,0)
	pei2=0
	
	//vidaroy
		if(controlavidaroy = 0)
			
			SetTextVisible(vida3roy,0)
			SetTextVisible(vida2roy,1)
			vidaroy=2
			controlavidaroy=controlavidaroy+ 1
		//endif
		elseif(controlavidaroy = 1)
			//PlaySound(nassim)
			SetTextVisible(vida2roy,0)
			SetTextVisible(vida1roy,1)
			vidaroy=1
				controlavidaroy=controlavidaroy+ 1
		//endif
		
		elseif(controlavidaroy = 2)
			//PlaySound(carregado)
			SetTextVisible(vida1roy,0)
			SetTextVisible(vida0roy,1)
			vidaroy=0
			
		endif
		
		if(vidaroy=0)
			
		inicio = 1
		vidabigjow = 3
		vidaroy = 3
		controlavidaroy=0
		controlavidabig=0
		SetTextVisible(vida2roy,0)
		SetTextVisible(vida1roy,0)
		SetTextVisible(vida0roy,0)
		SetTextVisible(vida3roy,1)
		
		SetTextVisible(vida1big,0)
		SetTextVisible(vida2big,0)
		SetTextVisible(vida0big,0)
		SetTextVisible(vida3big,1)	
		
		telabigvenceu()
		
			
		endif
	
		
endif
//colisao entre bigjow e bala
if GetSpriteCollision(bigjow,tirodoroy)=1
	
	SetSpritePosition(tirodoroy,1000,1000)
	SetSpriteVisible(tirodoroy,0)
	pei=0
	
	//vidabigjow
		if(controlavidabig = 0)
			
			SetTextVisible(vida3big,0)
			SetTextVisible(vida2big,1)
			vidabigjow=2
			controlavidabig= 1
		//endif
		elseif(controlavidabig = 1)
			
			SetTextVisible(vida2big,0)
			SetTextVisible(vida1big,1)
			vidabigjow=1
			controlavidabig=2
		//endif
		elseif(controlavidabig = 2)
			
			SetTextVisible(vida1big,0)
			SetTextVisible(vida0big,1)
			vidabigjow=0
			
			
		endif
		
		if(vidabigjow=0)
			
			inicio= 1
			vidabigjow= 3
			vidaroy= 3
			controlavidaroy=0
			controlavidabig=0
			
			SetTextVisible(vida1big,0)
			SetTextVisible(vida2big,0)
			SetTextVisible(vida0big,0)
			SetTextVisible(vida3big,1)
			
			SetTextVisible(vida2roy,0)
			SetTextVisible(vida1roy,0)
			SetTextVisible(vida0roy,0)
			SetTextVisible(vida3roy,1)	
			
			telaroyvenceu()
			
		endif
	
endif


//temporizador

	if(GetSeconds ( ) = Time + 1)
		SetTextVisible(temp3,1)
		vidaroy=3
		vidabigjow=3
		SetTextVisible(vida2roy,0)
		SetTextVisible(vida1roy,0)
		SetTextVisible(vida0roy,0)
		SetTextVisible(vida3roy,1)
		
		SetTextVisible(vida1big,0)
		SetTextVisible(vida2big,0)
		SetTextVisible(vida0big,0)
		SetTextVisible(vida3big,1)
		SetSpriteVisible(tirodoroy,0)
		SetSpriteVisible(tirodobig,0)
		pei=2
		pei2=2

	endif
	
	if(GetSeconds ( ) = Time + 2)
		SetTextVisible(temp3,0)
		SetTextVisible(temp2,1)
		pei=2
		pei2=2
	endif
	
	if(GetSeconds ( ) = Time + 3)
		SetTextVisible(temp2,0)
		SetTextVisible(temp1,1)
	endif
	if(GetSeconds()= Time + 4)
	SetTextVisible(temp1,0)
	SetTextVisible(go,1)
	pei=2
	pei2=2
	endif
	
	if(GetSeconds()= time + 5)
		SetTextVisible(go,0)
		vidaroy = 3
		vidabigjow = 3
		SetTextVisible(vida2roy,0)
		SetTextVisible(vida1roy,0)
		SetTextVisible(vida0roy,0)
		SetTextVisible(vida3roy,1)
		
		SetTextVisible(vida1big,0)
		SetTextVisible(vida2big,0)
		SetTextVisible(vida0big,0)
		SetTextVisible(vida3big,1)
		pei=0
		pei2=0
		SetSpritePosition(tirodoroy,-100,-100)
		SetSpriteSize(tirodoroy,15,15)
		SetSpritePosition(tirodobig,2000,2000)
		SetSpriteSize(tirodobig,15,15)
	endif

    Sync()
loop
