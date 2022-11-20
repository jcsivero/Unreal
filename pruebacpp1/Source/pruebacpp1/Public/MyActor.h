// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "MyActor.generated.h"


UCLASS()
class PRUEBACPP1_API AMyActor : public AActor
{
	GENERATED_BODY()
	
public:
	UPROPERTY(EditAnyWhere,Blueprintreadwrite)
	AActor * instanciateActor;

	UPROPERTY(EditAnyWhere,Blueprintreadwrite)
	UObject * instanciateObject;	

	UPROPERTY(EditAnyWhere,Blueprintreadwrite)
	TSubclassOf<AActor> instanciateUClassActor;

	UPROPERTY(EditAnyWhere,Blueprintreadwrite)	
	TSubclassOf<AMyActor> instanciateUClassObject;

	
	UPROPERTY(EditAnyWhere,Blueprintreadwrite)	
	UBlueprint * instanciateUBlueprint;

//	UPROPERTY(EditAnyWhere,Blueprintreadwrite)	
//	UBlueprint * instanciateUBlueprint2;

	UPROPERTY(EditAnyWhere,Blueprintreadwrite)	
	UClass * instanciateUClass;
	
	UPROPERTY(EditAnyWhere,Blueprintreadwrite)	
	TArray<AActor*> actors_;

public:	
	// Sets default values for this actor's properties
	AMyActor();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;
	
	template<class T>
	void FindAllActors(UWorld* World, TArray<T*>& Out);


	template<class T>
	void ShowAllActors(TArray<T*> &draft);

};


