// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/GameModeBase.h"
#include "CPP_MyGameMode.generated.h"

/**
 * 
 */
DECLARE_DELEGATE(FStandardDelegateSignature)
//DECLARE_DELEGATE_OneParam(FOneParamDelegateSignature)
//DECLARE_DELEGATE_TwoParams(FTwoParamDelegateSignature)
//DECLARE_DELEGATE_RetVal()
//DECLARE_DELEGATE_RetVal_OneParam()

DECLARE_MULTICAST_DELEGATE(FStandardMulticastDelegateSignature)
//DECLARE_MULTICAST_DELEGATE_OneParam(FOneParamMulticastDelegateSignature)
UCLASS()
class ARCADE_API ACPP_MyGameMode: public AGameModeBase
{
	GENERATED_BODY()

public:
	
	/// <summary>
	/// Delegados
	/// </summary>
	FStandardDelegateSignature evento;

	/// <summary>
	/// Propiedades para Enemigos
	/// </summary>
	
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemies")
		TArray<TSubclassOf<UBlueprint>> enemies2_;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemies")
		UClass * enemies3_;
	
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemies")
		UBlueprint * enemies4_;
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemies")
		UStaticMesh* enemies5_;

	UPROPERTY(VisibleAnyWhere, BlueprintReadOnly, Category = " Enemies")
	TArray<class ACPP_PossibleSpawnLocation *> possibleSpawnLocation_;



	/// <summary>
	/// Actpres actualmente en el nivel activo.
	/// </summary>
	/// 
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemies")
	TArray<TSubclassOf<class ACPP_Enemies>> enemies_;

	UPROPERTY(VisibleAnyWhere, BlueprintReadOnly, Category = "ActorsSpawned")
	TSet<AActor *> allActors_;

	UPROPERTY(VisibleAnyWhere, BlueprintReadOnly, Category = "ActorsSpawned")
	TMap<FString, AActor*> actorsByName_;

	UPROPERTY(VisibleAnyWhere, BlueprintReadOnly, Category = "ActorsSpawned")
	FTransform locationInitialPlayer_;

	TMap<FString, TSet<AActor*>> actorsByTag_;	
	TMap<FString, TSet<AActor*>> actorsByClass_;


	/// <summary>
	/// Funciones
	/// </summary>
	ACPP_MyGameMode(); //constructor por defecto
	
	void FindAllActors();
	void ShowAllActors();
	void ShowAllActorsByTags(FString tag);
	void ShowAllActorsByClass(FString clas);

	template<class T>
	void ShowTheseActors(TArray<T*>& draft);


	void DestroyAndupdateActors(AActor* actor);
	void SpawnAndupdateActors(AActor* actor);

	AActor * FindActorByName(FString name);
	
	TArray<AActor*> FindActorsByTag(FString tag);

	template<class T>
	TArray<T*> FindActorsByClass(FString clas);

protected:
	virtual void BeginPlay() override;
	
	
};

inline AActor * ACPP_MyGameMode::FindActorByName(FString name)
{
	if (actorsByName_.Contains(name))
		return actorsByName_[name];
	else
		return nullptr;
}

inline TArray<AActor*> ACPP_MyGameMode::FindActorsByTag(FString tag)
{
	if (actorsByTag_.Find(tag) != nullptr)
		return actorsByTag_[tag].Array();
	else
		return TArray<AActor*>();
}

template<class T>
inline TArray<T*> ACPP_MyGameMode::FindActorsByClass(FString clas)
{
	TArray<T*> actorsCasted;

	if (actorsByClass_.Find(clas) != nullptr)
	{
		// actorsCasted = Cast<T*>(actorsByClass_[clas].Array());
		TArray<AActor*> draft = actorsByClass_[clas].Array();

		for (int i = 0; i < draft.Num(); i++)
		{
			T* casted = (T*)(draft[i]);
			actorsCasted.Add(casted);
		}
			

	}
	
	return actorsCasted;
	
	
}
