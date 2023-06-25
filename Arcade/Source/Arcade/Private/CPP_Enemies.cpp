// Fill out your copyright notice in the Description page of Project Settings.


#include "CPP_Enemies.h"

// Sets default values
ACPP_Enemies::ACPP_Enemies()
{
 	// Set this character to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

}

// Called when the game starts or when spawned
void ACPP_Enemies::BeginPlay()
{
	Super::BeginPlay();
	
}

float ACPP_Enemies::Angle(FVector v1, FVector v2)
{
	v1.Z = 0;
	v2.Z = 0;
	float AngleCosine = FVector::DotProduct(v1, v2) / (v1.Size() * v2.Size());
	float AngleRadians = FMath::Acos(AngleCosine);
	return FMath::RadiansToDegrees(AngleRadians);
}


void ACPP_Enemies::UpdateWidget_Implementation()
{
}


// Called every frame
void ACPP_Enemies::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

// Called to bind functionality to input
void ACPP_Enemies::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);

}

