// Copyright Epic Games, Inc. All Rights Reserved.

#include "Animacion3dGameMode.h"
#include "Animacion3dCharacter.h"
#include "UObject/ConstructorHelpers.h"

AAnimacion3dGameMode::AAnimacion3dGameMode()
{
	// set default pawn class to our Blueprinted character
	//static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ParagonCountess/Characters/Heroes/Countess/CountessPlayerCharacter"));
	
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
	
	/*static ConstructorHelpers::FObjectFinder<UBlueprint> PlayerPawnBPObject(TEXT("Blueprint'/Game/ParagonCountess/Characters/Heroes/Countess/CountessPlayerCharacter.CountessPlayerCharacter'"));
	if (PlayerPawnBPObject.Object != NULL)
	{
		DefaultPawnClass = PlayerPawnBPObject.Object->GeneratedClass;
	}*/

}
