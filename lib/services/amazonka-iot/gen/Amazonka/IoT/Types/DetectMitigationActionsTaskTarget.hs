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
-- Module      : Amazonka.IoT.Types.DetectMitigationActionsTaskTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.DetectMitigationActionsTaskTarget where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The target of a mitigation action task.
--
-- /See:/ 'newDetectMitigationActionsTaskTarget' smart constructor.
data DetectMitigationActionsTaskTarget = DetectMitigationActionsTaskTarget'
  { -- | The name of the behavior.
    behaviorName :: Prelude.Maybe Prelude.Text,
    -- | The unique identifiers of the violations.
    violationIds :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The name of the security profile.
    securityProfileName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DetectMitigationActionsTaskTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'behaviorName', 'detectMitigationActionsTaskTarget_behaviorName' - The name of the behavior.
--
-- 'violationIds', 'detectMitigationActionsTaskTarget_violationIds' - The unique identifiers of the violations.
--
-- 'securityProfileName', 'detectMitigationActionsTaskTarget_securityProfileName' - The name of the security profile.
newDetectMitigationActionsTaskTarget ::
  DetectMitigationActionsTaskTarget
newDetectMitigationActionsTaskTarget =
  DetectMitigationActionsTaskTarget'
    { behaviorName =
        Prelude.Nothing,
      violationIds = Prelude.Nothing,
      securityProfileName = Prelude.Nothing
    }

-- | The name of the behavior.
detectMitigationActionsTaskTarget_behaviorName :: Lens.Lens' DetectMitigationActionsTaskTarget (Prelude.Maybe Prelude.Text)
detectMitigationActionsTaskTarget_behaviorName = Lens.lens (\DetectMitigationActionsTaskTarget' {behaviorName} -> behaviorName) (\s@DetectMitigationActionsTaskTarget' {} a -> s {behaviorName = a} :: DetectMitigationActionsTaskTarget)

-- | The unique identifiers of the violations.
detectMitigationActionsTaskTarget_violationIds :: Lens.Lens' DetectMitigationActionsTaskTarget (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
detectMitigationActionsTaskTarget_violationIds = Lens.lens (\DetectMitigationActionsTaskTarget' {violationIds} -> violationIds) (\s@DetectMitigationActionsTaskTarget' {} a -> s {violationIds = a} :: DetectMitigationActionsTaskTarget) Prelude.. Lens.mapping Lens.coerced

-- | The name of the security profile.
detectMitigationActionsTaskTarget_securityProfileName :: Lens.Lens' DetectMitigationActionsTaskTarget (Prelude.Maybe Prelude.Text)
detectMitigationActionsTaskTarget_securityProfileName = Lens.lens (\DetectMitigationActionsTaskTarget' {securityProfileName} -> securityProfileName) (\s@DetectMitigationActionsTaskTarget' {} a -> s {securityProfileName = a} :: DetectMitigationActionsTaskTarget)

instance
  Core.FromJSON
    DetectMitigationActionsTaskTarget
  where
  parseJSON =
    Core.withObject
      "DetectMitigationActionsTaskTarget"
      ( \x ->
          DetectMitigationActionsTaskTarget'
            Prelude.<$> (x Core..:? "behaviorName")
            Prelude.<*> (x Core..:? "violationIds")
            Prelude.<*> (x Core..:? "securityProfileName")
      )

instance
  Prelude.Hashable
    DetectMitigationActionsTaskTarget
  where
  hashWithSalt
    _salt
    DetectMitigationActionsTaskTarget' {..} =
      _salt `Prelude.hashWithSalt` behaviorName
        `Prelude.hashWithSalt` violationIds
        `Prelude.hashWithSalt` securityProfileName

instance
  Prelude.NFData
    DetectMitigationActionsTaskTarget
  where
  rnf DetectMitigationActionsTaskTarget' {..} =
    Prelude.rnf behaviorName
      `Prelude.seq` Prelude.rnf violationIds
      `Prelude.seq` Prelude.rnf securityProfileName

instance
  Core.ToJSON
    DetectMitigationActionsTaskTarget
  where
  toJSON DetectMitigationActionsTaskTarget' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("behaviorName" Core..=) Prelude.<$> behaviorName,
            ("violationIds" Core..=) Prelude.<$> violationIds,
            ("securityProfileName" Core..=)
              Prelude.<$> securityProfileName
          ]
      )
