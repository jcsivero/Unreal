// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class Landscapev1 : ModuleRules
{
	public Landscapev1(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[] { "Core", "CoreUObject", "Engine", "InputCore", "HeadMountedDisplay" });
	}
}
