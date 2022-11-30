// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class Animacion3d : ModuleRules
{
	public Animacion3d(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[] { "Core", "CoreUObject", "Engine", "InputCore", "HeadMountedDisplay" });
	}
}
