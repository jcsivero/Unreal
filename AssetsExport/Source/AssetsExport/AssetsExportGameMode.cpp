// Copyright Epic Games, Inc. All Rights Reserved.

#include "AssetsExportGameMode.h"
#include "AssetsExportCharacter.h"
#include "UObject/ConstructorHelpers.h"

AAssetsExportGameMode::AAssetsExportGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
