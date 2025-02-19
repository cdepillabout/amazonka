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
-- Module      : Amazonka.SageMaker.Types.ResolvedAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ResolvedAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.AutoMLJobCompletionCriteria
import Amazonka.SageMaker.Types.AutoMLJobObjective
import Amazonka.SageMaker.Types.ProblemType

-- | The resolved attributes.
--
-- /See:/ 'newResolvedAttributes' smart constructor.
data ResolvedAttributes = ResolvedAttributes'
  { completionCriteria :: Prelude.Maybe AutoMLJobCompletionCriteria,
    autoMLJobObjective :: Prelude.Maybe AutoMLJobObjective,
    -- | The problem type.
    problemType :: Prelude.Maybe ProblemType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResolvedAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'completionCriteria', 'resolvedAttributes_completionCriteria' - Undocumented member.
--
-- 'autoMLJobObjective', 'resolvedAttributes_autoMLJobObjective' - Undocumented member.
--
-- 'problemType', 'resolvedAttributes_problemType' - The problem type.
newResolvedAttributes ::
  ResolvedAttributes
newResolvedAttributes =
  ResolvedAttributes'
    { completionCriteria =
        Prelude.Nothing,
      autoMLJobObjective = Prelude.Nothing,
      problemType = Prelude.Nothing
    }

-- | Undocumented member.
resolvedAttributes_completionCriteria :: Lens.Lens' ResolvedAttributes (Prelude.Maybe AutoMLJobCompletionCriteria)
resolvedAttributes_completionCriteria = Lens.lens (\ResolvedAttributes' {completionCriteria} -> completionCriteria) (\s@ResolvedAttributes' {} a -> s {completionCriteria = a} :: ResolvedAttributes)

-- | Undocumented member.
resolvedAttributes_autoMLJobObjective :: Lens.Lens' ResolvedAttributes (Prelude.Maybe AutoMLJobObjective)
resolvedAttributes_autoMLJobObjective = Lens.lens (\ResolvedAttributes' {autoMLJobObjective} -> autoMLJobObjective) (\s@ResolvedAttributes' {} a -> s {autoMLJobObjective = a} :: ResolvedAttributes)

-- | The problem type.
resolvedAttributes_problemType :: Lens.Lens' ResolvedAttributes (Prelude.Maybe ProblemType)
resolvedAttributes_problemType = Lens.lens (\ResolvedAttributes' {problemType} -> problemType) (\s@ResolvedAttributes' {} a -> s {problemType = a} :: ResolvedAttributes)

instance Core.FromJSON ResolvedAttributes where
  parseJSON =
    Core.withObject
      "ResolvedAttributes"
      ( \x ->
          ResolvedAttributes'
            Prelude.<$> (x Core..:? "CompletionCriteria")
            Prelude.<*> (x Core..:? "AutoMLJobObjective")
            Prelude.<*> (x Core..:? "ProblemType")
      )

instance Prelude.Hashable ResolvedAttributes where
  hashWithSalt _salt ResolvedAttributes' {..} =
    _salt `Prelude.hashWithSalt` completionCriteria
      `Prelude.hashWithSalt` autoMLJobObjective
      `Prelude.hashWithSalt` problemType

instance Prelude.NFData ResolvedAttributes where
  rnf ResolvedAttributes' {..} =
    Prelude.rnf completionCriteria
      `Prelude.seq` Prelude.rnf autoMLJobObjective
      `Prelude.seq` Prelude.rnf problemType
