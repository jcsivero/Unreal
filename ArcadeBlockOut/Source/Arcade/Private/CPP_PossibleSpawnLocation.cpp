// Fill out your copyright notice in the Description page of Project Settings.


#include "CPP_PossibleSpawnLocation.h"

// Sets default values
ACPP_PossibleSpawnLocation::ACPP_PossibleSpawnLocation()
{
    transform_ = CreateDefaultSubobject<USceneComponent>(TEXT("LocationToPossibleSpawn"));
    transform_-> SetupAttachment(RootComponent);
    
    
}


