{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudWatchEvents.Types.EcsParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatchEvents.Types.EcsParameters where

import Amazonka.CloudWatchEvents.Types.CapacityProviderStrategyItem
import Amazonka.CloudWatchEvents.Types.LaunchType
import Amazonka.CloudWatchEvents.Types.NetworkConfiguration
import Amazonka.CloudWatchEvents.Types.PlacementConstraint
import Amazonka.CloudWatchEvents.Types.PlacementStrategy
import Amazonka.CloudWatchEvents.Types.PropagateTags
import Amazonka.CloudWatchEvents.Types.Tag
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The custom parameters to be used when the target is an Amazon ECS task.
--
-- /See:/ 'newEcsParameters' smart constructor.
data EcsParameters = EcsParameters'
  { -- | The metadata that you apply to the task to help you categorize and
    -- organize them. Each tag consists of a key and an optional value, both of
    -- which you define. To learn more, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html#ECS-RunTask-request-tags RunTask>
    -- in the Amazon ECS API Reference.
    tags :: Prelude.Maybe [Tag],
    -- | The placement strategy objects to use for the task. You can specify a
    -- maximum of five strategy rules per task.
    placementStrategy :: Prelude.Maybe [PlacementStrategy],
    -- | Use this structure if the Amazon ECS task uses the @awsvpc@ network
    -- mode. This structure specifies the VPC subnets and security groups
    -- associated with the task, and whether a public IP address is to be used.
    -- This structure is required if @LaunchType@ is @FARGATE@ because the
    -- @awsvpc@ mode is required for Fargate tasks.
    --
    -- If you specify @NetworkConfiguration@ when the target ECS task does not
    -- use the @awsvpc@ network mode, the task fails.
    networkConfiguration :: Prelude.Maybe NetworkConfiguration,
    -- | Whether or not to enable the execute command functionality for the
    -- containers in this task. If true, this enables execute command
    -- functionality on all containers in the task.
    enableExecuteCommand :: Prelude.Maybe Prelude.Bool,
    -- | The capacity provider strategy to use for the task.
    --
    -- If a @capacityProviderStrategy@ is specified, the @launchType@ parameter
    -- must be omitted. If no @capacityProviderStrategy@ or launchType is
    -- specified, the @defaultCapacityProviderStrategy@ for the cluster is
    -- used.
    capacityProviderStrategy :: Prelude.Maybe [CapacityProviderStrategyItem],
    -- | An array of placement constraint objects to use for the task. You can
    -- specify up to 10 constraints per task (including constraints in the task
    -- definition and those specified at runtime).
    placementConstraints :: Prelude.Maybe [PlacementConstraint],
    -- | Specifies whether to propagate the tags from the task definition to the
    -- task. If no value is specified, the tags are not propagated. Tags can
    -- only be propagated to the task during task creation. To add tags to a
    -- task after task creation, use the TagResource API action.
    propagateTags :: Prelude.Maybe PropagateTags,
    -- | The reference ID to use for the task.
    referenceId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the launch type on which your task is running. The launch type
    -- that you specify here must match one of the launch type
    -- (compatibilities) of the target task. The @FARGATE@ value is supported
    -- only in the Regions where Fargate with Amazon ECS is supported. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html Fargate on Amazon ECS>
    -- in the /Amazon Elastic Container Service Developer Guide/.
    launchType :: Prelude.Maybe LaunchType,
    -- | Specifies the platform version for the task. Specify only the numeric
    -- portion of the platform version, such as @1.1.0@.
    --
    -- This structure is used only if @LaunchType@ is @FARGATE@. For more
    -- information about valid platform versions, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html Fargate Platform Versions>
    -- in the /Amazon Elastic Container Service Developer Guide/.
    platformVersion :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether to enable Amazon ECS managed tags for the task. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources>
    -- in the Amazon Elastic Container Service Developer Guide.
    enableECSManagedTags :: Prelude.Maybe Prelude.Bool,
    -- | Specifies an ECS task group for the task. The maximum length is 255
    -- characters.
    group' :: Prelude.Maybe Prelude.Text,
    -- | The number of tasks to create based on @TaskDefinition@. The default is
    -- 1.
    taskCount :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the task definition to use if the event target is an Amazon
    -- ECS task.
    taskDefinitionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EcsParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'ecsParameters_tags' - The metadata that you apply to the task to help you categorize and
-- organize them. Each tag consists of a key and an optional value, both of
-- which you define. To learn more, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html#ECS-RunTask-request-tags RunTask>
-- in the Amazon ECS API Reference.
--
-- 'placementStrategy', 'ecsParameters_placementStrategy' - The placement strategy objects to use for the task. You can specify a
-- maximum of five strategy rules per task.
--
-- 'networkConfiguration', 'ecsParameters_networkConfiguration' - Use this structure if the Amazon ECS task uses the @awsvpc@ network
-- mode. This structure specifies the VPC subnets and security groups
-- associated with the task, and whether a public IP address is to be used.
-- This structure is required if @LaunchType@ is @FARGATE@ because the
-- @awsvpc@ mode is required for Fargate tasks.
--
-- If you specify @NetworkConfiguration@ when the target ECS task does not
-- use the @awsvpc@ network mode, the task fails.
--
-- 'enableExecuteCommand', 'ecsParameters_enableExecuteCommand' - Whether or not to enable the execute command functionality for the
-- containers in this task. If true, this enables execute command
-- functionality on all containers in the task.
--
-- 'capacityProviderStrategy', 'ecsParameters_capacityProviderStrategy' - The capacity provider strategy to use for the task.
--
-- If a @capacityProviderStrategy@ is specified, the @launchType@ parameter
-- must be omitted. If no @capacityProviderStrategy@ or launchType is
-- specified, the @defaultCapacityProviderStrategy@ for the cluster is
-- used.
--
-- 'placementConstraints', 'ecsParameters_placementConstraints' - An array of placement constraint objects to use for the task. You can
-- specify up to 10 constraints per task (including constraints in the task
-- definition and those specified at runtime).
--
-- 'propagateTags', 'ecsParameters_propagateTags' - Specifies whether to propagate the tags from the task definition to the
-- task. If no value is specified, the tags are not propagated. Tags can
-- only be propagated to the task during task creation. To add tags to a
-- task after task creation, use the TagResource API action.
--
-- 'referenceId', 'ecsParameters_referenceId' - The reference ID to use for the task.
--
-- 'launchType', 'ecsParameters_launchType' - Specifies the launch type on which your task is running. The launch type
-- that you specify here must match one of the launch type
-- (compatibilities) of the target task. The @FARGATE@ value is supported
-- only in the Regions where Fargate with Amazon ECS is supported. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html Fargate on Amazon ECS>
-- in the /Amazon Elastic Container Service Developer Guide/.
--
-- 'platformVersion', 'ecsParameters_platformVersion' - Specifies the platform version for the task. Specify only the numeric
-- portion of the platform version, such as @1.1.0@.
--
-- This structure is used only if @LaunchType@ is @FARGATE@. For more
-- information about valid platform versions, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html Fargate Platform Versions>
-- in the /Amazon Elastic Container Service Developer Guide/.
--
-- 'enableECSManagedTags', 'ecsParameters_enableECSManagedTags' - Specifies whether to enable Amazon ECS managed tags for the task. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources>
-- in the Amazon Elastic Container Service Developer Guide.
--
-- 'group'', 'ecsParameters_group' - Specifies an ECS task group for the task. The maximum length is 255
-- characters.
--
-- 'taskCount', 'ecsParameters_taskCount' - The number of tasks to create based on @TaskDefinition@. The default is
-- 1.
--
-- 'taskDefinitionArn', 'ecsParameters_taskDefinitionArn' - The ARN of the task definition to use if the event target is an Amazon
-- ECS task.
newEcsParameters ::
  -- | 'taskDefinitionArn'
  Prelude.Text ->
  EcsParameters
newEcsParameters pTaskDefinitionArn_ =
  EcsParameters'
    { tags = Prelude.Nothing,
      placementStrategy = Prelude.Nothing,
      networkConfiguration = Prelude.Nothing,
      enableExecuteCommand = Prelude.Nothing,
      capacityProviderStrategy = Prelude.Nothing,
      placementConstraints = Prelude.Nothing,
      propagateTags = Prelude.Nothing,
      referenceId = Prelude.Nothing,
      launchType = Prelude.Nothing,
      platformVersion = Prelude.Nothing,
      enableECSManagedTags = Prelude.Nothing,
      group' = Prelude.Nothing,
      taskCount = Prelude.Nothing,
      taskDefinitionArn = pTaskDefinitionArn_
    }

-- | The metadata that you apply to the task to help you categorize and
-- organize them. Each tag consists of a key and an optional value, both of
-- which you define. To learn more, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html#ECS-RunTask-request-tags RunTask>
-- in the Amazon ECS API Reference.
ecsParameters_tags :: Lens.Lens' EcsParameters (Prelude.Maybe [Tag])
ecsParameters_tags = Lens.lens (\EcsParameters' {tags} -> tags) (\s@EcsParameters' {} a -> s {tags = a} :: EcsParameters) Prelude.. Lens.mapping Lens.coerced

-- | The placement strategy objects to use for the task. You can specify a
-- maximum of five strategy rules per task.
ecsParameters_placementStrategy :: Lens.Lens' EcsParameters (Prelude.Maybe [PlacementStrategy])
ecsParameters_placementStrategy = Lens.lens (\EcsParameters' {placementStrategy} -> placementStrategy) (\s@EcsParameters' {} a -> s {placementStrategy = a} :: EcsParameters) Prelude.. Lens.mapping Lens.coerced

-- | Use this structure if the Amazon ECS task uses the @awsvpc@ network
-- mode. This structure specifies the VPC subnets and security groups
-- associated with the task, and whether a public IP address is to be used.
-- This structure is required if @LaunchType@ is @FARGATE@ because the
-- @awsvpc@ mode is required for Fargate tasks.
--
-- If you specify @NetworkConfiguration@ when the target ECS task does not
-- use the @awsvpc@ network mode, the task fails.
ecsParameters_networkConfiguration :: Lens.Lens' EcsParameters (Prelude.Maybe NetworkConfiguration)
ecsParameters_networkConfiguration = Lens.lens (\EcsParameters' {networkConfiguration} -> networkConfiguration) (\s@EcsParameters' {} a -> s {networkConfiguration = a} :: EcsParameters)

-- | Whether or not to enable the execute command functionality for the
-- containers in this task. If true, this enables execute command
-- functionality on all containers in the task.
ecsParameters_enableExecuteCommand :: Lens.Lens' EcsParameters (Prelude.Maybe Prelude.Bool)
ecsParameters_enableExecuteCommand = Lens.lens (\EcsParameters' {enableExecuteCommand} -> enableExecuteCommand) (\s@EcsParameters' {} a -> s {enableExecuteCommand = a} :: EcsParameters)

-- | The capacity provider strategy to use for the task.
--
-- If a @capacityProviderStrategy@ is specified, the @launchType@ parameter
-- must be omitted. If no @capacityProviderStrategy@ or launchType is
-- specified, the @defaultCapacityProviderStrategy@ for the cluster is
-- used.
ecsParameters_capacityProviderStrategy :: Lens.Lens' EcsParameters (Prelude.Maybe [CapacityProviderStrategyItem])
ecsParameters_capacityProviderStrategy = Lens.lens (\EcsParameters' {capacityProviderStrategy} -> capacityProviderStrategy) (\s@EcsParameters' {} a -> s {capacityProviderStrategy = a} :: EcsParameters) Prelude.. Lens.mapping Lens.coerced

-- | An array of placement constraint objects to use for the task. You can
-- specify up to 10 constraints per task (including constraints in the task
-- definition and those specified at runtime).
ecsParameters_placementConstraints :: Lens.Lens' EcsParameters (Prelude.Maybe [PlacementConstraint])
ecsParameters_placementConstraints = Lens.lens (\EcsParameters' {placementConstraints} -> placementConstraints) (\s@EcsParameters' {} a -> s {placementConstraints = a} :: EcsParameters) Prelude.. Lens.mapping Lens.coerced

-- | Specifies whether to propagate the tags from the task definition to the
-- task. If no value is specified, the tags are not propagated. Tags can
-- only be propagated to the task during task creation. To add tags to a
-- task after task creation, use the TagResource API action.
ecsParameters_propagateTags :: Lens.Lens' EcsParameters (Prelude.Maybe PropagateTags)
ecsParameters_propagateTags = Lens.lens (\EcsParameters' {propagateTags} -> propagateTags) (\s@EcsParameters' {} a -> s {propagateTags = a} :: EcsParameters)

-- | The reference ID to use for the task.
ecsParameters_referenceId :: Lens.Lens' EcsParameters (Prelude.Maybe Prelude.Text)
ecsParameters_referenceId = Lens.lens (\EcsParameters' {referenceId} -> referenceId) (\s@EcsParameters' {} a -> s {referenceId = a} :: EcsParameters)

-- | Specifies the launch type on which your task is running. The launch type
-- that you specify here must match one of the launch type
-- (compatibilities) of the target task. The @FARGATE@ value is supported
-- only in the Regions where Fargate with Amazon ECS is supported. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html Fargate on Amazon ECS>
-- in the /Amazon Elastic Container Service Developer Guide/.
ecsParameters_launchType :: Lens.Lens' EcsParameters (Prelude.Maybe LaunchType)
ecsParameters_launchType = Lens.lens (\EcsParameters' {launchType} -> launchType) (\s@EcsParameters' {} a -> s {launchType = a} :: EcsParameters)

-- | Specifies the platform version for the task. Specify only the numeric
-- portion of the platform version, such as @1.1.0@.
--
-- This structure is used only if @LaunchType@ is @FARGATE@. For more
-- information about valid platform versions, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html Fargate Platform Versions>
-- in the /Amazon Elastic Container Service Developer Guide/.
ecsParameters_platformVersion :: Lens.Lens' EcsParameters (Prelude.Maybe Prelude.Text)
ecsParameters_platformVersion = Lens.lens (\EcsParameters' {platformVersion} -> platformVersion) (\s@EcsParameters' {} a -> s {platformVersion = a} :: EcsParameters)

-- | Specifies whether to enable Amazon ECS managed tags for the task. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources>
-- in the Amazon Elastic Container Service Developer Guide.
ecsParameters_enableECSManagedTags :: Lens.Lens' EcsParameters (Prelude.Maybe Prelude.Bool)
ecsParameters_enableECSManagedTags = Lens.lens (\EcsParameters' {enableECSManagedTags} -> enableECSManagedTags) (\s@EcsParameters' {} a -> s {enableECSManagedTags = a} :: EcsParameters)

-- | Specifies an ECS task group for the task. The maximum length is 255
-- characters.
ecsParameters_group :: Lens.Lens' EcsParameters (Prelude.Maybe Prelude.Text)
ecsParameters_group = Lens.lens (\EcsParameters' {group'} -> group') (\s@EcsParameters' {} a -> s {group' = a} :: EcsParameters)

-- | The number of tasks to create based on @TaskDefinition@. The default is
-- 1.
ecsParameters_taskCount :: Lens.Lens' EcsParameters (Prelude.Maybe Prelude.Natural)
ecsParameters_taskCount = Lens.lens (\EcsParameters' {taskCount} -> taskCount) (\s@EcsParameters' {} a -> s {taskCount = a} :: EcsParameters)

-- | The ARN of the task definition to use if the event target is an Amazon
-- ECS task.
ecsParameters_taskDefinitionArn :: Lens.Lens' EcsParameters Prelude.Text
ecsParameters_taskDefinitionArn = Lens.lens (\EcsParameters' {taskDefinitionArn} -> taskDefinitionArn) (\s@EcsParameters' {} a -> s {taskDefinitionArn = a} :: EcsParameters)

instance Core.FromJSON EcsParameters where
  parseJSON =
    Core.withObject
      "EcsParameters"
      ( \x ->
          EcsParameters'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "PlacementStrategy"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "NetworkConfiguration")
            Prelude.<*> (x Core..:? "EnableExecuteCommand")
            Prelude.<*> ( x Core..:? "CapacityProviderStrategy"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "PlacementConstraints"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "PropagateTags")
            Prelude.<*> (x Core..:? "ReferenceId")
            Prelude.<*> (x Core..:? "LaunchType")
            Prelude.<*> (x Core..:? "PlatformVersion")
            Prelude.<*> (x Core..:? "EnableECSManagedTags")
            Prelude.<*> (x Core..:? "Group")
            Prelude.<*> (x Core..:? "TaskCount")
            Prelude.<*> (x Core..: "TaskDefinitionArn")
      )

instance Prelude.Hashable EcsParameters where
  hashWithSalt _salt EcsParameters' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` placementStrategy
      `Prelude.hashWithSalt` networkConfiguration
      `Prelude.hashWithSalt` enableExecuteCommand
      `Prelude.hashWithSalt` capacityProviderStrategy
      `Prelude.hashWithSalt` placementConstraints
      `Prelude.hashWithSalt` propagateTags
      `Prelude.hashWithSalt` referenceId
      `Prelude.hashWithSalt` launchType
      `Prelude.hashWithSalt` platformVersion
      `Prelude.hashWithSalt` enableECSManagedTags
      `Prelude.hashWithSalt` group'
      `Prelude.hashWithSalt` taskCount
      `Prelude.hashWithSalt` taskDefinitionArn

instance Prelude.NFData EcsParameters where
  rnf EcsParameters' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf placementStrategy
      `Prelude.seq` Prelude.rnf networkConfiguration
      `Prelude.seq` Prelude.rnf enableExecuteCommand
      `Prelude.seq` Prelude.rnf capacityProviderStrategy
      `Prelude.seq` Prelude.rnf placementConstraints
      `Prelude.seq` Prelude.rnf propagateTags
      `Prelude.seq` Prelude.rnf referenceId
      `Prelude.seq` Prelude.rnf launchType
      `Prelude.seq` Prelude.rnf platformVersion
      `Prelude.seq` Prelude.rnf enableECSManagedTags
      `Prelude.seq` Prelude.rnf group'
      `Prelude.seq` Prelude.rnf taskCount
      `Prelude.seq` Prelude.rnf taskDefinitionArn

instance Core.ToJSON EcsParameters where
  toJSON EcsParameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("PlacementStrategy" Core..=)
              Prelude.<$> placementStrategy,
            ("NetworkConfiguration" Core..=)
              Prelude.<$> networkConfiguration,
            ("EnableExecuteCommand" Core..=)
              Prelude.<$> enableExecuteCommand,
            ("CapacityProviderStrategy" Core..=)
              Prelude.<$> capacityProviderStrategy,
            ("PlacementConstraints" Core..=)
              Prelude.<$> placementConstraints,
            ("PropagateTags" Core..=) Prelude.<$> propagateTags,
            ("ReferenceId" Core..=) Prelude.<$> referenceId,
            ("LaunchType" Core..=) Prelude.<$> launchType,
            ("PlatformVersion" Core..=)
              Prelude.<$> platformVersion,
            ("EnableECSManagedTags" Core..=)
              Prelude.<$> enableECSManagedTags,
            ("Group" Core..=) Prelude.<$> group',
            ("TaskCount" Core..=) Prelude.<$> taskCount,
            Prelude.Just
              ("TaskDefinitionArn" Core..= taskDefinitionArn)
          ]
      )
