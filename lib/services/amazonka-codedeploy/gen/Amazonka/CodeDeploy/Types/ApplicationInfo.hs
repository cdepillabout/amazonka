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
-- Module      : Amazonka.CodeDeploy.Types.ApplicationInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeDeploy.Types.ApplicationInfo where

import Amazonka.CodeDeploy.Types.ComputePlatform
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about an application.
--
-- /See:/ 'newApplicationInfo' smart constructor.
data ApplicationInfo = ApplicationInfo'
  { -- | True if the user has authenticated with GitHub for the specified
    -- application. Otherwise, false.
    linkedToGitHub :: Prelude.Maybe Prelude.Bool,
    -- | The name for a connection to a GitHub account.
    gitHubAccountName :: Prelude.Maybe Prelude.Text,
    -- | The destination platform type for deployment of the application
    -- (@Lambda@ or @Server@).
    computePlatform :: Prelude.Maybe ComputePlatform,
    -- | The time at which the application was created.
    createTime :: Prelude.Maybe Core.POSIX,
    -- | The application ID.
    applicationId :: Prelude.Maybe Prelude.Text,
    -- | The application name.
    applicationName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplicationInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'linkedToGitHub', 'applicationInfo_linkedToGitHub' - True if the user has authenticated with GitHub for the specified
-- application. Otherwise, false.
--
-- 'gitHubAccountName', 'applicationInfo_gitHubAccountName' - The name for a connection to a GitHub account.
--
-- 'computePlatform', 'applicationInfo_computePlatform' - The destination platform type for deployment of the application
-- (@Lambda@ or @Server@).
--
-- 'createTime', 'applicationInfo_createTime' - The time at which the application was created.
--
-- 'applicationId', 'applicationInfo_applicationId' - The application ID.
--
-- 'applicationName', 'applicationInfo_applicationName' - The application name.
newApplicationInfo ::
  ApplicationInfo
newApplicationInfo =
  ApplicationInfo'
    { linkedToGitHub = Prelude.Nothing,
      gitHubAccountName = Prelude.Nothing,
      computePlatform = Prelude.Nothing,
      createTime = Prelude.Nothing,
      applicationId = Prelude.Nothing,
      applicationName = Prelude.Nothing
    }

-- | True if the user has authenticated with GitHub for the specified
-- application. Otherwise, false.
applicationInfo_linkedToGitHub :: Lens.Lens' ApplicationInfo (Prelude.Maybe Prelude.Bool)
applicationInfo_linkedToGitHub = Lens.lens (\ApplicationInfo' {linkedToGitHub} -> linkedToGitHub) (\s@ApplicationInfo' {} a -> s {linkedToGitHub = a} :: ApplicationInfo)

-- | The name for a connection to a GitHub account.
applicationInfo_gitHubAccountName :: Lens.Lens' ApplicationInfo (Prelude.Maybe Prelude.Text)
applicationInfo_gitHubAccountName = Lens.lens (\ApplicationInfo' {gitHubAccountName} -> gitHubAccountName) (\s@ApplicationInfo' {} a -> s {gitHubAccountName = a} :: ApplicationInfo)

-- | The destination platform type for deployment of the application
-- (@Lambda@ or @Server@).
applicationInfo_computePlatform :: Lens.Lens' ApplicationInfo (Prelude.Maybe ComputePlatform)
applicationInfo_computePlatform = Lens.lens (\ApplicationInfo' {computePlatform} -> computePlatform) (\s@ApplicationInfo' {} a -> s {computePlatform = a} :: ApplicationInfo)

-- | The time at which the application was created.
applicationInfo_createTime :: Lens.Lens' ApplicationInfo (Prelude.Maybe Prelude.UTCTime)
applicationInfo_createTime = Lens.lens (\ApplicationInfo' {createTime} -> createTime) (\s@ApplicationInfo' {} a -> s {createTime = a} :: ApplicationInfo) Prelude.. Lens.mapping Core._Time

-- | The application ID.
applicationInfo_applicationId :: Lens.Lens' ApplicationInfo (Prelude.Maybe Prelude.Text)
applicationInfo_applicationId = Lens.lens (\ApplicationInfo' {applicationId} -> applicationId) (\s@ApplicationInfo' {} a -> s {applicationId = a} :: ApplicationInfo)

-- | The application name.
applicationInfo_applicationName :: Lens.Lens' ApplicationInfo (Prelude.Maybe Prelude.Text)
applicationInfo_applicationName = Lens.lens (\ApplicationInfo' {applicationName} -> applicationName) (\s@ApplicationInfo' {} a -> s {applicationName = a} :: ApplicationInfo)

instance Core.FromJSON ApplicationInfo where
  parseJSON =
    Core.withObject
      "ApplicationInfo"
      ( \x ->
          ApplicationInfo'
            Prelude.<$> (x Core..:? "linkedToGitHub")
            Prelude.<*> (x Core..:? "gitHubAccountName")
            Prelude.<*> (x Core..:? "computePlatform")
            Prelude.<*> (x Core..:? "createTime")
            Prelude.<*> (x Core..:? "applicationId")
            Prelude.<*> (x Core..:? "applicationName")
      )

instance Prelude.Hashable ApplicationInfo where
  hashWithSalt _salt ApplicationInfo' {..} =
    _salt `Prelude.hashWithSalt` linkedToGitHub
      `Prelude.hashWithSalt` gitHubAccountName
      `Prelude.hashWithSalt` computePlatform
      `Prelude.hashWithSalt` createTime
      `Prelude.hashWithSalt` applicationId
      `Prelude.hashWithSalt` applicationName

instance Prelude.NFData ApplicationInfo where
  rnf ApplicationInfo' {..} =
    Prelude.rnf linkedToGitHub
      `Prelude.seq` Prelude.rnf gitHubAccountName
      `Prelude.seq` Prelude.rnf computePlatform
      `Prelude.seq` Prelude.rnf createTime
      `Prelude.seq` Prelude.rnf applicationId
      `Prelude.seq` Prelude.rnf applicationName
