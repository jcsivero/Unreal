// Fill out your copyright notice in the Description page of Project Settings.


#include "CPP_Canon.h"
#include "Components/staticmeshcomponent.h"
#include "UObject/ConstructorHelpers.h"
#include "Engine/EngineTypes.h"
// Sets default values
ACPP_Canon::ACPP_Canon()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	turret = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("turrent"));
	SetRootComponent(turret);

	sphere = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("sphere"));
	sphere->AttachToComponent(turret,FAttachmentTransformRules(EAttachmentRule::KeepRelative,true));
	
	canon = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("canon"));
	canon->AttachToComponent(sphere,FAttachmentTransformRules(EAttachmentRule::SnapToTarget,false));
	
}

// Called when the game starts or when spawned
void ACPP_Canon::BeginPlay()
{
	Super::BeginPlay();
	
}

// Called every frame
void ACPP_Canon::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

