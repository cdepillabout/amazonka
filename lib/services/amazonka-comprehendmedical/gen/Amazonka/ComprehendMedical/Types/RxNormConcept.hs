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
-- Module      : Amazonka.ComprehendMedical.Types.RxNormConcept
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ComprehendMedical.Types.RxNormConcept where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The RxNorm concept that the entity could refer to, along with a score
-- indicating the likelihood of the match.
--
-- /See:/ 'newRxNormConcept' smart constructor.
data RxNormConcept = RxNormConcept'
  { -- | RxNorm concept ID, also known as the RxCUI.
    code :: Prelude.Maybe Prelude.Text,
    -- | The level of confidence that Amazon Comprehend Medical has that the
    -- entity is accurately linked to the reported RxNorm concept.
    score :: Prelude.Maybe Prelude.Double,
    -- | The description of the RxNorm concept.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RxNormConcept' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'code', 'rxNormConcept_code' - RxNorm concept ID, also known as the RxCUI.
--
-- 'score', 'rxNormConcept_score' - The level of confidence that Amazon Comprehend Medical has that the
-- entity is accurately linked to the reported RxNorm concept.
--
-- 'description', 'rxNormConcept_description' - The description of the RxNorm concept.
newRxNormConcept ::
  RxNormConcept
newRxNormConcept =
  RxNormConcept'
    { code = Prelude.Nothing,
      score = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | RxNorm concept ID, also known as the RxCUI.
rxNormConcept_code :: Lens.Lens' RxNormConcept (Prelude.Maybe Prelude.Text)
rxNormConcept_code = Lens.lens (\RxNormConcept' {code} -> code) (\s@RxNormConcept' {} a -> s {code = a} :: RxNormConcept)

-- | The level of confidence that Amazon Comprehend Medical has that the
-- entity is accurately linked to the reported RxNorm concept.
rxNormConcept_score :: Lens.Lens' RxNormConcept (Prelude.Maybe Prelude.Double)
rxNormConcept_score = Lens.lens (\RxNormConcept' {score} -> score) (\s@RxNormConcept' {} a -> s {score = a} :: RxNormConcept)

-- | The description of the RxNorm concept.
rxNormConcept_description :: Lens.Lens' RxNormConcept (Prelude.Maybe Prelude.Text)
rxNormConcept_description = Lens.lens (\RxNormConcept' {description} -> description) (\s@RxNormConcept' {} a -> s {description = a} :: RxNormConcept)

instance Core.FromJSON RxNormConcept where
  parseJSON =
    Core.withObject
      "RxNormConcept"
      ( \x ->
          RxNormConcept'
            Prelude.<$> (x Core..:? "Code")
            Prelude.<*> (x Core..:? "Score")
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable RxNormConcept where
  hashWithSalt _salt RxNormConcept' {..} =
    _salt `Prelude.hashWithSalt` code
      `Prelude.hashWithSalt` score
      `Prelude.hashWithSalt` description

instance Prelude.NFData RxNormConcept where
  rnf RxNormConcept' {..} =
    Prelude.rnf code
      `Prelude.seq` Prelude.rnf score
      `Prelude.seq` Prelude.rnf description
