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
-- Module      : Amazonka.AuditManager.Types.AssessmentFramework
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AuditManager.Types.AssessmentFramework where

import Amazonka.AuditManager.Types.AssessmentControlSet
import Amazonka.AuditManager.Types.FrameworkMetadata
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The file used to structure and automate Audit Manager assessments for a
-- given compliance standard.
--
-- /See:/ 'newAssessmentFramework' smart constructor.
data AssessmentFramework = AssessmentFramework'
  { metadata :: Prelude.Maybe FrameworkMetadata,
    -- | The Amazon Resource Name (ARN) of the framework.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the framework.
    id :: Prelude.Maybe Prelude.Text,
    -- | The control sets that are associated with the framework.
    controlSets :: Prelude.Maybe [AssessmentControlSet]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssessmentFramework' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metadata', 'assessmentFramework_metadata' - Undocumented member.
--
-- 'arn', 'assessmentFramework_arn' - The Amazon Resource Name (ARN) of the framework.
--
-- 'id', 'assessmentFramework_id' - The unique identifier for the framework.
--
-- 'controlSets', 'assessmentFramework_controlSets' - The control sets that are associated with the framework.
newAssessmentFramework ::
  AssessmentFramework
newAssessmentFramework =
  AssessmentFramework'
    { metadata = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      controlSets = Prelude.Nothing
    }

-- | Undocumented member.
assessmentFramework_metadata :: Lens.Lens' AssessmentFramework (Prelude.Maybe FrameworkMetadata)
assessmentFramework_metadata = Lens.lens (\AssessmentFramework' {metadata} -> metadata) (\s@AssessmentFramework' {} a -> s {metadata = a} :: AssessmentFramework)

-- | The Amazon Resource Name (ARN) of the framework.
assessmentFramework_arn :: Lens.Lens' AssessmentFramework (Prelude.Maybe Prelude.Text)
assessmentFramework_arn = Lens.lens (\AssessmentFramework' {arn} -> arn) (\s@AssessmentFramework' {} a -> s {arn = a} :: AssessmentFramework)

-- | The unique identifier for the framework.
assessmentFramework_id :: Lens.Lens' AssessmentFramework (Prelude.Maybe Prelude.Text)
assessmentFramework_id = Lens.lens (\AssessmentFramework' {id} -> id) (\s@AssessmentFramework' {} a -> s {id = a} :: AssessmentFramework)

-- | The control sets that are associated with the framework.
assessmentFramework_controlSets :: Lens.Lens' AssessmentFramework (Prelude.Maybe [AssessmentControlSet])
assessmentFramework_controlSets = Lens.lens (\AssessmentFramework' {controlSets} -> controlSets) (\s@AssessmentFramework' {} a -> s {controlSets = a} :: AssessmentFramework) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON AssessmentFramework where
  parseJSON =
    Core.withObject
      "AssessmentFramework"
      ( \x ->
          AssessmentFramework'
            Prelude.<$> (x Core..:? "metadata")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "controlSets" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable AssessmentFramework where
  hashWithSalt _salt AssessmentFramework' {..} =
    _salt `Prelude.hashWithSalt` metadata
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` controlSets

instance Prelude.NFData AssessmentFramework where
  rnf AssessmentFramework' {..} =
    Prelude.rnf metadata
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf controlSets
