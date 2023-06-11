// Fill out your copyright notice in the Description page of Project Settings.


#include "CPP_MyGameMode.h"
#include "UObject/ConstructorHelpers.h"
#include "CPP_PossibleSpawnLocation.h"
#include "Kismet/GameplayStatics.h"
#include "CPP_Enemies.h"

ACPP_MyGameMode::ACPP_MyGameMode()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;
	// set default pawn class to our Blueprinted character
	//static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	/*static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/BPD/BPD_CharacterCountess"));

	if (PlayerPawnBPClass.Class != NULL) 
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;

	}*/
	

	static ConstructorHelpers::FObjectFinder<UBlueprint> PlayerPawnBPObject(TEXT("Blueprint'/Game/BPD/BPD_CharacterCountess'"));
	if (PlayerPawnBPObject.Object != NULL)
	{
		DefaultPawnClass = PlayerPawnBPObject.Object->GeneratedClass;
	}

	
	
	
}



void ACPP_MyGameMode::BeginPlay()
{	
	Super::BeginPlay();

	AActor* draft;
	int enemy;
	
	FindAllActors(); ///localizo todos los actores en escena, a partir de aquí, todos los nuevos actores se crearan y destruirán con SpawnAndupdateActors(AActor * actor) y DestroyAndupdateActors(AActor * actor);
	//para mantener los índices actualizados


	possibleSpawnLocation_ = FindActorsByClass<ACPP_PossibleSpawnLocation>(TEXT("CPP_PossibleSpawnLocation")); ///Almaceno todas las localizaciones donde spawnear actores.

	/// <summary>
	/// Primero Spawner del Player de forma aleatoria
	/// </summary>
	/// 

	
	//if (!playerIsSpawnedByDefault_)
//	{
	
		int excludeSpawnLocation = FMath::FRandRange(0.0f, possibleSpawnLocation_.Num()); ///localización del Player que será excluida de los spawner aleatorios de los enemigos
		locationInitialPlayer_ = possibleSpawnLocation_[excludeSpawnLocation]->GetTransform();
		draft = FindActorByName(TEXT("BPD_CharacterCountess"));
		if (draft != nullptr)
		{
			UE_LOG(LogTemp, Warning, TEXT("encontrado"));
			draft->SetActorTransform(locationInitialPlayer_);
		}
			
		else
		{
			UE_LOG(LogTemp, Warning, TEXT("NO encontrado"));
		}
			

		possibleSpawnLocation_.RemoveAt(excludeSpawnLocation); ///elimino la localización donde está el player, para que no cuenta en los posibles spawn de enemigos.

//	}
	

	for (int i = 0; i < possibleSpawnLocation_.Num(); i++)
	{
		
		enemy = FMath::FRandRange(0.0f, enemies_.Num());
								
		FActorSpawnParameters paramSpawn;
		paramSpawn.SpawnCollisionHandlingOverride = ESpawnActorCollisionHandlingMethod::AdjustIfPossibleButAlwaysSpawn;
 		draft = GetWorld()->SpawnActor<AActor>(enemies_[enemy], possibleSpawnLocation_[i]->GetTransform(),paramSpawn); ///Spawned en las ubicaciones seleccionados de forma aleatoria
		SpawnAndupdateActors(draft); ///actualizo listas de Actores.


	}
	



	//ShowAllActors();
	//ShowAllActorsByClass(TEXT("CPP_PossibleSpawnLocation"));
	
	//AActor* draft = FindActorByName(TEXT("DirectionalLight"));

	//if (draft != nullptr)
		//UE_LOG(LogTemp, Warning, TEXT("Encontrado objeto directioanl light %s / %s"), *draft->GetName(),*draft->GetActorNameOrLabel());

	//TArray<ACPP_PossibleSpawnLocation *> draft2 = FindActorsByClass<ACPP_PossibleSpawnLocation>(TEXT("CPP_PossibleSpawnLocation"));
	//ShowTheseActors<ACPP_PossibleSpawnLocation>(draft2);
	
	//FindActorByName()
	//auto value = UCPP_MyLibrary::Find(TEXT("CPP_PossibleSpawnLocation1"));
/*	auto value = FindObject<ACPP_PossibleSpawnLocation>(GetWorld(), TEXT("CPP_PossibleSpawnLocation_1"));
	if (value != nullptr)
	  GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Orange, FString::Printf(TEXT("Encontrado CPP_PossibleSpawnLocation1 posicion: %s"), *value->GetActorLocation().ToString()));
	else

		GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Orange, FString::Printf(TEXT("no Encontrado CPP_PossibleSpawnLocation_1")));
		*/

	//UCPP_MyLibrary * myLibrary;
	//myLibrary = NewObject<UCPP_MyLibrary>(this, UCPP_MyLibrary::StaticClass());
	
	//TSharedPtr<TMap<FString,AActor* >> actors =	
	//TMap<FString, AActor*> * actors =myLibrary->FindAllActors(GetWorld(), FName(TEXT("a")));
	//TMap<FString, AActor*>* actors = UCPP_MyLibrary::FindAllActors(GetWorld(), FName(TEXT("a")));
	//delete actors;
	//UCPP_MyLibrary::ShowAllActors(actors);
}
/// <summary>
/// Esta función elimina el contenido anterior.
/// </summary>
void ACPP_MyGameMode::FindAllActors()
{
	TArray<AActor*> draft;
	UGameplayStatics::GetAllActorsOfClass(GetWorld(), AActor::StaticClass(), draft); ///Localizo todos los actores.
	
	allActors_.Empty(); //me aseguro de trabajar con conjuntos vacíos.
	actorsByName_.Empty();
	actorsByClass_.Empty();
	actorsByTag_.Empty();

	for (int i = 0; i < draft.Num(); i++)
	{		
		actorsByName_.Add(draft[i]->GetActorNameOrLabel(), draft[i]); //Actualizo mapa nombre / actor

		//actulizo map NombredeClase / conjunto actores
		actorsByClass_.FindOrAdd(draft[i]->GetClass()->GetName()).Add(draft[i]);
		
			
		
		//actulizo map Nombredeetiqueta / conjunto actores
		if (!draft[i]->Tags.IsEmpty())
			actorsByTag_.FindOrAdd(draft[i]->Tags[0].ToString()).Add(draft[i]);

		allActors_.Add(draft[i]); ///lo convierto en un set ya que será más fácil de administrar y  más rápido en continuas actualizaciones.
	}
		


	
}
void ACPP_MyGameMode::ShowAllActors()
{
	TArray<AActor *> draft = allActors_.Array();

	for (int i = 0; i < allActors_.Num(); i++)
	{
		UE_LOG(LogTemp, Warning, TEXT("------------------------------------------------------------------------- %d"), i);
		UE_LOG(LogTemp, Warning, TEXT("Nombre ID Objeto %s"), *draft[i]->GetName());
		UE_LOG(LogTemp, Warning, TEXT("Nombre DisplayName Objeto %s"), *draft[i]->GetActorNameOrLabel());
		UE_LOG(LogTemp, Warning, TEXT("Nombre Clase Objeto %s"), *draft[i]->GetClass()->GetName());
		//UE_LOG(LogTemp, Warning, TEXT("Nombre Uclass or UBlueprintGeneratedClass %s"), *allActors_[i]->GetClass()->GetClass()->GetName());

	}
}

void ACPP_MyGameMode::ShowAllActorsByClass(FString clas)
{	
	
	if (actorsByClass_.Find(clas) != nullptr)
	{
		TArray<AActor*> draft;
		draft = actorsByClass_[clas].Array();
		UE_LOG(LogTemp, Warning, TEXT("Numero de objetos de la clase %s: %d"),*clas, draft.Num());

		if (!draft.IsEmpty())
		{
			for (int i = 0; i < draft.Num(); i++)
			{
				UE_LOG(LogTemp, Warning, TEXT("Nombre ID Objeto %s"), *draft[i]->GetActorNameOrLabel());
			}


		}

	}

}

template<class T>
void ACPP_MyGameMode::ShowTheseActors(TArray<T*> & draft)
{
		if (!draft.IsEmpty())
		{
			for (int i = 0; i < draft.Num(); i++)
			{
				UE_LOG(LogTemp, Warning, TEXT("Nombre ID Objeto %s / Clase %s"), *draft[i]->GetActorNameOrLabel(), *draft[i]->GetClass()->GetName());
			}


		}

}
void ACPP_MyGameMode::ShowAllActorsByTags(FString tag)
{
	if (actorsByTag_.Find(tag) != nullptr)
	{
		TArray<AActor*> draft;
		draft = actorsByTag_[tag].Array();
		
		UE_LOG(LogTemp, Warning, TEXT("Número de objetos con la etiqueta %s:  %d"),*tag, draft.Num());

		if (!draft.IsEmpty())
		{
			for (int i = 0; i < draft.Num(); i++)
			{
				UE_LOG(LogTemp, Warning, TEXT("Nombre ID Objeto %s"), *draft[i]->GetActorNameOrLabel());
			}


		}

	}
}



void ACPP_MyGameMode::DestroyAndupdateActors(AActor* actor)
{

	if (actor == nullptr)
	{
		UE_LOG(LogTemp, Warning, TEXT("Actor es nullpointer"));
	}
	else

	{
		if (allActors_.Contains(actor))
			allActors_.Remove(actor);


		if (actorsByClass_.Contains(actor->GetClass()->GetName()))

		{
			if (actorsByClass_[actor->GetClass()->GetName()].Contains(actor))
				actorsByClass_[actor->GetClass()->GetName()].Remove(actor);

		}

		if (!actor->Tags.IsEmpty())
		{
			if (actorsByClass_.Contains(actor->Tags[0].ToString()))
			{
				if (actorsByClass_[actor->Tags[0].ToString()].Contains(actor))
					actorsByClass_[actor->Tags[0].ToString()].Remove(actor);
			}

		}

	}

}

void ACPP_MyGameMode::SpawnAndupdateActors(AActor*  actor)
{
	if (actor == nullptr)
	{
		UE_LOG(LogTemp, Warning, TEXT("Actor es nullpointer"));
	}
		
	else
	{
		allActors_.Add(actor);
		actorsByName_.Add(actor->GetActorNameOrLabel(), actor); //Actualizo mapa nombre / actor
		actorsByClass_.FindOrAdd(actor->GetClass()->GetName()).Add(actor);

	//actulizo map Nombredeetiqueta / conjunto actores
	if (!actor->Tags.IsEmpty())
		actorsByTag_.FindOrAdd(actor->Tags[0].ToString()).Add(actor);


	}
		


}
