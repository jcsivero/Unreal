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

