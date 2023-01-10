// Fill out your copyright notice in the Description page of Project Settings.


#include "CPP_OrcoEnemy.h"
#include "CPP_CharacterCountess.h"

ACPP_OrcoEnemy::ACPP_OrcoEnemy()
{
	
	PrimaryActorTick.bCanEverTick = true;
}

void ACPP_OrcoEnemy::BeginPlay()
{
	Super::BeginPlay();
	OnActorBeginOverlap.AddDynamic(this, &ACPP_OrcoEnemy::OnOverlap);
	//OnActorHit.AddDynamic(this, &ACPP_OrcoEnemy::OnOverlap);
	
}

void ACPP_OrcoEnemy::OnOverlap(AActor* me, AActor* other)
{
	
	ACPP_CharacterCountess *  draft = Cast<ACPP_CharacterCountess>(other);
	if (draft != nullptr)
	{
		if ((draft->bFightHard_) || (draft->bFightSoft_))
		{
			me->Destroy();
		}
		
	}
		
}

/*void AMyActor::BeginPlay()
{
	Super::BeginPlay();

	UPrimitiveComponent* AnyComponent = ...;
	// AnyComponent puede ser un BoxComponent,
	// SphereComponent, CapsuleComponent,
	// StaticMeshComponent y, en definitiva,
	// cualquier componente que herede de PrimitiveComponent

	AnyComponent->bGenerateOverlapEvents = true;
	AnyComponent->OnComponentBeginOverlap.AddDynamic(this, &AMyActor::OnCustomEvent_BeginOverlap);

	AnyComponent->SetNotifyRigidBodyCollision(true); // Simulation Generate Hit Events
	AnyComponent->OnComponentHit.AddDynamic(this, &AMyActor::OnCustomEvent_OnHit);
}

void AMyActor::OnCustomEvent_OnHit(UPrimitiveComponent* HitComponent, AActor* OtherActor, UPrimitiveComponent* OtherComp, FVector NormalImpulse, const FHitResult& Hit)
{

}

void AMyActor::OnCustomEvent_BeginOverlap(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult)
{

}*/