// Copyright Epic Games, Inc. All Rights Reserved.

#include "Landscapev1GameMode.h"
#include "Landscapev1Character.h"
#include "UObject/ConstructorHelpers.h"

ALandscapev1GameMode::ALandscapev1GameMode()
	: Super()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnClassFinder(TEXT("/Game/FirstPerson/Blueprints/BP_FirstPersonCharacter"));
	DefaultPawnClass = PlayerPawnClassFinder.Class;

}
