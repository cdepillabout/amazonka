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
-- Module      : Amazonka.ElasticSearch.Types.AdvancedSecurityOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticSearch.Types.AdvancedSecurityOptions where

import qualified Amazonka.Core as Core
import Amazonka.ElasticSearch.Types.SAMLOptionsOutput
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies the advanced security configuration: whether advanced security
-- is enabled, whether the internal database option is enabled.
--
-- /See:/ 'newAdvancedSecurityOptions' smart constructor.
data AdvancedSecurityOptions = AdvancedSecurityOptions'
  { -- | True if the internal user database is enabled.
    internalUserDatabaseEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Describes the SAML application configured for a domain.
    sAMLOptions :: Prelude.Maybe SAMLOptionsOutput,
    -- | True if Anonymous auth is enabled. Anonymous auth can be enabled only
    -- when AdvancedSecurity is enabled on existing domains.
    anonymousAuthEnabled :: Prelude.Maybe Prelude.Bool,
    -- | True if advanced security is enabled.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the Anonymous Auth Disable Date when Anonymous Auth is
    -- enabled.
    anonymousAuthDisableDate :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AdvancedSecurityOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'internalUserDatabaseEnabled', 'advancedSecurityOptions_internalUserDatabaseEnabled' - True if the internal user database is enabled.
--
-- 'sAMLOptions', 'advancedSecurityOptions_sAMLOptions' - Describes the SAML application configured for a domain.
--
-- 'anonymousAuthEnabled', 'advancedSecurityOptions_anonymousAuthEnabled' - True if Anonymous auth is enabled. Anonymous auth can be enabled only
-- when AdvancedSecurity is enabled on existing domains.
--
-- 'enabled', 'advancedSecurityOptions_enabled' - True if advanced security is enabled.
--
-- 'anonymousAuthDisableDate', 'advancedSecurityOptions_anonymousAuthDisableDate' - Specifies the Anonymous Auth Disable Date when Anonymous Auth is
-- enabled.
newAdvancedSecurityOptions ::
  AdvancedSecurityOptions
newAdvancedSecurityOptions =
  AdvancedSecurityOptions'
    { internalUserDatabaseEnabled =
        Prelude.Nothing,
      sAMLOptions = Prelude.Nothing,
      anonymousAuthEnabled = Prelude.Nothing,
      enabled = Prelude.Nothing,
      anonymousAuthDisableDate = Prelude.Nothing
    }

-- | True if the internal user database is enabled.
advancedSecurityOptions_internalUserDatabaseEnabled :: Lens.Lens' AdvancedSecurityOptions (Prelude.Maybe Prelude.Bool)
advancedSecurityOptions_internalUserDatabaseEnabled = Lens.lens (\AdvancedSecurityOptions' {internalUserDatabaseEnabled} -> internalUserDatabaseEnabled) (\s@AdvancedSecurityOptions' {} a -> s {internalUserDatabaseEnabled = a} :: AdvancedSecurityOptions)

-- | Describes the SAML application configured for a domain.
advancedSecurityOptions_sAMLOptions :: Lens.Lens' AdvancedSecurityOptions (Prelude.Maybe SAMLOptionsOutput)
advancedSecurityOptions_sAMLOptions = Lens.lens (\AdvancedSecurityOptions' {sAMLOptions} -> sAMLOptions) (\s@AdvancedSecurityOptions' {} a -> s {sAMLOptions = a} :: AdvancedSecurityOptions)

-- | True if Anonymous auth is enabled. Anonymous auth can be enabled only
-- when AdvancedSecurity is enabled on existing domains.
advancedSecurityOptions_anonymousAuthEnabled :: Lens.Lens' AdvancedSecurityOptions (Prelude.Maybe Prelude.Bool)
advancedSecurityOptions_anonymousAuthEnabled = Lens.lens (\AdvancedSecurityOptions' {anonymousAuthEnabled} -> anonymousAuthEnabled) (\s@AdvancedSecurityOptions' {} a -> s {anonymousAuthEnabled = a} :: AdvancedSecurityOptions)

-- | True if advanced security is enabled.
advancedSecurityOptions_enabled :: Lens.Lens' AdvancedSecurityOptions (Prelude.Maybe Prelude.Bool)
advancedSecurityOptions_enabled = Lens.lens (\AdvancedSecurityOptions' {enabled} -> enabled) (\s@AdvancedSecurityOptions' {} a -> s {enabled = a} :: AdvancedSecurityOptions)

-- | Specifies the Anonymous Auth Disable Date when Anonymous Auth is
-- enabled.
advancedSecurityOptions_anonymousAuthDisableDate :: Lens.Lens' AdvancedSecurityOptions (Prelude.Maybe Prelude.UTCTime)
advancedSecurityOptions_anonymousAuthDisableDate = Lens.lens (\AdvancedSecurityOptions' {anonymousAuthDisableDate} -> anonymousAuthDisableDate) (\s@AdvancedSecurityOptions' {} a -> s {anonymousAuthDisableDate = a} :: AdvancedSecurityOptions) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON AdvancedSecurityOptions where
  parseJSON =
    Core.withObject
      "AdvancedSecurityOptions"
      ( \x ->
          AdvancedSecurityOptions'
            Prelude.<$> (x Core..:? "InternalUserDatabaseEnabled")
            Prelude.<*> (x Core..:? "SAMLOptions")
            Prelude.<*> (x Core..:? "AnonymousAuthEnabled")
            Prelude.<*> (x Core..:? "Enabled")
            Prelude.<*> (x Core..:? "AnonymousAuthDisableDate")
      )

instance Prelude.Hashable AdvancedSecurityOptions where
  hashWithSalt _salt AdvancedSecurityOptions' {..} =
    _salt
      `Prelude.hashWithSalt` internalUserDatabaseEnabled
      `Prelude.hashWithSalt` sAMLOptions
      `Prelude.hashWithSalt` anonymousAuthEnabled
      `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` anonymousAuthDisableDate

instance Prelude.NFData AdvancedSecurityOptions where
  rnf AdvancedSecurityOptions' {..} =
    Prelude.rnf internalUserDatabaseEnabled
      `Prelude.seq` Prelude.rnf sAMLOptions
      `Prelude.seq` Prelude.rnf anonymousAuthEnabled
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf anonymousAuthDisableDate
