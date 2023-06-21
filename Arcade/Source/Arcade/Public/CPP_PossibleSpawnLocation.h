// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "Engine/TargetPoint.h"
#include "CPP_PossibleSpawnLocation.generated.h"

UCLASS()
class ARCADE_API ACPP_PossibleSpawnLocation : public ATargetPoint
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ACPP_PossibleSpawnLocation();
	
	UPROPERTY(VisibleAnyWhere)
	class USceneComponent * transform_;

	
};
