// Fill out your copyright notice in the Description page of Project Settings.


#include "CPP_CharacterCountess.h"
#include "Camera/CameraComponent.h"
#include "Components/CapsuleComponent.h"
#include "Components/InputComponent.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "GameFramework/Controller.h"
#include "GameFramework/SpringArmComponent.h"


// Sets default values
ACPP_CharacterCountess::ACPP_CharacterCountess()
{
 	bUseControllerRotationPitch = false;
	bUseControllerRotationRoll = false;
	bUseControllerRotationYaw = false;
	bFightSoft_ = false;
	bFightHard_ = false;
	// Set this character to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
	// Create a camera boom (pulls in towards the player if there is a collision)
	CameraBoom = CreateDefaultSubobject<USpringArmComponent>(TEXT("CameraBoom"));
	CameraBoom->SetupAttachment(RootComponent);
	CameraBoom->TargetArmLength = 400.0f; // The camera follows at this distance behind the character	
	CameraBoom->bUsePawnControlRotation = true; // Rotate the arm based on the controller

	// Create a follow camera
	FollowCamera = CreateDefaultSubobject<UCameraComponent>(TEXT("FollowCamera"));
	FollowCamera->SetupAttachment(CameraBoom, USpringArmComponent::SocketName); // Attach the camera to the end of the boom and let the boom adjust to match the controller orientation
	FollowCamera->bUsePawnControlRotation = false; // Camera does not rotate relative to arm
	
	GetCharacterMovement()->bOrientRotationToMovement = true;
}

// Called when the game starts or when spawned
void ACPP_CharacterCountess::BeginPlay()
{
	Super::BeginPlay();
		
}



float ACPP_CharacterCountess::Angle(FVector v1, FVector v2)
{
	float AngleCosine = FVector::DotProduct(v1, v2) / (v1.Size() * v2.Size());
	float AngleRadians = FMath::Acos(AngleCosine);
	return FMath::RadiansToDegrees(AngleRadians);
	
}

// Called every frame
void ACPP_CharacterCountess::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);


}

// Called to bind functionality to input
void ACPP_CharacterCountess::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
//	Super::SetupPlayerInputComponent(PlayerInputComponent);
	// Set up gameplay key bindings
	check(PlayerInputComponent);
	
	PlayerInputComponent->BindAction("Jump", IE_Pressed, this, &ACharacter::Jump);
	PlayerInputComponent->BindAction("Jump", IE_Released, this, &ACharacter::StopJumping);
	
	PlayerInputComponent->BindAxis("Move Forward / Backward", this, &ACPP_CharacterCountess::MoveForward);
	PlayerInputComponent->BindAxis("Move Right / Left", this, &ACPP_CharacterCountess::MoveRight);

	// We have 2 versions of the rotation bindings to handle different kinds of devices differently
	// "turn" handles devices that provide an absolute delta, such as a mouse.
	// "turnrate" is for devices that we choose to treat as a rate of change, such as an analog joystick
	PlayerInputComponent->BindAxis("Turn Right / Left Mouse", this, &APawn::AddControllerYawInput);
	//PlayerInputComponent->BindAxis("Turn Right / Left Gamepad", this, &AAnimacion3dCharacter::TurnAtRate);
	PlayerInputComponent->BindAxis("Look Up / Down Mouse", this, &APawn::AddControllerPitchInput);
	//PlayerInputComponent->BindAxis("Look Up / Down Gamepad", this, &AAnimacion3dCharacter::LookUpAtRate);
	
	PlayerInputComponent->BindAction("FightSoft",IE_Pressed, this, &ACPP_CharacterCountess::FightSoft);
	PlayerInputComponent->BindAction("FightSoft", IE_Released, this, &ACPP_CharacterCountess::FightSoft);
	PlayerInputComponent->BindAction("FightHard", IE_Pressed, this, &ACPP_CharacterCountess::FightHard);
	PlayerInputComponent->BindAction("FightHard", IE_Released, this, &ACPP_CharacterCountess::FightHard);
	
	
	// handle touch devices
	//PlayerInputComponent->BindTouch(IE_Pressed, this, &AAnimacion3dCharacter::TouchStarted);
	//PlayerInputComponent->BindTouch(IE_Released, this, &AAnimacion3dCharacter::TouchStopped);


}

void ACPP_CharacterCountess::FightSoft()
{
	bFightSoft_ = !bFightSoft_;
}

void ACPP_CharacterCountess::FightHard()
{
	bFightHard_ = !bFightHard_;
	
}

void ACPP_CharacterCountess::TurnAtRate(float Rate)
{
	// calculate delta for this frame from the rate information
	//AddControllerYawInput(Rate * TurnRateGamepad * GetWorld()->GetDeltaSeconds());
}

void ACPP_CharacterCountess::LookUpAtRate(float Rate)
{
	// calculate delta for this frame from the rate information
	//AddControllerPitchInput(Rate * TurnRateGamepad * GetWorld()->GetDeltaSeconds());
}

void ACPP_CharacterCountess::MoveForward(float Value)
{
	if ((Controller != nullptr) && (Value != 0.0f))
	{
		// find out which way is forward
		const FRotator Rotation = Controller->GetControlRotation();
		const FRotator YawRotation(0, Rotation.Yaw, 0);
		
		
		// get forward vector
		const FVector Direction = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::X);
		//const FVector Direction = GetActorForwardVector();
		
		AddMovementInput(Direction, Value);
		
		//GetCharacterMovement()->AddForce(Direction);
		
		//AddActorLocalOffset(FVector(0.5f,0,0),false);
		//AddActorWorldOffset(Direction);
		//GetMesh()->AddForce(Direction);
		//GetCapsuleComponent()->AddForce(FVector(1000.0f,0.0f,0.0f),NAME_None,true);
		
		
		//GetCapsuleComponent()->AddWorldOffset(Direction);
		
		
		
	}
}

void ACPP_CharacterCountess::MoveRight(float Value)
{
	// modo yendo dirección cámara
	if ( (Controller != nullptr) && (Value != 0.0f) )
	{
		// find out which way is right
		const FRotator Rotation = Controller->GetControlRotation();
		const FRotator YawRotation(0, Rotation.Yaw, 0);

		// get right vector 
		const FVector Direction = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::Y);		
		// add movement in that direction
		AddMovementInput(Direction, Value);

		
	}
}
