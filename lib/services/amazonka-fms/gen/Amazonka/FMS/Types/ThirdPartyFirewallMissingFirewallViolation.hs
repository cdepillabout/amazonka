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
-- Module      : Amazonka.FMS.Types.ThirdPartyFirewallMissingFirewallViolation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FMS.Types.ThirdPartyFirewallMissingFirewallViolation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The violation details about a third-party firewall\'s subnet that
-- doesn\'t have a Firewall Manager managed firewall in its VPC.
--
-- /See:/ 'newThirdPartyFirewallMissingFirewallViolation' smart constructor.
data ThirdPartyFirewallMissingFirewallViolation = ThirdPartyFirewallMissingFirewallViolation'
  { -- | The resource ID of the VPC associated with a third-party firewall.
    vpc :: Prelude.Maybe Prelude.Text,
    -- | The ID of the third-party firewall that\'s causing the violation.
    violationTarget :: Prelude.Maybe Prelude.Text,
    -- | The Availability Zone of the third-party firewall that\'s causing the
    -- violation.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The reason the resource is causing this violation, if a reason is
    -- available.
    targetViolationReason :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ThirdPartyFirewallMissingFirewallViolation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vpc', 'thirdPartyFirewallMissingFirewallViolation_vpc' - The resource ID of the VPC associated with a third-party firewall.
--
-- 'violationTarget', 'thirdPartyFirewallMissingFirewallViolation_violationTarget' - The ID of the third-party firewall that\'s causing the violation.
--
-- 'availabilityZone', 'thirdPartyFirewallMissingFirewallViolation_availabilityZone' - The Availability Zone of the third-party firewall that\'s causing the
-- violation.
--
-- 'targetViolationReason', 'thirdPartyFirewallMissingFirewallViolation_targetViolationReason' - The reason the resource is causing this violation, if a reason is
-- available.
newThirdPartyFirewallMissingFirewallViolation ::
  ThirdPartyFirewallMissingFirewallViolation
newThirdPartyFirewallMissingFirewallViolation =
  ThirdPartyFirewallMissingFirewallViolation'
    { vpc =
        Prelude.Nothing,
      violationTarget =
        Prelude.Nothing,
      availabilityZone =
        Prelude.Nothing,
      targetViolationReason =
        Prelude.Nothing
    }

-- | The resource ID of the VPC associated with a third-party firewall.
thirdPartyFirewallMissingFirewallViolation_vpc :: Lens.Lens' ThirdPartyFirewallMissingFirewallViolation (Prelude.Maybe Prelude.Text)
thirdPartyFirewallMissingFirewallViolation_vpc = Lens.lens (\ThirdPartyFirewallMissingFirewallViolation' {vpc} -> vpc) (\s@ThirdPartyFirewallMissingFirewallViolation' {} a -> s {vpc = a} :: ThirdPartyFirewallMissingFirewallViolation)

-- | The ID of the third-party firewall that\'s causing the violation.
thirdPartyFirewallMissingFirewallViolation_violationTarget :: Lens.Lens' ThirdPartyFirewallMissingFirewallViolation (Prelude.Maybe Prelude.Text)
thirdPartyFirewallMissingFirewallViolation_violationTarget = Lens.lens (\ThirdPartyFirewallMissingFirewallViolation' {violationTarget} -> violationTarget) (\s@ThirdPartyFirewallMissingFirewallViolation' {} a -> s {violationTarget = a} :: ThirdPartyFirewallMissingFirewallViolation)

-- | The Availability Zone of the third-party firewall that\'s causing the
-- violation.
thirdPartyFirewallMissingFirewallViolation_availabilityZone :: Lens.Lens' ThirdPartyFirewallMissingFirewallViolation (Prelude.Maybe Prelude.Text)
thirdPartyFirewallMissingFirewallViolation_availabilityZone = Lens.lens (\ThirdPartyFirewallMissingFirewallViolation' {availabilityZone} -> availabilityZone) (\s@ThirdPartyFirewallMissingFirewallViolation' {} a -> s {availabilityZone = a} :: ThirdPartyFirewallMissingFirewallViolation)

-- | The reason the resource is causing this violation, if a reason is
-- available.
thirdPartyFirewallMissingFirewallViolation_targetViolationReason :: Lens.Lens' ThirdPartyFirewallMissingFirewallViolation (Prelude.Maybe Prelude.Text)
thirdPartyFirewallMissingFirewallViolation_targetViolationReason = Lens.lens (\ThirdPartyFirewallMissingFirewallViolation' {targetViolationReason} -> targetViolationReason) (\s@ThirdPartyFirewallMissingFirewallViolation' {} a -> s {targetViolationReason = a} :: ThirdPartyFirewallMissingFirewallViolation)

instance
  Core.FromJSON
    ThirdPartyFirewallMissingFirewallViolation
  where
  parseJSON =
    Core.withObject
      "ThirdPartyFirewallMissingFirewallViolation"
      ( \x ->
          ThirdPartyFirewallMissingFirewallViolation'
            Prelude.<$> (x Core..:? "VPC")
              Prelude.<*> (x Core..:? "ViolationTarget")
              Prelude.<*> (x Core..:? "AvailabilityZone")
              Prelude.<*> (x Core..:? "TargetViolationReason")
      )

instance
  Prelude.Hashable
    ThirdPartyFirewallMissingFirewallViolation
  where
  hashWithSalt
    _salt
    ThirdPartyFirewallMissingFirewallViolation' {..} =
      _salt `Prelude.hashWithSalt` vpc
        `Prelude.hashWithSalt` violationTarget
        `Prelude.hashWithSalt` availabilityZone
        `Prelude.hashWithSalt` targetViolationReason

instance
  Prelude.NFData
    ThirdPartyFirewallMissingFirewallViolation
  where
  rnf ThirdPartyFirewallMissingFirewallViolation' {..} =
    Prelude.rnf vpc
      `Prelude.seq` Prelude.rnf violationTarget
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf targetViolationReason
