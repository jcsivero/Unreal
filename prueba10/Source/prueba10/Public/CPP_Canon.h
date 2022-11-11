// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "CPP_Canon.generated.h"

UCLASS(Blueprintable)
class PRUEBA10_API ACPP_Canon : public AActor
{
	GENERATED_BODY()
	
public:

	UPROPERTY(Editanywhere,Category = Componentes)
	UStaticMeshComponent* turret;

	UPROPERTY(Editanywhere, Category = Componentes)
		UStaticMeshComponent* sphere;

	UPROPERTY(Editanywhere, Category = Componentes)
		UStaticMeshComponent* canon;


public:	
	// Sets default values for this actor's properties
	ACPP_Canon();


protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

};
