// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "CPP_Enemies.generated.h"


UCLASS()
class ARCADE_API ACPP_Enemies : public ACharacter
{
	GENERATED_BODY()

public:
	
	UPROPERTY(VisibleAnywhere, BlueprintReadWrite, Category = Fight, meta = (AllowPrivateAccess = "true"))
		bool bFightSoft_;

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Fight, meta = (AllowPrivateAccess = "true"))
		bool bFightHard_;

	UPROPERTY(VisibleAnywhere, BlueprintReadWrite, Category = Overlap, meta = (AllowPrivateAccess = "true"))
		bool bOverlap_;
	
	UPROPERTY(VisibleAnywhere, BlueprintReadWrite, Category = Fight)
		bool applyDamage_ = false;

	UPROPERTY(VisibleAnywhere, BlueprintReadWrite, Category = Overlap, meta = (AllowPrivateAccess = "true"))
		AActor* actorOverlap_;

	UPROPERTY(EditAnyWhere, BlueprintReadWrite, Category = Fight, meta = (AllowPrivateAccess = "true"))
	float life_ = 1;

	UPROPERTY(EditAnyWhere, BlueprintReadWrite, Category = Fight, meta = (AllowPrivateAccess = "true"))
	float damage_ = 0.1;
	
public:

	UFUNCTION(BlueprintCallable)
	float Angle(FVector v1, FVector v2); ///calcula el ángulo entre dos vectores

	UFUNCTION(BlueprintNativeEvent, BlueprintCallable)
	void UpdateWidget();


public:


	// Sets default values for this character's properties
	ACPP_Enemies();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	

	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	// Called to bind functionality to input
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;

};
