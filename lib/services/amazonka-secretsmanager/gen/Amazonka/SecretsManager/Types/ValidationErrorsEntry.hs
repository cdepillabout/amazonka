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
-- Module      : Amazonka.SecretsManager.Types.ValidationErrorsEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecretsManager.Types.ValidationErrorsEntry where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Displays errors that occurred during validation of the resource policy.
--
-- /See:/ 'newValidationErrorsEntry' smart constructor.
data ValidationErrorsEntry = ValidationErrorsEntry'
  { -- | Displays error messages if validation encounters problems during
    -- validation of the resource policy.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | Checks the name of the policy.
    checkName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ValidationErrorsEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorMessage', 'validationErrorsEntry_errorMessage' - Displays error messages if validation encounters problems during
-- validation of the resource policy.
--
-- 'checkName', 'validationErrorsEntry_checkName' - Checks the name of the policy.
newValidationErrorsEntry ::
  ValidationErrorsEntry
newValidationErrorsEntry =
  ValidationErrorsEntry'
    { errorMessage =
        Prelude.Nothing,
      checkName = Prelude.Nothing
    }

-- | Displays error messages if validation encounters problems during
-- validation of the resource policy.
validationErrorsEntry_errorMessage :: Lens.Lens' ValidationErrorsEntry (Prelude.Maybe Prelude.Text)
validationErrorsEntry_errorMessage = Lens.lens (\ValidationErrorsEntry' {errorMessage} -> errorMessage) (\s@ValidationErrorsEntry' {} a -> s {errorMessage = a} :: ValidationErrorsEntry)

-- | Checks the name of the policy.
validationErrorsEntry_checkName :: Lens.Lens' ValidationErrorsEntry (Prelude.Maybe Prelude.Text)
validationErrorsEntry_checkName = Lens.lens (\ValidationErrorsEntry' {checkName} -> checkName) (\s@ValidationErrorsEntry' {} a -> s {checkName = a} :: ValidationErrorsEntry)

instance Core.FromJSON ValidationErrorsEntry where
  parseJSON =
    Core.withObject
      "ValidationErrorsEntry"
      ( \x ->
          ValidationErrorsEntry'
            Prelude.<$> (x Core..:? "ErrorMessage")
            Prelude.<*> (x Core..:? "CheckName")
      )

instance Prelude.Hashable ValidationErrorsEntry where
  hashWithSalt _salt ValidationErrorsEntry' {..} =
    _salt `Prelude.hashWithSalt` errorMessage
      `Prelude.hashWithSalt` checkName

instance Prelude.NFData ValidationErrorsEntry where
  rnf ValidationErrorsEntry' {..} =
    Prelude.rnf errorMessage
      `Prelude.seq` Prelude.rnf checkName
