{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AutoScaling.CreateAutoScalingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __We strongly recommend using a launch template when calling this
-- operation to ensure full functionality for Amazon EC2 Auto Scaling and
-- Amazon EC2.__
--
-- Creates an Auto Scaling group with the specified name and attributes.
--
-- If you exceed your maximum limit of Auto Scaling groups, the call fails.
-- To query this limit, call the DescribeAccountLimits API. For information
-- about updating this limit, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html Quotas for Amazon EC2 Auto Scaling>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- For introductory exercises for creating an Auto Scaling group, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/GettingStartedTutorial.html Getting started with Amazon EC2 Auto Scaling>
-- and
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-register-lbs-with-asg.html Tutorial: Set up a scaled and load-balanced application>
-- in the /Amazon EC2 Auto Scaling User Guide/. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html Auto Scaling groups>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- Every Auto Scaling group has three size properties (@DesiredCapacity@,
-- @MaxSize@, and @MinSize@). Usually, you set these sizes based on a
-- specific number of instances. However, if you configure a mixed
-- instances policy that defines weights for the instance types, you must
-- specify these sizes with the same units that you use for weighting
-- instances.
module Amazonka.AutoScaling.CreateAutoScalingGroup
  ( -- * Creating a Request
    CreateAutoScalingGroup (..),
    newCreateAutoScalingGroup,

    -- * Request Lenses
    createAutoScalingGroup_tags,
    createAutoScalingGroup_loadBalancerNames,
    createAutoScalingGroup_availabilityZones,
    createAutoScalingGroup_healthCheckGracePeriod,
    createAutoScalingGroup_launchTemplate,
    createAutoScalingGroup_lifecycleHookSpecificationList,
    createAutoScalingGroup_serviceLinkedRoleARN,
    createAutoScalingGroup_context,
    createAutoScalingGroup_maxInstanceLifetime,
    createAutoScalingGroup_vPCZoneIdentifier,
    createAutoScalingGroup_launchConfigurationName,
    createAutoScalingGroup_targetGroupARNs,
    createAutoScalingGroup_defaultInstanceWarmup,
    createAutoScalingGroup_instanceId,
    createAutoScalingGroup_mixedInstancesPolicy,
    createAutoScalingGroup_healthCheckType,
    createAutoScalingGroup_placementGroup,
    createAutoScalingGroup_desiredCapacityType,
    createAutoScalingGroup_newInstancesProtectedFromScaleIn,
    createAutoScalingGroup_defaultCooldown,
    createAutoScalingGroup_terminationPolicies,
    createAutoScalingGroup_desiredCapacity,
    createAutoScalingGroup_capacityRebalance,
    createAutoScalingGroup_autoScalingGroupName,
    createAutoScalingGroup_minSize,
    createAutoScalingGroup_maxSize,

    -- * Destructuring the Response
    CreateAutoScalingGroupResponse (..),
    newCreateAutoScalingGroupResponse,
  )
where

import Amazonka.AutoScaling.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateAutoScalingGroup' smart constructor.
data CreateAutoScalingGroup = CreateAutoScalingGroup'
  { -- | One or more tags. You can tag your Auto Scaling group and propagate the
    -- tags to the Amazon EC2 instances it launches. Tags are not propagated to
    -- Amazon EBS volumes. To add tags to Amazon EBS volumes, specify the tags
    -- in a launch template but use caution. If the launch template specifies
    -- an instance tag with a key that is also specified for the Auto Scaling
    -- group, Amazon EC2 Auto Scaling overrides the value of that instance tag
    -- with the value specified by the Auto Scaling group. For more
    -- information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html Tag Auto Scaling groups and instances>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    tags :: Prelude.Maybe [Tag],
    -- | A list of Classic Load Balancers associated with this Auto Scaling
    -- group. For Application Load Balancers, Network Load Balancers, and
    -- Gateway Load Balancer, specify the @TargetGroupARNs@ property instead.
    loadBalancerNames :: Prelude.Maybe [Prelude.Text],
    -- | A list of Availability Zones where instances in the Auto Scaling group
    -- can be created. Used for launching into the default VPC subnet in each
    -- Availability Zone when not using the @VPCZoneIdentifier@ property, or
    -- for attaching a network interface when an existing network interface ID
    -- is specified in a launch template.
    availabilityZones :: Prelude.Maybe [Prelude.Text],
    -- | The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    -- before checking the health status of an EC2 instance that has come into
    -- service and marking it unhealthy due to a failed Elastic Load Balancing
    -- or custom health check. This is useful if your instances do not
    -- immediately pass these health checks after they enter the @InService@
    -- state. For more information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period Health check grace period>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    --
    -- Default: @0@ seconds
    healthCheckGracePeriod :: Prelude.Maybe Prelude.Int,
    -- | Information used to specify the launch template and version to use to
    -- launch instances.
    --
    -- Conditional: You must specify either a launch template (@LaunchTemplate@
    -- or @MixedInstancesPolicy@) or a launch configuration
    -- (@LaunchConfigurationName@ or @InstanceId@).
    --
    -- The launch template that is specified must be configured for use with an
    -- Auto Scaling group. For more information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html Creating a launch template for an Auto Scaling group>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    launchTemplate :: Prelude.Maybe LaunchTemplateSpecification,
    -- | One or more lifecycle hooks to add to the Auto Scaling group before
    -- instances are launched.
    lifecycleHookSpecificationList :: Prelude.Maybe [LifecycleHookSpecification],
    -- | The Amazon Resource Name (ARN) of the service-linked role that the Auto
    -- Scaling group uses to call other Amazon Web Services service on your
    -- behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role
    -- named @AWSServiceRoleForAutoScaling@, which it creates if it does not
    -- exist. For more information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html Service-linked roles>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    serviceLinkedRoleARN :: Prelude.Maybe Prelude.Text,
    -- | Reserved.
    context :: Prelude.Maybe Prelude.Text,
    -- | The maximum amount of time, in seconds, that an instance can be in
    -- service. The default is null. If specified, the value must be either 0
    -- or a number equal to or greater than 86,400 seconds (1 day). For more
    -- information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html Replacing Auto Scaling instances based on maximum instance lifetime>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    maxInstanceLifetime :: Prelude.Maybe Prelude.Int,
    -- | A comma-separated list of subnet IDs for a virtual private cloud (VPC)
    -- where instances in the Auto Scaling group can be created. If you specify
    -- @VPCZoneIdentifier@ with @AvailabilityZones@, the subnets that you
    -- specify must reside in those Availability Zones.
    vPCZoneIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The name of the launch configuration to use to launch instances.
    --
    -- Conditional: You must specify either a launch template (@LaunchTemplate@
    -- or @MixedInstancesPolicy@) or a launch configuration
    -- (@LaunchConfigurationName@ or @InstanceId@).
    launchConfigurationName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Names (ARN) of the target groups to associate with
    -- the Auto Scaling group. Instances are registered as targets with the
    -- target groups. The target groups receive incoming traffic and route
    -- requests to one or more registered targets. For more information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html Use Elastic Load Balancing to distribute traffic across the instances in your Auto Scaling group>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    targetGroupARNs :: Prelude.Maybe [Prelude.Text],
    -- | The amount of time, in seconds, until a newly launched instance can
    -- contribute to the Amazon CloudWatch metrics. This delay lets an instance
    -- finish initializing before Amazon EC2 Auto Scaling aggregates instance
    -- metrics, resulting in more reliable usage data. Set this value equal to
    -- the amount of time that it takes for resource consumption to become
    -- stable after an instance reaches the @InService@ state. For more
    -- information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html Set the default instance warmup for an Auto Scaling group>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    --
    -- To manage your warm-up settings at the group level, we recommend that
    -- you set the default instance warmup, /even if its value is set to 0
    -- seconds/. This also optimizes the performance of scaling policies that
    -- scale continuously, such as target tracking and step scaling policies.
    --
    -- If you need to remove a value that you previously set, include the
    -- property but specify @-1@ for the value. However, we strongly recommend
    -- keeping the default instance warmup enabled by specifying a minimum
    -- value of @0@.
    --
    -- Default: None
    defaultInstanceWarmup :: Prelude.Maybe Prelude.Int,
    -- | The ID of the instance used to base the launch configuration on. If
    -- specified, Amazon EC2 Auto Scaling uses the configuration values from
    -- the specified instance to create a new launch configuration. To get the
    -- instance ID, use the Amazon EC2
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html DescribeInstances>
    -- API operation. For more information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html Creating an Auto Scaling group using an EC2 instance>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | An embedded object that specifies a mixed instances policy.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html Auto Scaling groups with multiple instance types and purchase options>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    mixedInstancesPolicy :: Prelude.Maybe MixedInstancesPolicy,
    -- | The service to use for the health checks. The valid values are @EC2@
    -- (default) and @ELB@. If you configure an Auto Scaling group to use load
    -- balancer (ELB) health checks, it considers the instance unhealthy if it
    -- fails either the EC2 status checks or the load balancer health checks.
    -- For more information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html Health checks for Auto Scaling instances>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    healthCheckType :: Prelude.Maybe Prelude.Text,
    -- | The name of the placement group into which to launch your instances. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html Placement groups>
    -- in the /Amazon EC2 User Guide for Linux Instances/.
    --
    -- A /cluster/ placement group is a logical grouping of instances within a
    -- single Availability Zone. You cannot specify multiple Availability Zones
    -- and a cluster placement group.
    placementGroup :: Prelude.Maybe Prelude.Text,
    -- | The unit of measurement for the value specified for desired capacity.
    -- Amazon EC2 Auto Scaling supports @DesiredCapacityType@ for
    -- attribute-based instance type selection only. For more information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html Creating an Auto Scaling group using attribute-based instance type selection>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    --
    -- By default, Amazon EC2 Auto Scaling specifies @units@, which translates
    -- into number of instances.
    --
    -- Valid values: @units@ | @vcpu@ | @memory-mib@
    desiredCapacityType :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether newly launched instances are protected from
    -- termination by Amazon EC2 Auto Scaling when scaling in. For more
    -- information about preventing instances from terminating on scale in, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html Using instance scale-in protection>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    newInstancesProtectedFromScaleIn' :: Prelude.Maybe Prelude.Bool,
    -- | /Only needed if you use simple scaling policies./
    --
    -- The amount of time, in seconds, between one scaling activity ending and
    -- another one starting due to simple scaling policies. For more
    -- information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html Scaling cooldowns for Amazon EC2 Auto Scaling>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    --
    -- Default: @300@ seconds
    defaultCooldown :: Prelude.Maybe Prelude.Int,
    -- | A policy or a list of policies that are used to select the instance to
    -- terminate. These policies are executed in the order that you list them.
    -- For more information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html Work with Amazon EC2 Auto Scaling termination policies>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    --
    -- Valid values: @Default@ | @AllocationStrategy@ |
    -- @ClosestToNextInstanceHour@ | @NewestInstance@ | @OldestInstance@ |
    -- @OldestLaunchConfiguration@ | @OldestLaunchTemplate@ |
    -- @arn:aws:lambda:region:account-id:function:my-function:my-alias@
    terminationPolicies :: Prelude.Maybe [Prelude.Text],
    -- | The desired capacity is the initial capacity of the Auto Scaling group
    -- at the time of its creation and the capacity it attempts to maintain. It
    -- can scale beyond this capacity if you configure auto scaling. This
    -- number must be greater than or equal to the minimum size of the group
    -- and less than or equal to the maximum size of the group. If you do not
    -- specify a desired capacity, the default is the minimum size of the
    -- group.
    desiredCapacity :: Prelude.Maybe Prelude.Int,
    -- | Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity
    -- Rebalancing is disabled. When you turn on Capacity Rebalancing, Amazon
    -- EC2 Auto Scaling attempts to launch a Spot Instance whenever Amazon EC2
    -- notifies that a Spot Instance is at an elevated risk of interruption.
    -- After launching a new instance, it then terminates an old instance. For
    -- more information, see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html Use Capacity Rebalancing to handle Amazon EC2 Spot Interruptions>
    -- in the in the /Amazon EC2 Auto Scaling User Guide/.
    capacityRebalance :: Prelude.Maybe Prelude.Bool,
    -- | The name of the Auto Scaling group. This name must be unique per Region
    -- per account.
    autoScalingGroupName :: Prelude.Text,
    -- | The minimum size of the group.
    minSize :: Prelude.Int,
    -- | The maximum size of the group.
    --
    -- With a mixed instances policy that uses instance weighting, Amazon EC2
    -- Auto Scaling may need to go above @MaxSize@ to meet your capacity
    -- requirements. In this event, Amazon EC2 Auto Scaling will never go above
    -- @MaxSize@ by more than your largest instance weight (weights that define
    -- how many units each instance contributes to the desired capacity of the
    -- group).
    maxSize :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAutoScalingGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createAutoScalingGroup_tags' - One or more tags. You can tag your Auto Scaling group and propagate the
-- tags to the Amazon EC2 instances it launches. Tags are not propagated to
-- Amazon EBS volumes. To add tags to Amazon EBS volumes, specify the tags
-- in a launch template but use caution. If the launch template specifies
-- an instance tag with a key that is also specified for the Auto Scaling
-- group, Amazon EC2 Auto Scaling overrides the value of that instance tag
-- with the value specified by the Auto Scaling group. For more
-- information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html Tag Auto Scaling groups and instances>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'loadBalancerNames', 'createAutoScalingGroup_loadBalancerNames' - A list of Classic Load Balancers associated with this Auto Scaling
-- group. For Application Load Balancers, Network Load Balancers, and
-- Gateway Load Balancer, specify the @TargetGroupARNs@ property instead.
--
-- 'availabilityZones', 'createAutoScalingGroup_availabilityZones' - A list of Availability Zones where instances in the Auto Scaling group
-- can be created. Used for launching into the default VPC subnet in each
-- Availability Zone when not using the @VPCZoneIdentifier@ property, or
-- for attaching a network interface when an existing network interface ID
-- is specified in a launch template.
--
-- 'healthCheckGracePeriod', 'createAutoScalingGroup_healthCheckGracePeriod' - The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
-- before checking the health status of an EC2 instance that has come into
-- service and marking it unhealthy due to a failed Elastic Load Balancing
-- or custom health check. This is useful if your instances do not
-- immediately pass these health checks after they enter the @InService@
-- state. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period Health check grace period>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- Default: @0@ seconds
--
-- 'launchTemplate', 'createAutoScalingGroup_launchTemplate' - Information used to specify the launch template and version to use to
-- launch instances.
--
-- Conditional: You must specify either a launch template (@LaunchTemplate@
-- or @MixedInstancesPolicy@) or a launch configuration
-- (@LaunchConfigurationName@ or @InstanceId@).
--
-- The launch template that is specified must be configured for use with an
-- Auto Scaling group. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html Creating a launch template for an Auto Scaling group>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'lifecycleHookSpecificationList', 'createAutoScalingGroup_lifecycleHookSpecificationList' - One or more lifecycle hooks to add to the Auto Scaling group before
-- instances are launched.
--
-- 'serviceLinkedRoleARN', 'createAutoScalingGroup_serviceLinkedRoleARN' - The Amazon Resource Name (ARN) of the service-linked role that the Auto
-- Scaling group uses to call other Amazon Web Services service on your
-- behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role
-- named @AWSServiceRoleForAutoScaling@, which it creates if it does not
-- exist. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html Service-linked roles>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'context', 'createAutoScalingGroup_context' - Reserved.
--
-- 'maxInstanceLifetime', 'createAutoScalingGroup_maxInstanceLifetime' - The maximum amount of time, in seconds, that an instance can be in
-- service. The default is null. If specified, the value must be either 0
-- or a number equal to or greater than 86,400 seconds (1 day). For more
-- information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html Replacing Auto Scaling instances based on maximum instance lifetime>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'vPCZoneIdentifier', 'createAutoScalingGroup_vPCZoneIdentifier' - A comma-separated list of subnet IDs for a virtual private cloud (VPC)
-- where instances in the Auto Scaling group can be created. If you specify
-- @VPCZoneIdentifier@ with @AvailabilityZones@, the subnets that you
-- specify must reside in those Availability Zones.
--
-- 'launchConfigurationName', 'createAutoScalingGroup_launchConfigurationName' - The name of the launch configuration to use to launch instances.
--
-- Conditional: You must specify either a launch template (@LaunchTemplate@
-- or @MixedInstancesPolicy@) or a launch configuration
-- (@LaunchConfigurationName@ or @InstanceId@).
--
-- 'targetGroupARNs', 'createAutoScalingGroup_targetGroupARNs' - The Amazon Resource Names (ARN) of the target groups to associate with
-- the Auto Scaling group. Instances are registered as targets with the
-- target groups. The target groups receive incoming traffic and route
-- requests to one or more registered targets. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html Use Elastic Load Balancing to distribute traffic across the instances in your Auto Scaling group>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'defaultInstanceWarmup', 'createAutoScalingGroup_defaultInstanceWarmup' - The amount of time, in seconds, until a newly launched instance can
-- contribute to the Amazon CloudWatch metrics. This delay lets an instance
-- finish initializing before Amazon EC2 Auto Scaling aggregates instance
-- metrics, resulting in more reliable usage data. Set this value equal to
-- the amount of time that it takes for resource consumption to become
-- stable after an instance reaches the @InService@ state. For more
-- information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html Set the default instance warmup for an Auto Scaling group>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- To manage your warm-up settings at the group level, we recommend that
-- you set the default instance warmup, /even if its value is set to 0
-- seconds/. This also optimizes the performance of scaling policies that
-- scale continuously, such as target tracking and step scaling policies.
--
-- If you need to remove a value that you previously set, include the
-- property but specify @-1@ for the value. However, we strongly recommend
-- keeping the default instance warmup enabled by specifying a minimum
-- value of @0@.
--
-- Default: None
--
-- 'instanceId', 'createAutoScalingGroup_instanceId' - The ID of the instance used to base the launch configuration on. If
-- specified, Amazon EC2 Auto Scaling uses the configuration values from
-- the specified instance to create a new launch configuration. To get the
-- instance ID, use the Amazon EC2
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html DescribeInstances>
-- API operation. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html Creating an Auto Scaling group using an EC2 instance>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'mixedInstancesPolicy', 'createAutoScalingGroup_mixedInstancesPolicy' - An embedded object that specifies a mixed instances policy.
--
-- For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html Auto Scaling groups with multiple instance types and purchase options>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'healthCheckType', 'createAutoScalingGroup_healthCheckType' - The service to use for the health checks. The valid values are @EC2@
-- (default) and @ELB@. If you configure an Auto Scaling group to use load
-- balancer (ELB) health checks, it considers the instance unhealthy if it
-- fails either the EC2 status checks or the load balancer health checks.
-- For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html Health checks for Auto Scaling instances>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'placementGroup', 'createAutoScalingGroup_placementGroup' - The name of the placement group into which to launch your instances. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html Placement groups>
-- in the /Amazon EC2 User Guide for Linux Instances/.
--
-- A /cluster/ placement group is a logical grouping of instances within a
-- single Availability Zone. You cannot specify multiple Availability Zones
-- and a cluster placement group.
--
-- 'desiredCapacityType', 'createAutoScalingGroup_desiredCapacityType' - The unit of measurement for the value specified for desired capacity.
-- Amazon EC2 Auto Scaling supports @DesiredCapacityType@ for
-- attribute-based instance type selection only. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html Creating an Auto Scaling group using attribute-based instance type selection>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- By default, Amazon EC2 Auto Scaling specifies @units@, which translates
-- into number of instances.
--
-- Valid values: @units@ | @vcpu@ | @memory-mib@
--
-- 'newInstancesProtectedFromScaleIn'', 'createAutoScalingGroup_newInstancesProtectedFromScaleIn' - Indicates whether newly launched instances are protected from
-- termination by Amazon EC2 Auto Scaling when scaling in. For more
-- information about preventing instances from terminating on scale in, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html Using instance scale-in protection>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'defaultCooldown', 'createAutoScalingGroup_defaultCooldown' - /Only needed if you use simple scaling policies./
--
-- The amount of time, in seconds, between one scaling activity ending and
-- another one starting due to simple scaling policies. For more
-- information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html Scaling cooldowns for Amazon EC2 Auto Scaling>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- Default: @300@ seconds
--
-- 'terminationPolicies', 'createAutoScalingGroup_terminationPolicies' - A policy or a list of policies that are used to select the instance to
-- terminate. These policies are executed in the order that you list them.
-- For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html Work with Amazon EC2 Auto Scaling termination policies>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- Valid values: @Default@ | @AllocationStrategy@ |
-- @ClosestToNextInstanceHour@ | @NewestInstance@ | @OldestInstance@ |
-- @OldestLaunchConfiguration@ | @OldestLaunchTemplate@ |
-- @arn:aws:lambda:region:account-id:function:my-function:my-alias@
--
-- 'desiredCapacity', 'createAutoScalingGroup_desiredCapacity' - The desired capacity is the initial capacity of the Auto Scaling group
-- at the time of its creation and the capacity it attempts to maintain. It
-- can scale beyond this capacity if you configure auto scaling. This
-- number must be greater than or equal to the minimum size of the group
-- and less than or equal to the maximum size of the group. If you do not
-- specify a desired capacity, the default is the minimum size of the
-- group.
--
-- 'capacityRebalance', 'createAutoScalingGroup_capacityRebalance' - Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity
-- Rebalancing is disabled. When you turn on Capacity Rebalancing, Amazon
-- EC2 Auto Scaling attempts to launch a Spot Instance whenever Amazon EC2
-- notifies that a Spot Instance is at an elevated risk of interruption.
-- After launching a new instance, it then terminates an old instance. For
-- more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html Use Capacity Rebalancing to handle Amazon EC2 Spot Interruptions>
-- in the in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'autoScalingGroupName', 'createAutoScalingGroup_autoScalingGroupName' - The name of the Auto Scaling group. This name must be unique per Region
-- per account.
--
-- 'minSize', 'createAutoScalingGroup_minSize' - The minimum size of the group.
--
-- 'maxSize', 'createAutoScalingGroup_maxSize' - The maximum size of the group.
--
-- With a mixed instances policy that uses instance weighting, Amazon EC2
-- Auto Scaling may need to go above @MaxSize@ to meet your capacity
-- requirements. In this event, Amazon EC2 Auto Scaling will never go above
-- @MaxSize@ by more than your largest instance weight (weights that define
-- how many units each instance contributes to the desired capacity of the
-- group).
newCreateAutoScalingGroup ::
  -- | 'autoScalingGroupName'
  Prelude.Text ->
  -- | 'minSize'
  Prelude.Int ->
  -- | 'maxSize'
  Prelude.Int ->
  CreateAutoScalingGroup
newCreateAutoScalingGroup
  pAutoScalingGroupName_
  pMinSize_
  pMaxSize_ =
    CreateAutoScalingGroup'
      { tags = Prelude.Nothing,
        loadBalancerNames = Prelude.Nothing,
        availabilityZones = Prelude.Nothing,
        healthCheckGracePeriod = Prelude.Nothing,
        launchTemplate = Prelude.Nothing,
        lifecycleHookSpecificationList = Prelude.Nothing,
        serviceLinkedRoleARN = Prelude.Nothing,
        context = Prelude.Nothing,
        maxInstanceLifetime = Prelude.Nothing,
        vPCZoneIdentifier = Prelude.Nothing,
        launchConfigurationName = Prelude.Nothing,
        targetGroupARNs = Prelude.Nothing,
        defaultInstanceWarmup = Prelude.Nothing,
        instanceId = Prelude.Nothing,
        mixedInstancesPolicy = Prelude.Nothing,
        healthCheckType = Prelude.Nothing,
        placementGroup = Prelude.Nothing,
        desiredCapacityType = Prelude.Nothing,
        newInstancesProtectedFromScaleIn' = Prelude.Nothing,
        defaultCooldown = Prelude.Nothing,
        terminationPolicies = Prelude.Nothing,
        desiredCapacity = Prelude.Nothing,
        capacityRebalance = Prelude.Nothing,
        autoScalingGroupName = pAutoScalingGroupName_,
        minSize = pMinSize_,
        maxSize = pMaxSize_
      }

-- | One or more tags. You can tag your Auto Scaling group and propagate the
-- tags to the Amazon EC2 instances it launches. Tags are not propagated to
-- Amazon EBS volumes. To add tags to Amazon EBS volumes, specify the tags
-- in a launch template but use caution. If the launch template specifies
-- an instance tag with a key that is also specified for the Auto Scaling
-- group, Amazon EC2 Auto Scaling overrides the value of that instance tag
-- with the value specified by the Auto Scaling group. For more
-- information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html Tag Auto Scaling groups and instances>
-- in the /Amazon EC2 Auto Scaling User Guide/.
createAutoScalingGroup_tags :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe [Tag])
createAutoScalingGroup_tags = Lens.lens (\CreateAutoScalingGroup' {tags} -> tags) (\s@CreateAutoScalingGroup' {} a -> s {tags = a} :: CreateAutoScalingGroup) Prelude.. Lens.mapping Lens.coerced

-- | A list of Classic Load Balancers associated with this Auto Scaling
-- group. For Application Load Balancers, Network Load Balancers, and
-- Gateway Load Balancer, specify the @TargetGroupARNs@ property instead.
createAutoScalingGroup_loadBalancerNames :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe [Prelude.Text])
createAutoScalingGroup_loadBalancerNames = Lens.lens (\CreateAutoScalingGroup' {loadBalancerNames} -> loadBalancerNames) (\s@CreateAutoScalingGroup' {} a -> s {loadBalancerNames = a} :: CreateAutoScalingGroup) Prelude.. Lens.mapping Lens.coerced

-- | A list of Availability Zones where instances in the Auto Scaling group
-- can be created. Used for launching into the default VPC subnet in each
-- Availability Zone when not using the @VPCZoneIdentifier@ property, or
-- for attaching a network interface when an existing network interface ID
-- is specified in a launch template.
createAutoScalingGroup_availabilityZones :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe [Prelude.Text])
createAutoScalingGroup_availabilityZones = Lens.lens (\CreateAutoScalingGroup' {availabilityZones} -> availabilityZones) (\s@CreateAutoScalingGroup' {} a -> s {availabilityZones = a} :: CreateAutoScalingGroup) Prelude.. Lens.mapping Lens.coerced

-- | The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
-- before checking the health status of an EC2 instance that has come into
-- service and marking it unhealthy due to a failed Elastic Load Balancing
-- or custom health check. This is useful if your instances do not
-- immediately pass these health checks after they enter the @InService@
-- state. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period Health check grace period>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- Default: @0@ seconds
createAutoScalingGroup_healthCheckGracePeriod :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Int)
createAutoScalingGroup_healthCheckGracePeriod = Lens.lens (\CreateAutoScalingGroup' {healthCheckGracePeriod} -> healthCheckGracePeriod) (\s@CreateAutoScalingGroup' {} a -> s {healthCheckGracePeriod = a} :: CreateAutoScalingGroup)

-- | Information used to specify the launch template and version to use to
-- launch instances.
--
-- Conditional: You must specify either a launch template (@LaunchTemplate@
-- or @MixedInstancesPolicy@) or a launch configuration
-- (@LaunchConfigurationName@ or @InstanceId@).
--
-- The launch template that is specified must be configured for use with an
-- Auto Scaling group. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html Creating a launch template for an Auto Scaling group>
-- in the /Amazon EC2 Auto Scaling User Guide/.
createAutoScalingGroup_launchTemplate :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe LaunchTemplateSpecification)
createAutoScalingGroup_launchTemplate = Lens.lens (\CreateAutoScalingGroup' {launchTemplate} -> launchTemplate) (\s@CreateAutoScalingGroup' {} a -> s {launchTemplate = a} :: CreateAutoScalingGroup)

-- | One or more lifecycle hooks to add to the Auto Scaling group before
-- instances are launched.
createAutoScalingGroup_lifecycleHookSpecificationList :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe [LifecycleHookSpecification])
createAutoScalingGroup_lifecycleHookSpecificationList = Lens.lens (\CreateAutoScalingGroup' {lifecycleHookSpecificationList} -> lifecycleHookSpecificationList) (\s@CreateAutoScalingGroup' {} a -> s {lifecycleHookSpecificationList = a} :: CreateAutoScalingGroup) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the service-linked role that the Auto
-- Scaling group uses to call other Amazon Web Services service on your
-- behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role
-- named @AWSServiceRoleForAutoScaling@, which it creates if it does not
-- exist. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html Service-linked roles>
-- in the /Amazon EC2 Auto Scaling User Guide/.
createAutoScalingGroup_serviceLinkedRoleARN :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Text)
createAutoScalingGroup_serviceLinkedRoleARN = Lens.lens (\CreateAutoScalingGroup' {serviceLinkedRoleARN} -> serviceLinkedRoleARN) (\s@CreateAutoScalingGroup' {} a -> s {serviceLinkedRoleARN = a} :: CreateAutoScalingGroup)

-- | Reserved.
createAutoScalingGroup_context :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Text)
createAutoScalingGroup_context = Lens.lens (\CreateAutoScalingGroup' {context} -> context) (\s@CreateAutoScalingGroup' {} a -> s {context = a} :: CreateAutoScalingGroup)

-- | The maximum amount of time, in seconds, that an instance can be in
-- service. The default is null. If specified, the value must be either 0
-- or a number equal to or greater than 86,400 seconds (1 day). For more
-- information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html Replacing Auto Scaling instances based on maximum instance lifetime>
-- in the /Amazon EC2 Auto Scaling User Guide/.
createAutoScalingGroup_maxInstanceLifetime :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Int)
createAutoScalingGroup_maxInstanceLifetime = Lens.lens (\CreateAutoScalingGroup' {maxInstanceLifetime} -> maxInstanceLifetime) (\s@CreateAutoScalingGroup' {} a -> s {maxInstanceLifetime = a} :: CreateAutoScalingGroup)

-- | A comma-separated list of subnet IDs for a virtual private cloud (VPC)
-- where instances in the Auto Scaling group can be created. If you specify
-- @VPCZoneIdentifier@ with @AvailabilityZones@, the subnets that you
-- specify must reside in those Availability Zones.
createAutoScalingGroup_vPCZoneIdentifier :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Text)
createAutoScalingGroup_vPCZoneIdentifier = Lens.lens (\CreateAutoScalingGroup' {vPCZoneIdentifier} -> vPCZoneIdentifier) (\s@CreateAutoScalingGroup' {} a -> s {vPCZoneIdentifier = a} :: CreateAutoScalingGroup)

-- | The name of the launch configuration to use to launch instances.
--
-- Conditional: You must specify either a launch template (@LaunchTemplate@
-- or @MixedInstancesPolicy@) or a launch configuration
-- (@LaunchConfigurationName@ or @InstanceId@).
createAutoScalingGroup_launchConfigurationName :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Text)
createAutoScalingGroup_launchConfigurationName = Lens.lens (\CreateAutoScalingGroup' {launchConfigurationName} -> launchConfigurationName) (\s@CreateAutoScalingGroup' {} a -> s {launchConfigurationName = a} :: CreateAutoScalingGroup)

-- | The Amazon Resource Names (ARN) of the target groups to associate with
-- the Auto Scaling group. Instances are registered as targets with the
-- target groups. The target groups receive incoming traffic and route
-- requests to one or more registered targets. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html Use Elastic Load Balancing to distribute traffic across the instances in your Auto Scaling group>
-- in the /Amazon EC2 Auto Scaling User Guide/.
createAutoScalingGroup_targetGroupARNs :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe [Prelude.Text])
createAutoScalingGroup_targetGroupARNs = Lens.lens (\CreateAutoScalingGroup' {targetGroupARNs} -> targetGroupARNs) (\s@CreateAutoScalingGroup' {} a -> s {targetGroupARNs = a} :: CreateAutoScalingGroup) Prelude.. Lens.mapping Lens.coerced

-- | The amount of time, in seconds, until a newly launched instance can
-- contribute to the Amazon CloudWatch metrics. This delay lets an instance
-- finish initializing before Amazon EC2 Auto Scaling aggregates instance
-- metrics, resulting in more reliable usage data. Set this value equal to
-- the amount of time that it takes for resource consumption to become
-- stable after an instance reaches the @InService@ state. For more
-- information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html Set the default instance warmup for an Auto Scaling group>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- To manage your warm-up settings at the group level, we recommend that
-- you set the default instance warmup, /even if its value is set to 0
-- seconds/. This also optimizes the performance of scaling policies that
-- scale continuously, such as target tracking and step scaling policies.
--
-- If you need to remove a value that you previously set, include the
-- property but specify @-1@ for the value. However, we strongly recommend
-- keeping the default instance warmup enabled by specifying a minimum
-- value of @0@.
--
-- Default: None
createAutoScalingGroup_defaultInstanceWarmup :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Int)
createAutoScalingGroup_defaultInstanceWarmup = Lens.lens (\CreateAutoScalingGroup' {defaultInstanceWarmup} -> defaultInstanceWarmup) (\s@CreateAutoScalingGroup' {} a -> s {defaultInstanceWarmup = a} :: CreateAutoScalingGroup)

-- | The ID of the instance used to base the launch configuration on. If
-- specified, Amazon EC2 Auto Scaling uses the configuration values from
-- the specified instance to create a new launch configuration. To get the
-- instance ID, use the Amazon EC2
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html DescribeInstances>
-- API operation. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html Creating an Auto Scaling group using an EC2 instance>
-- in the /Amazon EC2 Auto Scaling User Guide/.
createAutoScalingGroup_instanceId :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Text)
createAutoScalingGroup_instanceId = Lens.lens (\CreateAutoScalingGroup' {instanceId} -> instanceId) (\s@CreateAutoScalingGroup' {} a -> s {instanceId = a} :: CreateAutoScalingGroup)

-- | An embedded object that specifies a mixed instances policy.
--
-- For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html Auto Scaling groups with multiple instance types and purchase options>
-- in the /Amazon EC2 Auto Scaling User Guide/.
createAutoScalingGroup_mixedInstancesPolicy :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe MixedInstancesPolicy)
createAutoScalingGroup_mixedInstancesPolicy = Lens.lens (\CreateAutoScalingGroup' {mixedInstancesPolicy} -> mixedInstancesPolicy) (\s@CreateAutoScalingGroup' {} a -> s {mixedInstancesPolicy = a} :: CreateAutoScalingGroup)

-- | The service to use for the health checks. The valid values are @EC2@
-- (default) and @ELB@. If you configure an Auto Scaling group to use load
-- balancer (ELB) health checks, it considers the instance unhealthy if it
-- fails either the EC2 status checks or the load balancer health checks.
-- For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html Health checks for Auto Scaling instances>
-- in the /Amazon EC2 Auto Scaling User Guide/.
createAutoScalingGroup_healthCheckType :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Text)
createAutoScalingGroup_healthCheckType = Lens.lens (\CreateAutoScalingGroup' {healthCheckType} -> healthCheckType) (\s@CreateAutoScalingGroup' {} a -> s {healthCheckType = a} :: CreateAutoScalingGroup)

-- | The name of the placement group into which to launch your instances. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html Placement groups>
-- in the /Amazon EC2 User Guide for Linux Instances/.
--
-- A /cluster/ placement group is a logical grouping of instances within a
-- single Availability Zone. You cannot specify multiple Availability Zones
-- and a cluster placement group.
createAutoScalingGroup_placementGroup :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Text)
createAutoScalingGroup_placementGroup = Lens.lens (\CreateAutoScalingGroup' {placementGroup} -> placementGroup) (\s@CreateAutoScalingGroup' {} a -> s {placementGroup = a} :: CreateAutoScalingGroup)

-- | The unit of measurement for the value specified for desired capacity.
-- Amazon EC2 Auto Scaling supports @DesiredCapacityType@ for
-- attribute-based instance type selection only. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html Creating an Auto Scaling group using attribute-based instance type selection>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- By default, Amazon EC2 Auto Scaling specifies @units@, which translates
-- into number of instances.
--
-- Valid values: @units@ | @vcpu@ | @memory-mib@
createAutoScalingGroup_desiredCapacityType :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Text)
createAutoScalingGroup_desiredCapacityType = Lens.lens (\CreateAutoScalingGroup' {desiredCapacityType} -> desiredCapacityType) (\s@CreateAutoScalingGroup' {} a -> s {desiredCapacityType = a} :: CreateAutoScalingGroup)

-- | Indicates whether newly launched instances are protected from
-- termination by Amazon EC2 Auto Scaling when scaling in. For more
-- information about preventing instances from terminating on scale in, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html Using instance scale-in protection>
-- in the /Amazon EC2 Auto Scaling User Guide/.
createAutoScalingGroup_newInstancesProtectedFromScaleIn :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Bool)
createAutoScalingGroup_newInstancesProtectedFromScaleIn = Lens.lens (\CreateAutoScalingGroup' {newInstancesProtectedFromScaleIn'} -> newInstancesProtectedFromScaleIn') (\s@CreateAutoScalingGroup' {} a -> s {newInstancesProtectedFromScaleIn' = a} :: CreateAutoScalingGroup)

-- | /Only needed if you use simple scaling policies./
--
-- The amount of time, in seconds, between one scaling activity ending and
-- another one starting due to simple scaling policies. For more
-- information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html Scaling cooldowns for Amazon EC2 Auto Scaling>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- Default: @300@ seconds
createAutoScalingGroup_defaultCooldown :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Int)
createAutoScalingGroup_defaultCooldown = Lens.lens (\CreateAutoScalingGroup' {defaultCooldown} -> defaultCooldown) (\s@CreateAutoScalingGroup' {} a -> s {defaultCooldown = a} :: CreateAutoScalingGroup)

-- | A policy or a list of policies that are used to select the instance to
-- terminate. These policies are executed in the order that you list them.
-- For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html Work with Amazon EC2 Auto Scaling termination policies>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- Valid values: @Default@ | @AllocationStrategy@ |
-- @ClosestToNextInstanceHour@ | @NewestInstance@ | @OldestInstance@ |
-- @OldestLaunchConfiguration@ | @OldestLaunchTemplate@ |
-- @arn:aws:lambda:region:account-id:function:my-function:my-alias@
createAutoScalingGroup_terminationPolicies :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe [Prelude.Text])
createAutoScalingGroup_terminationPolicies = Lens.lens (\CreateAutoScalingGroup' {terminationPolicies} -> terminationPolicies) (\s@CreateAutoScalingGroup' {} a -> s {terminationPolicies = a} :: CreateAutoScalingGroup) Prelude.. Lens.mapping Lens.coerced

-- | The desired capacity is the initial capacity of the Auto Scaling group
-- at the time of its creation and the capacity it attempts to maintain. It
-- can scale beyond this capacity if you configure auto scaling. This
-- number must be greater than or equal to the minimum size of the group
-- and less than or equal to the maximum size of the group. If you do not
-- specify a desired capacity, the default is the minimum size of the
-- group.
createAutoScalingGroup_desiredCapacity :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Int)
createAutoScalingGroup_desiredCapacity = Lens.lens (\CreateAutoScalingGroup' {desiredCapacity} -> desiredCapacity) (\s@CreateAutoScalingGroup' {} a -> s {desiredCapacity = a} :: CreateAutoScalingGroup)

-- | Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity
-- Rebalancing is disabled. When you turn on Capacity Rebalancing, Amazon
-- EC2 Auto Scaling attempts to launch a Spot Instance whenever Amazon EC2
-- notifies that a Spot Instance is at an elevated risk of interruption.
-- After launching a new instance, it then terminates an old instance. For
-- more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html Use Capacity Rebalancing to handle Amazon EC2 Spot Interruptions>
-- in the in the /Amazon EC2 Auto Scaling User Guide/.
createAutoScalingGroup_capacityRebalance :: Lens.Lens' CreateAutoScalingGroup (Prelude.Maybe Prelude.Bool)
createAutoScalingGroup_capacityRebalance = Lens.lens (\CreateAutoScalingGroup' {capacityRebalance} -> capacityRebalance) (\s@CreateAutoScalingGroup' {} a -> s {capacityRebalance = a} :: CreateAutoScalingGroup)

-- | The name of the Auto Scaling group. This name must be unique per Region
-- per account.
createAutoScalingGroup_autoScalingGroupName :: Lens.Lens' CreateAutoScalingGroup Prelude.Text
createAutoScalingGroup_autoScalingGroupName = Lens.lens (\CreateAutoScalingGroup' {autoScalingGroupName} -> autoScalingGroupName) (\s@CreateAutoScalingGroup' {} a -> s {autoScalingGroupName = a} :: CreateAutoScalingGroup)

-- | The minimum size of the group.
createAutoScalingGroup_minSize :: Lens.Lens' CreateAutoScalingGroup Prelude.Int
createAutoScalingGroup_minSize = Lens.lens (\CreateAutoScalingGroup' {minSize} -> minSize) (\s@CreateAutoScalingGroup' {} a -> s {minSize = a} :: CreateAutoScalingGroup)

-- | The maximum size of the group.
--
-- With a mixed instances policy that uses instance weighting, Amazon EC2
-- Auto Scaling may need to go above @MaxSize@ to meet your capacity
-- requirements. In this event, Amazon EC2 Auto Scaling will never go above
-- @MaxSize@ by more than your largest instance weight (weights that define
-- how many units each instance contributes to the desired capacity of the
-- group).
createAutoScalingGroup_maxSize :: Lens.Lens' CreateAutoScalingGroup Prelude.Int
createAutoScalingGroup_maxSize = Lens.lens (\CreateAutoScalingGroup' {maxSize} -> maxSize) (\s@CreateAutoScalingGroup' {} a -> s {maxSize = a} :: CreateAutoScalingGroup)

instance Core.AWSRequest CreateAutoScalingGroup where
  type
    AWSResponse CreateAutoScalingGroup =
      CreateAutoScalingGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull
      CreateAutoScalingGroupResponse'

instance Prelude.Hashable CreateAutoScalingGroup where
  hashWithSalt _salt CreateAutoScalingGroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` loadBalancerNames
      `Prelude.hashWithSalt` availabilityZones
      `Prelude.hashWithSalt` healthCheckGracePeriod
      `Prelude.hashWithSalt` launchTemplate
      `Prelude.hashWithSalt` lifecycleHookSpecificationList
      `Prelude.hashWithSalt` serviceLinkedRoleARN
      `Prelude.hashWithSalt` context
      `Prelude.hashWithSalt` maxInstanceLifetime
      `Prelude.hashWithSalt` vPCZoneIdentifier
      `Prelude.hashWithSalt` launchConfigurationName
      `Prelude.hashWithSalt` targetGroupARNs
      `Prelude.hashWithSalt` defaultInstanceWarmup
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` mixedInstancesPolicy
      `Prelude.hashWithSalt` healthCheckType
      `Prelude.hashWithSalt` placementGroup
      `Prelude.hashWithSalt` desiredCapacityType
      `Prelude.hashWithSalt` newInstancesProtectedFromScaleIn'
      `Prelude.hashWithSalt` defaultCooldown
      `Prelude.hashWithSalt` terminationPolicies
      `Prelude.hashWithSalt` desiredCapacity
      `Prelude.hashWithSalt` capacityRebalance
      `Prelude.hashWithSalt` autoScalingGroupName
      `Prelude.hashWithSalt` minSize
      `Prelude.hashWithSalt` maxSize

instance Prelude.NFData CreateAutoScalingGroup where
  rnf CreateAutoScalingGroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf loadBalancerNames
      `Prelude.seq` Prelude.rnf availabilityZones
      `Prelude.seq` Prelude.rnf healthCheckGracePeriod
      `Prelude.seq` Prelude.rnf launchTemplate
      `Prelude.seq` Prelude.rnf lifecycleHookSpecificationList
      `Prelude.seq` Prelude.rnf serviceLinkedRoleARN
      `Prelude.seq` Prelude.rnf context
      `Prelude.seq` Prelude.rnf maxInstanceLifetime
      `Prelude.seq` Prelude.rnf vPCZoneIdentifier
      `Prelude.seq` Prelude.rnf launchConfigurationName
      `Prelude.seq` Prelude.rnf targetGroupARNs
      `Prelude.seq` Prelude.rnf defaultInstanceWarmup
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf mixedInstancesPolicy
      `Prelude.seq` Prelude.rnf healthCheckType
      `Prelude.seq` Prelude.rnf placementGroup
      `Prelude.seq` Prelude.rnf desiredCapacityType
      `Prelude.seq` Prelude.rnf
        newInstancesProtectedFromScaleIn'
      `Prelude.seq` Prelude.rnf defaultCooldown
      `Prelude.seq` Prelude.rnf
        terminationPolicies
      `Prelude.seq` Prelude.rnf
        desiredCapacity
      `Prelude.seq` Prelude.rnf
        capacityRebalance
      `Prelude.seq` Prelude.rnf
        autoScalingGroupName
      `Prelude.seq` Prelude.rnf minSize
      `Prelude.seq` Prelude.rnf
        maxSize

instance Core.ToHeaders CreateAutoScalingGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateAutoScalingGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateAutoScalingGroup where
  toQuery CreateAutoScalingGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateAutoScalingGroup" :: Prelude.ByteString),
        "Version"
          Core.=: ("2011-01-01" :: Prelude.ByteString),
        "Tags"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> tags),
        "LoadBalancerNames"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> loadBalancerNames
            ),
        "AvailabilityZones"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> availabilityZones
            ),
        "HealthCheckGracePeriod"
          Core.=: healthCheckGracePeriod,
        "LaunchTemplate" Core.=: launchTemplate,
        "LifecycleHookSpecificationList"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> lifecycleHookSpecificationList
            ),
        "ServiceLinkedRoleARN" Core.=: serviceLinkedRoleARN,
        "Context" Core.=: context,
        "MaxInstanceLifetime" Core.=: maxInstanceLifetime,
        "VPCZoneIdentifier" Core.=: vPCZoneIdentifier,
        "LaunchConfigurationName"
          Core.=: launchConfigurationName,
        "TargetGroupARNs"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> targetGroupARNs
            ),
        "DefaultInstanceWarmup"
          Core.=: defaultInstanceWarmup,
        "InstanceId" Core.=: instanceId,
        "MixedInstancesPolicy" Core.=: mixedInstancesPolicy,
        "HealthCheckType" Core.=: healthCheckType,
        "PlacementGroup" Core.=: placementGroup,
        "DesiredCapacityType" Core.=: desiredCapacityType,
        "NewInstancesProtectedFromScaleIn"
          Core.=: newInstancesProtectedFromScaleIn',
        "DefaultCooldown" Core.=: defaultCooldown,
        "TerminationPolicies"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> terminationPolicies
            ),
        "DesiredCapacity" Core.=: desiredCapacity,
        "CapacityRebalance" Core.=: capacityRebalance,
        "AutoScalingGroupName" Core.=: autoScalingGroupName,
        "MinSize" Core.=: minSize,
        "MaxSize" Core.=: maxSize
      ]

-- | /See:/ 'newCreateAutoScalingGroupResponse' smart constructor.
data CreateAutoScalingGroupResponse = CreateAutoScalingGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAutoScalingGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newCreateAutoScalingGroupResponse ::
  CreateAutoScalingGroupResponse
newCreateAutoScalingGroupResponse =
  CreateAutoScalingGroupResponse'

instance
  Prelude.NFData
    CreateAutoScalingGroupResponse
  where
  rnf _ = ()
