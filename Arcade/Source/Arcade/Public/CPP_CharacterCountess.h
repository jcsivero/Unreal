// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Character.h"
#include "CPP_CharacterCountess.generated.h"

UCLASS()
class ARCADE_API ACPP_CharacterCountess : public ACharacter
{
	GENERATED_BODY()

	/** Camera boom positioning the camera behind the character */
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Camera, meta = (AllowPrivateAccess = "true"))
	class USpringArmComponent * CameraBoom;

	/** Follow camera */
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Camera, meta = (AllowPrivateAccess = "true"))
	class UCameraComponent * FollowCamera;

public:

	// Sets default values for this character's properties
	ACPP_CharacterCountess();

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Fight, meta = (AllowPrivateAccess = "true"))
		bool bFightSoft_;

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Fight, meta = (AllowPrivateAccess = "true"))
		bool bFightHard_;

	UPROPERTY(EditAnyWhere, BlueprintReadWrite, Category = Fight, meta = (AllowPrivateAccess = "true"))
	float life_ = 100;

	UPROPERTY(EditAnyWhere, BlueprintReadWrite, Category = Fight, meta = (AllowPrivateAccess = "true"))
	float damage_ = 25;

	UPROPERTY(VisibleAnywhere, BlueprintReadWrite, Category = Overlap)
		AActor* actorOverlap_;

	UPROPERTY(VisibleAnywhere, BlueprintReadWrite, Category = Overlap, meta = (AllowPrivateAccess = "true"))
		bool bOverlap_;
protected:
	/** Called for forwards/backward input */
	void MoveForward(float Value);

	/** Called for side to side input */
	void MoveRight(float Value);

	void FightSoft();
	void FightHard();

	/** 
	 * Called via input to turn at a given rate. 
	 * @param Rate	This is a normalized rate, i.e. 1.0 means 100% of desired turn rate
	 */
	void TurnAtRate(float Rate);

	/**
	 * Called via input to turn look up/down at a given rate. 
	 * @param Rate	This is a normalized rate, i.e. 1.0 means 100% of desired turn rate
	 */
	void LookUpAtRate(float Rate);

	/** Handler for when a touch input begins. */
	void TouchStarted(ETouchIndex::Type FingerIndex, FVector Location);

	/** Handler for when a touch input stops. */
	void TouchStopped(ETouchIndex::Type FingerIndex, FVector Location);


	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	UFUNCTION(BlueprintCallable)
	float Angle(FVector v1, FVector v2); ///calcula el ángulo entre dos vectores
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	// Called to bind functionality to input
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;
	};

