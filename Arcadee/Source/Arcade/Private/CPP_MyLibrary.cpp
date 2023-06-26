// Fill out your copyright notice in the Description page of Project Settings.


#include "CPP_MyLibrary.h"
#include "Kismet/GameplayStatics.h"
#include "Engine/World.h"

class AActor;

UCPP_MyLibrary::UCPP_MyLibrary()
{

		
		
}
/*
template<class T>
void UCPP_MyLibrary::FindAllUObjects(TArray<T*>& out)
{
	if (!Out.IsEmpty())
		Out.Empty(); //si no está vacío, vacio el array


	for (TObjectIterator<T> It; It; ++It)
	{
		Out.Add(*It);
	}
}*/

template<class T>
TMap<FString, T *>*  UCPP_MyLibrary::FindAllActors(UWorld* world,FName tag)
{		
	TMap<FString, T*>  * actorsFounded = new TMap<FString, T*>();
	//TSharedPtr<TMap<FString, AActor*>> actorsFounded(new TMap<FString, AActor*>());
	TSharedPtr<int> valor;
	
	for (TActorIterator<T> It(world); It; ++It)
	{
		T * actor = *It;

//		if (tag.IsNone())
	//	{
		//	if (actor->ActorHasTag(tag))
			//{
		
				actorsFounded->Add(FString::Printf(TEXT("%s"),*actor->GetName()), actor);
				UE_LOG(LogTemp, Warning, TEXT("Nombre ID Objeto %s"), *actor->GetActorNameOrLabel());
				
				
		//	}
	///	}
	//	else
	//	{

	//	}
	}
	
	return actorsFounded;

	UGameplayStatics::GetAllActorsOfClass(world,uclass, out);


}

/*AActor* UCPP_MyLibrary::Find(const TCHAR* name)
{
	return  FindObject<AActor>(nullptr, name);
}*/

template<class T>
void UCPP_MyLibrary::ShowAllUObjects(TArray<T*>& draft)
{
	for (int i = 0; i < draft.Num(); i++)
	{
		UE_LOG(LogTemp, Warning, TEXT("------------------------------------------------------------------------- %d"), i);
		UE_LOG(LogTemp, Warning, TEXT("Nombre ID Objeto %s"), *draft[i]->GetName());
		UE_LOG(LogTemp, Warning, TEXT("Nombre DisplayName Objeto %s"), *draft[i]->GetActorNameOrLabel());
		UE_LOG(LogTemp, Warning, TEXT("Nombre Clase Objeto %s"), *draft[i]->GetClass()->GetName());
		UE_LOG(LogTemp, Warning, TEXT("Nombre Uclass or UBlueprintGeneratedClass %s"), *draft[i]->GetClass()->GetClass()->GetName());

	}
}

void UCPP_MyLibrary::ShowAllActors(TArray<AActor*>& draft)
{
	for (int i = 0; i < draft.Num(); i++)
	{
		UE_LOG(LogTemp, Warning, TEXT("------------------------------------------------------------------------- %d"), i);
		UE_LOG(LogTemp, Warning, TEXT("Nombre ID Objeto %s"), *draft[i]->GetName());
		UE_LOG(LogTemp, Warning, TEXT("Nombre DisplayName Objeto %s"), *draft[i]->GetActorNameOrLabel());
		UE_LOG(LogTemp, Warning, TEXT("Nombre Clase Objeto %s"), *draft[i]->GetClass()->GetName());
		UE_LOG(LogTemp, Warning, TEXT("Nombre Uclass or UBlueprintGeneratedClass %s"), *draft[i]->GetClass()->GetClass()->GetName());

	}
}