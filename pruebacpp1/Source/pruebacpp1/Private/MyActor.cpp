// Fill out your copyright notice in the Description page of Project Settings.


#include "MyActor.h"
#include "stdio.h"
#include "Templates/SubclassOf.h"
#include "EngineUtils.h"
#include "Engine/World.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
AMyActor::AMyActor()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
	
	
	//instanciateActor.getcl

}

// Called when the game starts or when spawned
void AMyActor::BeginPlay()
{
	Super::BeginPlay();
	//GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Orange, FString::Printf(TEXT("My Location is: %s"),* GetActorLocation().ToString()));
/*	GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Yellow, FString::Printf(TEXT("Mi nombre de clase es: %s"),* instanciateUClassActor->GetClass()->GetName()));
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es %s "), *instanciateUClassActor->GetClass()->GetName());	

	GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Yellow, FString::Printf(TEXT("Mi nombre de clase es: %s"),* instanciateUClassActor->GetName()));
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es %s "), *instanciateUClassActor->GetName());	
*/

	//instanciateUClassActor->GetClass()->GetName() 
	AActor * draf = GetWorld()->SpawnActor<AActor>(instanciateUClassActor);
	draf->SetActorLabel(TEXT("DESDE C++"));
//	AActor * draf = NewObject<AActor>(instanciateUClassActor);
//	
//static ConstructorHelpers::FObjectFinder<UBlueprint> ItemBlueprint(TEXT("Blueprint'/Game/Items/Blueprints/BP_ItemTest.BP_ItemTest'"));
//	Blueprint'/Game/BluePrints/BP_StaticMeshActor.BP_StaticMeshActor'
	UE_LOG(LogTemp, Warning, TEXT("--------------------------------------------------"));
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es %s "), *draf->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es %s "), *draf->GetClass()->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es %s "), *draf->GetActorNameOrLabel());
	//UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es nombre a mostrar  %s "), *draft->GetActorNameOrLabel());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es %s "), *instanciateUClassActor->GetName());		
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateUClassActor->GetClass()->GetName() %s "), *instanciateUClassActor->GetClass()->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateUClassActor->GetClass()->GetClass()->GetName() %s "), *instanciateUClassActor->GetClass()->GetClass()->GetClass()->GetName());	
	
	//UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es nombre a mostrar  %s "), *instanciatUClassActor->GetActorNameOrLabel());	
	
/*	UE_LOG(LogTemp, Warning, TEXT("--------------------------------------------------"));
	//UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es %s "), *draf->GetName());	
	//UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es nombre a mostrar  %s "), *draft->GetActorNameOrLabel());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es %s "), *instanciateUClassObject->GetName());		
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateUClassActor->GetClass()->GetName() %s "), *instanciateUClassObject->GetClass()->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateUClassActor->GetClass()->GetClass()->GetName() %s "), *instanciateUClassObject->GetClass()->GetClass()->GetClass()->GetName());	
**/	
	/// objeto instanciado

	UE_LOG(LogTemp, Warning, TEXT("--------------------------------------------------"));
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de ID único es instanciateActor->GetName() %s "), *instanciateActor->GetName());
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateActor->GetClass()->GetName() %s "), *instanciateActor->GetClass()->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateActor->GetClass()->GetClass()->GetName() %s "), *instanciateActor->GetClass()->GetClass()->GetName());			
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase es nombre a mostrar  %s "), *instanciateActor->GetActorNameOrLabel());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de tab es %s "), *instanciateActor->Tags[0].ToString());	

	//instanciateUClassActor.
	UE_LOG(LogTemp, Warning, TEXT("--------------------------------------------------"));
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de ID único es instanciateUBlueprint->GetName() %s "), *instanciateUBlueprint->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de ID único es instanciateUBlueprint->GetName() %s "), *instanciateUBlueprint->GeneratedClass->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de ID único es instanciateUBlueprint->GetName() %s "), *instanciateUBlueprint->GeneratedClass->GetClass()->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de ID único es instanciateUBlueprint->GetName() %s "), *instanciateUBlueprint->GeneratedClass.Get()->GetName());		
	UClass * valor = instanciateUBlueprint->GeneratedClass.Get();
	//UClass * valor =  instanciateUBlueprint->GeneratedClass;
	//UBlueprintGeneratedClass * valor2(valor);// = (UBlueprintGeneratedClass) valor;
	//valor->CreateComp
	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre devalor->GetName() es instanciateUBlueprint->GetName() %s "), *valor->GetName());	

	UE_LOG(LogTemp, Warning, TEXT("mi nombre de ID único es instanciateUBlueprint->GetName() %s "), *instanciateUBlueprint->GetBlueprintClass()->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de ID único es instanciateUBlueprint->GetName() %s "), *instanciateUBlueprint->GetBlueprintClass()->GetClass()->GetName());
	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateUBlueprint->GetClass()->GetName() %s "), *instanciateUBlueprint->GetClass()->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateUBlueprintr->GetClass()->GetClass()->GetName() %s "), *instanciateUBlueprint->GetClass()->GetClass()->GetName());			
/*
	UE_LOG(LogTemp, Warning, TEXT("--------------------------------------------------"));
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de ID único es instanciateUBlueprint2->GetName() %s "), *instanciateUBlueprint2->GetName());	
	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateUBlueprint2->GetClass()->GetName() %s "), *instanciateUBlueprint2->GetClass()->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateUBlueprint2->GetClass()->GetClass()->GetName() %s "), *instanciateUBlueprint2->GetClass()->GetClass()->GetName());			
*/
	UE_LOG(LogTemp, Warning, TEXT("--------------------------------------------------"));
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de ID único es instanciateUClass->GetName() %s "), *instanciateUClass->GetName());
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateUClass->GetClass()->GetName() %s "), *instanciateUClass->GetClass()->GetName());	
	UE_LOG(LogTemp, Warning, TEXT("mi nombre de clase instanciateUClass->GetClass()->GetClass()->GetName() %s "), *instanciateUClass->GetClass()->GetClass()->GetName());			

	
	// mostrar objetos instanciados
/*	for (TActorIterator<AMyActor> It(GetWorld()); It; ++It)
	{
        AMyActor* MyActor = *It;
		
			
	}*/

	//FindAllActors<AActor>(GetWorld(),actors_);
	UGameplayStatics::GetAllActorsOfClass(GetWorld(),AActor::StaticClass(),actors_);
	ShowAllActors<AActor>(actors_);
	
	/*AActor* myActor = FindObject<AActor>(nullptr, TEXT("/Script/Engine.Blueprint'/Game/BluePrints/BP_MyCharacter.BP_MyCharacter'"));
	if (myActor!= nullptr)
	{
		UE_LOG(LogTemp,Warning,TEXT("Encontrado %s"),*myActor->GetActorNameOrLabel());
		UE_LOG(LogTemp,Warning,TEXT("Encontrado %s"),*myActor->GetName());
	}
		
	else
		{
			UE_LOG(LogTemp,Warning,TEXT("No Encontrado"));
		}*/

	
		
} 

// Called every frame
void AMyActor::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
	

}

template<class T>
void AMyActor::FindAllActors(UWorld* World, TArray<T*>& Out)
{
	if (!Out.IsEmpty())
		Out.Empty(); //si no está vacío, vacio el array
	
	
	for (TObjectIterator<T> It; It; ++It)
	{
		Out.Add(*It);
	}
}

template<class T>
void AMyActor::ShowAllActors(TArray<T*>  &draft)
{
	for (int i=0; i < draft.Num(); i++)
	{
		UE_LOG(LogTemp,Warning,TEXT("------------------------------------------------------------------------- %d"),i);
		UE_LOG(LogTemp,Warning,TEXT("Nombre ID Objeto %s"),*draft[i]->GetName());
		UE_LOG(LogTemp,Warning,TEXT("Nombre DisplayName Objeto %s"),*draft[i]->GetActorNameOrLabel());
		UE_LOG(LogTemp,Warning,TEXT("Nombre Clase Objeto %s"),*draft[i]->GetClass()->GetName());
		UE_LOG(LogTemp,Warning,TEXT("Nombre Uclass or UBlueprintGeneratedClass %s"),*draft[i]->GetClass()->GetClass()->GetName());

	}
}
