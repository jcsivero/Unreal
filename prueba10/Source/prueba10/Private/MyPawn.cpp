// Fill out your copyright notice in the Description page of Project Settings.


#include "MyPawn.h"
#include "Components/StaticMeshComponent.h"
// Sets default values
AMyPawn::AMyPawn()
{
 	// Set this pawn to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;	
	myMesh = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("valor"));
}

// Called when the game starts or when spawned
void AMyPawn::BeginPlay()
{
	Super::BeginPlay();
	
}


void AMyPawn::PostEditChangeProperty(FPropertyChangedEvent& p)
{
	AActor::PostEditChangeProperty(p);
	puntos = velocidad * 2;
}

void AMyPawn::PostLoad()
{
	Super::PostLoad();
	puntos = velocidad * 2;
}

// Called every frame
void AMyPawn::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

// Called to bind functionality to input
void AMyPawn::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);

}

