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
-- Module      : Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
import Amazonka.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails

-- | A container definition that describes a container in the task.
--
-- /See:/ 'newAwsEcsTaskDefinitionContainerDefinitionsDetails' smart constructor.
data AwsEcsTaskDefinitionContainerDefinitionsDetails = AwsEcsTaskDefinitionContainerDefinitionsDetails'
  { -- | Whether the container is given read-only access to its root file system.
    readonlyRootFilesystem :: Prelude.Maybe Prelude.Bool,
    -- | The container health check command and associated configuration
    -- parameters for the container.
    healthCheck :: Prelude.Maybe AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails,
    -- | The name of the container.
    name :: Prelude.Maybe Prelude.Text,
    -- | A list of hostnames and IP address mappings to append to the
    -- __\/etc\/hosts__ file on the container.
    extraHosts :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails],
    -- | The dependencies that are defined for container startup and shutdown.
    dependsOn :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails],
    -- | The log configuration specification for the container.
    logConfiguration :: Prelude.Maybe AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails,
    -- | The environment variables to pass to a container.
    environment :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails],
    -- | The type and amount of a resource to assign to a container. The only
    -- supported resource is a GPU.
    resourceRequirements :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails],
    -- | The number of CPU units reserved for the container.
    cpu :: Prelude.Maybe Prelude.Int,
    -- | The amount (in MiB) of memory to present to the container. If the
    -- container attempts to exceed the memory specified here, the container is
    -- shut down. The total amount of memory reserved for all containers within
    -- a task must be lower than the task memory value, if one is specified.
    memory :: Prelude.Maybe Prelude.Int,
    -- | The number of seconds to wait before giving up on resolving dependencies
    -- for a container.
    startTimeout :: Prelude.Maybe Prelude.Int,
    -- | A list of DNS servers that are presented to the container.
    dnsServers :: Prelude.Maybe [Prelude.Text],
    -- | The user to use inside the container.
    --
    -- The value can use one of the following formats.
    --
    -- -   @ user @
    --
    -- -   @ user @:@ group @
    --
    -- -   @ uid @
    --
    -- -   @ uid @:@ gid @
    --
    -- -   @ user @:@ gid @
    --
    -- -   @ uid @:@ group @
    user :: Prelude.Maybe Prelude.Text,
    -- | The soft limit (in MiB) of memory to reserve for the container.
    memoryReservation :: Prelude.Maybe Prelude.Int,
    -- | A list of ulimits to set in the container.
    ulimits :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails],
    -- | The private repository authentication credentials to use.
    repositoryCredentials :: Prelude.Maybe AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails,
    -- | The list of port mappings for the container.
    portMappings :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails],
    -- | The command that is passed to the container.
    command :: Prelude.Maybe [Prelude.Text],
    -- | The hostname to use for the container.
    hostname :: Prelude.Maybe Prelude.Text,
    -- | A list of files containing the environment variables to pass to a
    -- container.
    environmentFiles :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails],
    -- | The secrets to pass to the container.
    secrets :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails],
    -- | Whether to disable networking within the container.
    disableNetworking :: Prelude.Maybe Prelude.Bool,
    -- | A key-value map of labels to add to the container.
    dockerLabels :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Data volumes to mount from another container.
    volumesFrom :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails],
    -- | A list of DNS search domains that are presented to the container.
    dnsSearchDomains :: Prelude.Maybe [Prelude.Text],
    -- | Whether the container is given elevated privileges on the host container
    -- instance. The elevated privileges are similar to the root user.
    privileged :: Prelude.Maybe Prelude.Bool,
    -- | The number of seconds to wait before the container is stopped if it
    -- doesn\'t shut down normally on its own.
    stopTimeout :: Prelude.Maybe Prelude.Int,
    -- | The entry point that is passed to the container.
    entryPoint :: Prelude.Maybe [Prelude.Text],
    -- | A list of links for the container in the form @ container_name:alias @.
    -- Allows containers to communicate with each other without the need for
    -- port mappings.
    links :: Prelude.Maybe [Prelude.Text],
    -- | The mount points for the data volumes in the container.
    mountPoints :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails],
    -- | The image used to start the container.
    image :: Prelude.Maybe Prelude.Text,
    -- | Whether the container is essential. All tasks must have at least one
    -- essential container.
    essential :: Prelude.Maybe Prelude.Bool,
    -- | If set to true, then containerized applications can be deployed that
    -- require @stdin@ or a @tty@ to be allocated.
    interactive :: Prelude.Maybe Prelude.Bool,
    -- | Linux-specific modifications that are applied to the container, such as
    -- Linux kernel capabilities.
    linuxParameters :: Prelude.Maybe AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails,
    -- | A list of strings to provide custom labels for SELinux and AppArmor
    -- multi-level security systems.
    dockerSecurityOptions :: Prelude.Maybe [Prelude.Text],
    -- | Whether to allocate a TTY to the container.
    pseudoTerminal :: Prelude.Maybe Prelude.Bool,
    -- | A list of namespaced kernel parameters to set in the container.
    systemControls :: Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails],
    -- | The FireLens configuration for the container. Specifies and configures a
    -- log router for container logs.
    firelensConfiguration :: Prelude.Maybe AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails,
    -- | The working directory in which to run commands inside the container.
    workingDirectory :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsTaskDefinitionContainerDefinitionsDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'readonlyRootFilesystem', 'awsEcsTaskDefinitionContainerDefinitionsDetails_readonlyRootFilesystem' - Whether the container is given read-only access to its root file system.
--
-- 'healthCheck', 'awsEcsTaskDefinitionContainerDefinitionsDetails_healthCheck' - The container health check command and associated configuration
-- parameters for the container.
--
-- 'name', 'awsEcsTaskDefinitionContainerDefinitionsDetails_name' - The name of the container.
--
-- 'extraHosts', 'awsEcsTaskDefinitionContainerDefinitionsDetails_extraHosts' - A list of hostnames and IP address mappings to append to the
-- __\/etc\/hosts__ file on the container.
--
-- 'dependsOn', 'awsEcsTaskDefinitionContainerDefinitionsDetails_dependsOn' - The dependencies that are defined for container startup and shutdown.
--
-- 'logConfiguration', 'awsEcsTaskDefinitionContainerDefinitionsDetails_logConfiguration' - The log configuration specification for the container.
--
-- 'environment', 'awsEcsTaskDefinitionContainerDefinitionsDetails_environment' - The environment variables to pass to a container.
--
-- 'resourceRequirements', 'awsEcsTaskDefinitionContainerDefinitionsDetails_resourceRequirements' - The type and amount of a resource to assign to a container. The only
-- supported resource is a GPU.
--
-- 'cpu', 'awsEcsTaskDefinitionContainerDefinitionsDetails_cpu' - The number of CPU units reserved for the container.
--
-- 'memory', 'awsEcsTaskDefinitionContainerDefinitionsDetails_memory' - The amount (in MiB) of memory to present to the container. If the
-- container attempts to exceed the memory specified here, the container is
-- shut down. The total amount of memory reserved for all containers within
-- a task must be lower than the task memory value, if one is specified.
--
-- 'startTimeout', 'awsEcsTaskDefinitionContainerDefinitionsDetails_startTimeout' - The number of seconds to wait before giving up on resolving dependencies
-- for a container.
--
-- 'dnsServers', 'awsEcsTaskDefinitionContainerDefinitionsDetails_dnsServers' - A list of DNS servers that are presented to the container.
--
-- 'user', 'awsEcsTaskDefinitionContainerDefinitionsDetails_user' - The user to use inside the container.
--
-- The value can use one of the following formats.
--
-- -   @ user @
--
-- -   @ user @:@ group @
--
-- -   @ uid @
--
-- -   @ uid @:@ gid @
--
-- -   @ user @:@ gid @
--
-- -   @ uid @:@ group @
--
-- 'memoryReservation', 'awsEcsTaskDefinitionContainerDefinitionsDetails_memoryReservation' - The soft limit (in MiB) of memory to reserve for the container.
--
-- 'ulimits', 'awsEcsTaskDefinitionContainerDefinitionsDetails_ulimits' - A list of ulimits to set in the container.
--
-- 'repositoryCredentials', 'awsEcsTaskDefinitionContainerDefinitionsDetails_repositoryCredentials' - The private repository authentication credentials to use.
--
-- 'portMappings', 'awsEcsTaskDefinitionContainerDefinitionsDetails_portMappings' - The list of port mappings for the container.
--
-- 'command', 'awsEcsTaskDefinitionContainerDefinitionsDetails_command' - The command that is passed to the container.
--
-- 'hostname', 'awsEcsTaskDefinitionContainerDefinitionsDetails_hostname' - The hostname to use for the container.
--
-- 'environmentFiles', 'awsEcsTaskDefinitionContainerDefinitionsDetails_environmentFiles' - A list of files containing the environment variables to pass to a
-- container.
--
-- 'secrets', 'awsEcsTaskDefinitionContainerDefinitionsDetails_secrets' - The secrets to pass to the container.
--
-- 'disableNetworking', 'awsEcsTaskDefinitionContainerDefinitionsDetails_disableNetworking' - Whether to disable networking within the container.
--
-- 'dockerLabels', 'awsEcsTaskDefinitionContainerDefinitionsDetails_dockerLabels' - A key-value map of labels to add to the container.
--
-- 'volumesFrom', 'awsEcsTaskDefinitionContainerDefinitionsDetails_volumesFrom' - Data volumes to mount from another container.
--
-- 'dnsSearchDomains', 'awsEcsTaskDefinitionContainerDefinitionsDetails_dnsSearchDomains' - A list of DNS search domains that are presented to the container.
--
-- 'privileged', 'awsEcsTaskDefinitionContainerDefinitionsDetails_privileged' - Whether the container is given elevated privileges on the host container
-- instance. The elevated privileges are similar to the root user.
--
-- 'stopTimeout', 'awsEcsTaskDefinitionContainerDefinitionsDetails_stopTimeout' - The number of seconds to wait before the container is stopped if it
-- doesn\'t shut down normally on its own.
--
-- 'entryPoint', 'awsEcsTaskDefinitionContainerDefinitionsDetails_entryPoint' - The entry point that is passed to the container.
--
-- 'links', 'awsEcsTaskDefinitionContainerDefinitionsDetails_links' - A list of links for the container in the form @ container_name:alias @.
-- Allows containers to communicate with each other without the need for
-- port mappings.
--
-- 'mountPoints', 'awsEcsTaskDefinitionContainerDefinitionsDetails_mountPoints' - The mount points for the data volumes in the container.
--
-- 'image', 'awsEcsTaskDefinitionContainerDefinitionsDetails_image' - The image used to start the container.
--
-- 'essential', 'awsEcsTaskDefinitionContainerDefinitionsDetails_essential' - Whether the container is essential. All tasks must have at least one
-- essential container.
--
-- 'interactive', 'awsEcsTaskDefinitionContainerDefinitionsDetails_interactive' - If set to true, then containerized applications can be deployed that
-- require @stdin@ or a @tty@ to be allocated.
--
-- 'linuxParameters', 'awsEcsTaskDefinitionContainerDefinitionsDetails_linuxParameters' - Linux-specific modifications that are applied to the container, such as
-- Linux kernel capabilities.
--
-- 'dockerSecurityOptions', 'awsEcsTaskDefinitionContainerDefinitionsDetails_dockerSecurityOptions' - A list of strings to provide custom labels for SELinux and AppArmor
-- multi-level security systems.
--
-- 'pseudoTerminal', 'awsEcsTaskDefinitionContainerDefinitionsDetails_pseudoTerminal' - Whether to allocate a TTY to the container.
--
-- 'systemControls', 'awsEcsTaskDefinitionContainerDefinitionsDetails_systemControls' - A list of namespaced kernel parameters to set in the container.
--
-- 'firelensConfiguration', 'awsEcsTaskDefinitionContainerDefinitionsDetails_firelensConfiguration' - The FireLens configuration for the container. Specifies and configures a
-- log router for container logs.
--
-- 'workingDirectory', 'awsEcsTaskDefinitionContainerDefinitionsDetails_workingDirectory' - The working directory in which to run commands inside the container.
newAwsEcsTaskDefinitionContainerDefinitionsDetails ::
  AwsEcsTaskDefinitionContainerDefinitionsDetails
newAwsEcsTaskDefinitionContainerDefinitionsDetails =
  AwsEcsTaskDefinitionContainerDefinitionsDetails'
    { readonlyRootFilesystem =
        Prelude.Nothing,
      healthCheck =
        Prelude.Nothing,
      name = Prelude.Nothing,
      extraHosts =
        Prelude.Nothing,
      dependsOn =
        Prelude.Nothing,
      logConfiguration =
        Prelude.Nothing,
      environment =
        Prelude.Nothing,
      resourceRequirements =
        Prelude.Nothing,
      cpu = Prelude.Nothing,
      memory = Prelude.Nothing,
      startTimeout =
        Prelude.Nothing,
      dnsServers =
        Prelude.Nothing,
      user = Prelude.Nothing,
      memoryReservation =
        Prelude.Nothing,
      ulimits = Prelude.Nothing,
      repositoryCredentials =
        Prelude.Nothing,
      portMappings =
        Prelude.Nothing,
      command = Prelude.Nothing,
      hostname = Prelude.Nothing,
      environmentFiles =
        Prelude.Nothing,
      secrets = Prelude.Nothing,
      disableNetworking =
        Prelude.Nothing,
      dockerLabels =
        Prelude.Nothing,
      volumesFrom =
        Prelude.Nothing,
      dnsSearchDomains =
        Prelude.Nothing,
      privileged =
        Prelude.Nothing,
      stopTimeout =
        Prelude.Nothing,
      entryPoint =
        Prelude.Nothing,
      links = Prelude.Nothing,
      mountPoints =
        Prelude.Nothing,
      image = Prelude.Nothing,
      essential =
        Prelude.Nothing,
      interactive =
        Prelude.Nothing,
      linuxParameters =
        Prelude.Nothing,
      dockerSecurityOptions =
        Prelude.Nothing,
      pseudoTerminal =
        Prelude.Nothing,
      systemControls =
        Prelude.Nothing,
      firelensConfiguration =
        Prelude.Nothing,
      workingDirectory =
        Prelude.Nothing
    }

-- | Whether the container is given read-only access to its root file system.
awsEcsTaskDefinitionContainerDefinitionsDetails_readonlyRootFilesystem :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Bool)
awsEcsTaskDefinitionContainerDefinitionsDetails_readonlyRootFilesystem = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {readonlyRootFilesystem} -> readonlyRootFilesystem) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {readonlyRootFilesystem = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | The container health check command and associated configuration
-- parameters for the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_healthCheck :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails)
awsEcsTaskDefinitionContainerDefinitionsDetails_healthCheck = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {healthCheck} -> healthCheck) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {healthCheck = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | The name of the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_name :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Text)
awsEcsTaskDefinitionContainerDefinitionsDetails_name = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {name} -> name) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {name = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | A list of hostnames and IP address mappings to append to the
-- __\/etc\/hosts__ file on the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_extraHosts :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_extraHosts = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {extraHosts} -> extraHosts) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {extraHosts = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The dependencies that are defined for container startup and shutdown.
awsEcsTaskDefinitionContainerDefinitionsDetails_dependsOn :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_dependsOn = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {dependsOn} -> dependsOn) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {dependsOn = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The log configuration specification for the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_logConfiguration :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails)
awsEcsTaskDefinitionContainerDefinitionsDetails_logConfiguration = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {logConfiguration} -> logConfiguration) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {logConfiguration = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | The environment variables to pass to a container.
awsEcsTaskDefinitionContainerDefinitionsDetails_environment :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_environment = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {environment} -> environment) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {environment = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The type and amount of a resource to assign to a container. The only
-- supported resource is a GPU.
awsEcsTaskDefinitionContainerDefinitionsDetails_resourceRequirements :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_resourceRequirements = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {resourceRequirements} -> resourceRequirements) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {resourceRequirements = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The number of CPU units reserved for the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_cpu :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Int)
awsEcsTaskDefinitionContainerDefinitionsDetails_cpu = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {cpu} -> cpu) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {cpu = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | The amount (in MiB) of memory to present to the container. If the
-- container attempts to exceed the memory specified here, the container is
-- shut down. The total amount of memory reserved for all containers within
-- a task must be lower than the task memory value, if one is specified.
awsEcsTaskDefinitionContainerDefinitionsDetails_memory :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Int)
awsEcsTaskDefinitionContainerDefinitionsDetails_memory = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {memory} -> memory) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {memory = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | The number of seconds to wait before giving up on resolving dependencies
-- for a container.
awsEcsTaskDefinitionContainerDefinitionsDetails_startTimeout :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Int)
awsEcsTaskDefinitionContainerDefinitionsDetails_startTimeout = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {startTimeout} -> startTimeout) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {startTimeout = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | A list of DNS servers that are presented to the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_dnsServers :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [Prelude.Text])
awsEcsTaskDefinitionContainerDefinitionsDetails_dnsServers = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {dnsServers} -> dnsServers) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {dnsServers = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The user to use inside the container.
--
-- The value can use one of the following formats.
--
-- -   @ user @
--
-- -   @ user @:@ group @
--
-- -   @ uid @
--
-- -   @ uid @:@ gid @
--
-- -   @ user @:@ gid @
--
-- -   @ uid @:@ group @
awsEcsTaskDefinitionContainerDefinitionsDetails_user :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Text)
awsEcsTaskDefinitionContainerDefinitionsDetails_user = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {user} -> user) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {user = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | The soft limit (in MiB) of memory to reserve for the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_memoryReservation :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Int)
awsEcsTaskDefinitionContainerDefinitionsDetails_memoryReservation = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {memoryReservation} -> memoryReservation) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {memoryReservation = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | A list of ulimits to set in the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_ulimits :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_ulimits = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {ulimits} -> ulimits) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {ulimits = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The private repository authentication credentials to use.
awsEcsTaskDefinitionContainerDefinitionsDetails_repositoryCredentials :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails)
awsEcsTaskDefinitionContainerDefinitionsDetails_repositoryCredentials = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {repositoryCredentials} -> repositoryCredentials) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {repositoryCredentials = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | The list of port mappings for the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_portMappings :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_portMappings = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {portMappings} -> portMappings) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {portMappings = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The command that is passed to the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_command :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [Prelude.Text])
awsEcsTaskDefinitionContainerDefinitionsDetails_command = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {command} -> command) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {command = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The hostname to use for the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_hostname :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Text)
awsEcsTaskDefinitionContainerDefinitionsDetails_hostname = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {hostname} -> hostname) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {hostname = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | A list of files containing the environment variables to pass to a
-- container.
awsEcsTaskDefinitionContainerDefinitionsDetails_environmentFiles :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_environmentFiles = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {environmentFiles} -> environmentFiles) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {environmentFiles = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The secrets to pass to the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_secrets :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_secrets = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {secrets} -> secrets) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {secrets = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | Whether to disable networking within the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_disableNetworking :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Bool)
awsEcsTaskDefinitionContainerDefinitionsDetails_disableNetworking = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {disableNetworking} -> disableNetworking) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {disableNetworking = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | A key-value map of labels to add to the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_dockerLabels :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
awsEcsTaskDefinitionContainerDefinitionsDetails_dockerLabels = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {dockerLabels} -> dockerLabels) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {dockerLabels = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | Data volumes to mount from another container.
awsEcsTaskDefinitionContainerDefinitionsDetails_volumesFrom :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_volumesFrom = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {volumesFrom} -> volumesFrom) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {volumesFrom = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | A list of DNS search domains that are presented to the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_dnsSearchDomains :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [Prelude.Text])
awsEcsTaskDefinitionContainerDefinitionsDetails_dnsSearchDomains = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {dnsSearchDomains} -> dnsSearchDomains) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {dnsSearchDomains = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | Whether the container is given elevated privileges on the host container
-- instance. The elevated privileges are similar to the root user.
awsEcsTaskDefinitionContainerDefinitionsDetails_privileged :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Bool)
awsEcsTaskDefinitionContainerDefinitionsDetails_privileged = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {privileged} -> privileged) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {privileged = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | The number of seconds to wait before the container is stopped if it
-- doesn\'t shut down normally on its own.
awsEcsTaskDefinitionContainerDefinitionsDetails_stopTimeout :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Int)
awsEcsTaskDefinitionContainerDefinitionsDetails_stopTimeout = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {stopTimeout} -> stopTimeout) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {stopTimeout = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | The entry point that is passed to the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_entryPoint :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [Prelude.Text])
awsEcsTaskDefinitionContainerDefinitionsDetails_entryPoint = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {entryPoint} -> entryPoint) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {entryPoint = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | A list of links for the container in the form @ container_name:alias @.
-- Allows containers to communicate with each other without the need for
-- port mappings.
awsEcsTaskDefinitionContainerDefinitionsDetails_links :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [Prelude.Text])
awsEcsTaskDefinitionContainerDefinitionsDetails_links = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {links} -> links) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {links = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The mount points for the data volumes in the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_mountPoints :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_mountPoints = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {mountPoints} -> mountPoints) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {mountPoints = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The image used to start the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_image :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Text)
awsEcsTaskDefinitionContainerDefinitionsDetails_image = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {image} -> image) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {image = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | Whether the container is essential. All tasks must have at least one
-- essential container.
awsEcsTaskDefinitionContainerDefinitionsDetails_essential :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Bool)
awsEcsTaskDefinitionContainerDefinitionsDetails_essential = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {essential} -> essential) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {essential = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | If set to true, then containerized applications can be deployed that
-- require @stdin@ or a @tty@ to be allocated.
awsEcsTaskDefinitionContainerDefinitionsDetails_interactive :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Bool)
awsEcsTaskDefinitionContainerDefinitionsDetails_interactive = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {interactive} -> interactive) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {interactive = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | Linux-specific modifications that are applied to the container, such as
-- Linux kernel capabilities.
awsEcsTaskDefinitionContainerDefinitionsDetails_linuxParameters :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails)
awsEcsTaskDefinitionContainerDefinitionsDetails_linuxParameters = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {linuxParameters} -> linuxParameters) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {linuxParameters = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | A list of strings to provide custom labels for SELinux and AppArmor
-- multi-level security systems.
awsEcsTaskDefinitionContainerDefinitionsDetails_dockerSecurityOptions :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [Prelude.Text])
awsEcsTaskDefinitionContainerDefinitionsDetails_dockerSecurityOptions = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {dockerSecurityOptions} -> dockerSecurityOptions) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {dockerSecurityOptions = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | Whether to allocate a TTY to the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_pseudoTerminal :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Bool)
awsEcsTaskDefinitionContainerDefinitionsDetails_pseudoTerminal = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {pseudoTerminal} -> pseudoTerminal) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {pseudoTerminal = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | A list of namespaced kernel parameters to set in the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_systemControls :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe [AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails])
awsEcsTaskDefinitionContainerDefinitionsDetails_systemControls = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {systemControls} -> systemControls) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {systemControls = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | The FireLens configuration for the container. Specifies and configures a
-- log router for container logs.
awsEcsTaskDefinitionContainerDefinitionsDetails_firelensConfiguration :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails)
awsEcsTaskDefinitionContainerDefinitionsDetails_firelensConfiguration = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {firelensConfiguration} -> firelensConfiguration) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {firelensConfiguration = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

-- | The working directory in which to run commands inside the container.
awsEcsTaskDefinitionContainerDefinitionsDetails_workingDirectory :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsDetails (Prelude.Maybe Prelude.Text)
awsEcsTaskDefinitionContainerDefinitionsDetails_workingDirectory = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsDetails' {workingDirectory} -> workingDirectory) (\s@AwsEcsTaskDefinitionContainerDefinitionsDetails' {} a -> s {workingDirectory = a} :: AwsEcsTaskDefinitionContainerDefinitionsDetails)

instance
  Core.FromJSON
    AwsEcsTaskDefinitionContainerDefinitionsDetails
  where
  parseJSON =
    Core.withObject
      "AwsEcsTaskDefinitionContainerDefinitionsDetails"
      ( \x ->
          AwsEcsTaskDefinitionContainerDefinitionsDetails'
            Prelude.<$> (x Core..:? "ReadonlyRootFilesystem")
              Prelude.<*> (x Core..:? "HealthCheck")
              Prelude.<*> (x Core..:? "Name")
              Prelude.<*> (x Core..:? "ExtraHosts" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "DependsOn" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "LogConfiguration")
              Prelude.<*> (x Core..:? "Environment" Core..!= Prelude.mempty)
              Prelude.<*> ( x Core..:? "ResourceRequirements"
                              Core..!= Prelude.mempty
                          )
              Prelude.<*> (x Core..:? "Cpu")
              Prelude.<*> (x Core..:? "Memory")
              Prelude.<*> (x Core..:? "StartTimeout")
              Prelude.<*> (x Core..:? "DnsServers" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "User")
              Prelude.<*> (x Core..:? "MemoryReservation")
              Prelude.<*> (x Core..:? "Ulimits" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "RepositoryCredentials")
              Prelude.<*> (x Core..:? "PortMappings" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "Command" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "Hostname")
              Prelude.<*> ( x Core..:? "EnvironmentFiles"
                              Core..!= Prelude.mempty
                          )
              Prelude.<*> (x Core..:? "Secrets" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "DisableNetworking")
              Prelude.<*> (x Core..:? "DockerLabels" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "VolumesFrom" Core..!= Prelude.mempty)
              Prelude.<*> ( x Core..:? "DnsSearchDomains"
                              Core..!= Prelude.mempty
                          )
              Prelude.<*> (x Core..:? "Privileged")
              Prelude.<*> (x Core..:? "StopTimeout")
              Prelude.<*> (x Core..:? "EntryPoint" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "Links" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "MountPoints" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "Image")
              Prelude.<*> (x Core..:? "Essential")
              Prelude.<*> (x Core..:? "Interactive")
              Prelude.<*> (x Core..:? "LinuxParameters")
              Prelude.<*> ( x Core..:? "DockerSecurityOptions"
                              Core..!= Prelude.mempty
                          )
              Prelude.<*> (x Core..:? "PseudoTerminal")
              Prelude.<*> (x Core..:? "SystemControls" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "FirelensConfiguration")
              Prelude.<*> (x Core..:? "WorkingDirectory")
      )

instance
  Prelude.Hashable
    AwsEcsTaskDefinitionContainerDefinitionsDetails
  where
  hashWithSalt
    _salt
    AwsEcsTaskDefinitionContainerDefinitionsDetails' {..} =
      _salt `Prelude.hashWithSalt` readonlyRootFilesystem
        `Prelude.hashWithSalt` healthCheck
        `Prelude.hashWithSalt` name
        `Prelude.hashWithSalt` extraHosts
        `Prelude.hashWithSalt` dependsOn
        `Prelude.hashWithSalt` logConfiguration
        `Prelude.hashWithSalt` environment
        `Prelude.hashWithSalt` resourceRequirements
        `Prelude.hashWithSalt` cpu
        `Prelude.hashWithSalt` memory
        `Prelude.hashWithSalt` startTimeout
        `Prelude.hashWithSalt` dnsServers
        `Prelude.hashWithSalt` user
        `Prelude.hashWithSalt` memoryReservation
        `Prelude.hashWithSalt` ulimits
        `Prelude.hashWithSalt` repositoryCredentials
        `Prelude.hashWithSalt` portMappings
        `Prelude.hashWithSalt` command
        `Prelude.hashWithSalt` hostname
        `Prelude.hashWithSalt` environmentFiles
        `Prelude.hashWithSalt` secrets
        `Prelude.hashWithSalt` disableNetworking
        `Prelude.hashWithSalt` dockerLabels
        `Prelude.hashWithSalt` volumesFrom
        `Prelude.hashWithSalt` dnsSearchDomains
        `Prelude.hashWithSalt` privileged
        `Prelude.hashWithSalt` stopTimeout
        `Prelude.hashWithSalt` entryPoint
        `Prelude.hashWithSalt` links
        `Prelude.hashWithSalt` mountPoints
        `Prelude.hashWithSalt` image
        `Prelude.hashWithSalt` essential
        `Prelude.hashWithSalt` interactive
        `Prelude.hashWithSalt` linuxParameters
        `Prelude.hashWithSalt` dockerSecurityOptions
        `Prelude.hashWithSalt` pseudoTerminal
        `Prelude.hashWithSalt` systemControls
        `Prelude.hashWithSalt` firelensConfiguration
        `Prelude.hashWithSalt` workingDirectory

instance
  Prelude.NFData
    AwsEcsTaskDefinitionContainerDefinitionsDetails
  where
  rnf
    AwsEcsTaskDefinitionContainerDefinitionsDetails' {..} =
      Prelude.rnf readonlyRootFilesystem
        `Prelude.seq` Prelude.rnf healthCheck
        `Prelude.seq` Prelude.rnf name
        `Prelude.seq` Prelude.rnf extraHosts
        `Prelude.seq` Prelude.rnf dependsOn
        `Prelude.seq` Prelude.rnf logConfiguration
        `Prelude.seq` Prelude.rnf environment
        `Prelude.seq` Prelude.rnf resourceRequirements
        `Prelude.seq` Prelude.rnf cpu
        `Prelude.seq` Prelude.rnf memory
        `Prelude.seq` Prelude.rnf startTimeout
        `Prelude.seq` Prelude.rnf dnsServers
        `Prelude.seq` Prelude.rnf user
        `Prelude.seq` Prelude.rnf memoryReservation
        `Prelude.seq` Prelude.rnf ulimits
        `Prelude.seq` Prelude.rnf repositoryCredentials
        `Prelude.seq` Prelude.rnf portMappings
        `Prelude.seq` Prelude.rnf command
        `Prelude.seq` Prelude.rnf hostname
        `Prelude.seq` Prelude.rnf environmentFiles
        `Prelude.seq` Prelude.rnf secrets
        `Prelude.seq` Prelude.rnf
          disableNetworking
        `Prelude.seq` Prelude.rnf dockerLabels
        `Prelude.seq` Prelude.rnf
          volumesFrom
        `Prelude.seq` Prelude.rnf
          dnsSearchDomains
        `Prelude.seq` Prelude.rnf
          privileged
        `Prelude.seq` Prelude.rnf
          stopTimeout
        `Prelude.seq` Prelude.rnf
          entryPoint
        `Prelude.seq` Prelude.rnf
          links
        `Prelude.seq` Prelude.rnf
          mountPoints
        `Prelude.seq` Prelude.rnf
          image
        `Prelude.seq` Prelude.rnf
          essential
        `Prelude.seq` Prelude.rnf
          interactive
        `Prelude.seq` Prelude.rnf
          linuxParameters
        `Prelude.seq` Prelude.rnf
          dockerSecurityOptions
        `Prelude.seq` Prelude.rnf
          pseudoTerminal
        `Prelude.seq` Prelude.rnf
          systemControls
        `Prelude.seq` Prelude.rnf
          firelensConfiguration
        `Prelude.seq` Prelude.rnf
          workingDirectory

instance
  Core.ToJSON
    AwsEcsTaskDefinitionContainerDefinitionsDetails
  where
  toJSON
    AwsEcsTaskDefinitionContainerDefinitionsDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("ReadonlyRootFilesystem" Core..=)
                Prelude.<$> readonlyRootFilesystem,
              ("HealthCheck" Core..=) Prelude.<$> healthCheck,
              ("Name" Core..=) Prelude.<$> name,
              ("ExtraHosts" Core..=) Prelude.<$> extraHosts,
              ("DependsOn" Core..=) Prelude.<$> dependsOn,
              ("LogConfiguration" Core..=)
                Prelude.<$> logConfiguration,
              ("Environment" Core..=) Prelude.<$> environment,
              ("ResourceRequirements" Core..=)
                Prelude.<$> resourceRequirements,
              ("Cpu" Core..=) Prelude.<$> cpu,
              ("Memory" Core..=) Prelude.<$> memory,
              ("StartTimeout" Core..=) Prelude.<$> startTimeout,
              ("DnsServers" Core..=) Prelude.<$> dnsServers,
              ("User" Core..=) Prelude.<$> user,
              ("MemoryReservation" Core..=)
                Prelude.<$> memoryReservation,
              ("Ulimits" Core..=) Prelude.<$> ulimits,
              ("RepositoryCredentials" Core..=)
                Prelude.<$> repositoryCredentials,
              ("PortMappings" Core..=) Prelude.<$> portMappings,
              ("Command" Core..=) Prelude.<$> command,
              ("Hostname" Core..=) Prelude.<$> hostname,
              ("EnvironmentFiles" Core..=)
                Prelude.<$> environmentFiles,
              ("Secrets" Core..=) Prelude.<$> secrets,
              ("DisableNetworking" Core..=)
                Prelude.<$> disableNetworking,
              ("DockerLabels" Core..=) Prelude.<$> dockerLabels,
              ("VolumesFrom" Core..=) Prelude.<$> volumesFrom,
              ("DnsSearchDomains" Core..=)
                Prelude.<$> dnsSearchDomains,
              ("Privileged" Core..=) Prelude.<$> privileged,
              ("StopTimeout" Core..=) Prelude.<$> stopTimeout,
              ("EntryPoint" Core..=) Prelude.<$> entryPoint,
              ("Links" Core..=) Prelude.<$> links,
              ("MountPoints" Core..=) Prelude.<$> mountPoints,
              ("Image" Core..=) Prelude.<$> image,
              ("Essential" Core..=) Prelude.<$> essential,
              ("Interactive" Core..=) Prelude.<$> interactive,
              ("LinuxParameters" Core..=)
                Prelude.<$> linuxParameters,
              ("DockerSecurityOptions" Core..=)
                Prelude.<$> dockerSecurityOptions,
              ("PseudoTerminal" Core..=)
                Prelude.<$> pseudoTerminal,
              ("SystemControls" Core..=)
                Prelude.<$> systemControls,
              ("FirelensConfiguration" Core..=)
                Prelude.<$> firelensConfiguration,
              ("WorkingDirectory" Core..=)
                Prelude.<$> workingDirectory
            ]
        )
