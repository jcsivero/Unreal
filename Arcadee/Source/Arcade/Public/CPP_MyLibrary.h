// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UObject/NoExportTypes.h"
#include "EngineUtils.h"
#include "GenericPlatform/GenericPlatform.h"
#include "CPP_MyLibrary.generated.h"

class AActor;
/**
 * 
 */
UCLASS()
class ARCADE_API UCPP_MyLibrary : public UObject
{
	GENERATED_BODY()
public:
	


	UCPP_MyLibrary();

	template<class T>
	static TMap<FString, T*>* FindAllActors(UWorld* world, FName tag);

	template<class T>
	static void ShowAllUObjects(TArray<T*>& draft);
	

	//UFUNCTION(BlueprintCallable, Category = "MyLibrary")
	//static void FindAllActors(UWorld* world, UClass* uclass, TArray<AActor*>& out);
	
	UFUNCTION(BlueprintCallable, Category = "MyLibrary")		
	static void ShowAllActors(TArray<AActor*>& draft);
	
	//UFUNCTION(BlueprintCallable, Category = "MyLibrary")
	//static AActor* Find(const TCHAR* name);
	
	
};

