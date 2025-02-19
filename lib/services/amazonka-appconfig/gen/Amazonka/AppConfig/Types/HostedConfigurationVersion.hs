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
-- Module      : Amazonka.AppConfig.Types.HostedConfigurationVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppConfig.Types.HostedConfigurationVersion where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | /See:/ 'newHostedConfigurationVersion' smart constructor.
data HostedConfigurationVersion = HostedConfigurationVersion'
  { -- | A description of the configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | The configuration version.
    versionNumber :: Prelude.Maybe Prelude.Int,
    -- | The application ID.
    applicationId :: Prelude.Maybe Prelude.Text,
    -- | The content of the configuration or the configuration data.
    content :: Prelude.Maybe (Core.Sensitive Prelude.ByteString),
    -- | The configuration profile ID.
    configurationProfileId :: Prelude.Maybe Prelude.Text,
    -- | A standard MIME type describing the format of the configuration content.
    -- For more information, see
    -- <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17 Content-Type>.
    contentType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HostedConfigurationVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'hostedConfigurationVersion_description' - A description of the configuration.
--
-- 'versionNumber', 'hostedConfigurationVersion_versionNumber' - The configuration version.
--
-- 'applicationId', 'hostedConfigurationVersion_applicationId' - The application ID.
--
-- 'content', 'hostedConfigurationVersion_content' - The content of the configuration or the configuration data.
--
-- 'configurationProfileId', 'hostedConfigurationVersion_configurationProfileId' - The configuration profile ID.
--
-- 'contentType', 'hostedConfigurationVersion_contentType' - A standard MIME type describing the format of the configuration content.
-- For more information, see
-- <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17 Content-Type>.
newHostedConfigurationVersion ::
  HostedConfigurationVersion
newHostedConfigurationVersion =
  HostedConfigurationVersion'
    { description =
        Prelude.Nothing,
      versionNumber = Prelude.Nothing,
      applicationId = Prelude.Nothing,
      content = Prelude.Nothing,
      configurationProfileId = Prelude.Nothing,
      contentType = Prelude.Nothing
    }

-- | A description of the configuration.
hostedConfigurationVersion_description :: Lens.Lens' HostedConfigurationVersion (Prelude.Maybe Prelude.Text)
hostedConfigurationVersion_description = Lens.lens (\HostedConfigurationVersion' {description} -> description) (\s@HostedConfigurationVersion' {} a -> s {description = a} :: HostedConfigurationVersion)

-- | The configuration version.
hostedConfigurationVersion_versionNumber :: Lens.Lens' HostedConfigurationVersion (Prelude.Maybe Prelude.Int)
hostedConfigurationVersion_versionNumber = Lens.lens (\HostedConfigurationVersion' {versionNumber} -> versionNumber) (\s@HostedConfigurationVersion' {} a -> s {versionNumber = a} :: HostedConfigurationVersion)

-- | The application ID.
hostedConfigurationVersion_applicationId :: Lens.Lens' HostedConfigurationVersion (Prelude.Maybe Prelude.Text)
hostedConfigurationVersion_applicationId = Lens.lens (\HostedConfigurationVersion' {applicationId} -> applicationId) (\s@HostedConfigurationVersion' {} a -> s {applicationId = a} :: HostedConfigurationVersion)

-- | The content of the configuration or the configuration data.
hostedConfigurationVersion_content :: Lens.Lens' HostedConfigurationVersion (Prelude.Maybe Prelude.ByteString)
hostedConfigurationVersion_content = Lens.lens (\HostedConfigurationVersion' {content} -> content) (\s@HostedConfigurationVersion' {} a -> s {content = a} :: HostedConfigurationVersion) Prelude.. Lens.mapping Core._Sensitive

-- | The configuration profile ID.
hostedConfigurationVersion_configurationProfileId :: Lens.Lens' HostedConfigurationVersion (Prelude.Maybe Prelude.Text)
hostedConfigurationVersion_configurationProfileId = Lens.lens (\HostedConfigurationVersion' {configurationProfileId} -> configurationProfileId) (\s@HostedConfigurationVersion' {} a -> s {configurationProfileId = a} :: HostedConfigurationVersion)

-- | A standard MIME type describing the format of the configuration content.
-- For more information, see
-- <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17 Content-Type>.
hostedConfigurationVersion_contentType :: Lens.Lens' HostedConfigurationVersion (Prelude.Maybe Prelude.Text)
hostedConfigurationVersion_contentType = Lens.lens (\HostedConfigurationVersion' {contentType} -> contentType) (\s@HostedConfigurationVersion' {} a -> s {contentType = a} :: HostedConfigurationVersion)

instance Prelude.Hashable HostedConfigurationVersion where
  hashWithSalt _salt HostedConfigurationVersion' {..} =
    _salt `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` versionNumber
      `Prelude.hashWithSalt` applicationId
      `Prelude.hashWithSalt` content
      `Prelude.hashWithSalt` configurationProfileId
      `Prelude.hashWithSalt` contentType

instance Prelude.NFData HostedConfigurationVersion where
  rnf HostedConfigurationVersion' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf versionNumber
      `Prelude.seq` Prelude.rnf applicationId
      `Prelude.seq` Prelude.rnf content
      `Prelude.seq` Prelude.rnf configurationProfileId
      `Prelude.seq` Prelude.rnf contentType
