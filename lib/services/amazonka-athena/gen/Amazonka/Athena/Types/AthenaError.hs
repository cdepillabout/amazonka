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
-- Module      : Amazonka.Athena.Types.AthenaError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Athena.Types.AthenaError where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information about an Athena query error. The @AthenaError@
-- feature provides standardized error information to help you understand
-- failed queries and take steps after a query failure occurs.
-- @AthenaError@ includes an @ErrorCategory@ field that specifies whether
-- the cause of the failed query is due to system error, user error, or
-- other error.
--
-- /See:/ 'newAthenaError' smart constructor.
data AthenaError = AthenaError'
  { -- | True if the query might succeed if resubmitted.
    retryable :: Prelude.Maybe Prelude.Bool,
    -- | An integer value that specifies the category of a query failure error.
    -- The following list shows the category for each integer value.
    --
    -- __1__ - System
    --
    -- __2__ - User
    --
    -- __3__ - Other
    errorCategory :: Prelude.Maybe Prelude.Natural,
    -- | Contains a short description of the error that occurred.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | An integer value that provides specific information about an Athena
    -- query error. For the meaning of specific values, see the
    -- <https://docs.aws.amazon.com/athena/latest/ug/error-reference.html#error-reference-error-type-reference Error Type Reference>
    -- in the /Amazon Athena User Guide/.
    errorType :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AthenaError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'retryable', 'athenaError_retryable' - True if the query might succeed if resubmitted.
--
-- 'errorCategory', 'athenaError_errorCategory' - An integer value that specifies the category of a query failure error.
-- The following list shows the category for each integer value.
--
-- __1__ - System
--
-- __2__ - User
--
-- __3__ - Other
--
-- 'errorMessage', 'athenaError_errorMessage' - Contains a short description of the error that occurred.
--
-- 'errorType', 'athenaError_errorType' - An integer value that provides specific information about an Athena
-- query error. For the meaning of specific values, see the
-- <https://docs.aws.amazon.com/athena/latest/ug/error-reference.html#error-reference-error-type-reference Error Type Reference>
-- in the /Amazon Athena User Guide/.
newAthenaError ::
  AthenaError
newAthenaError =
  AthenaError'
    { retryable = Prelude.Nothing,
      errorCategory = Prelude.Nothing,
      errorMessage = Prelude.Nothing,
      errorType = Prelude.Nothing
    }

-- | True if the query might succeed if resubmitted.
athenaError_retryable :: Lens.Lens' AthenaError (Prelude.Maybe Prelude.Bool)
athenaError_retryable = Lens.lens (\AthenaError' {retryable} -> retryable) (\s@AthenaError' {} a -> s {retryable = a} :: AthenaError)

-- | An integer value that specifies the category of a query failure error.
-- The following list shows the category for each integer value.
--
-- __1__ - System
--
-- __2__ - User
--
-- __3__ - Other
athenaError_errorCategory :: Lens.Lens' AthenaError (Prelude.Maybe Prelude.Natural)
athenaError_errorCategory = Lens.lens (\AthenaError' {errorCategory} -> errorCategory) (\s@AthenaError' {} a -> s {errorCategory = a} :: AthenaError)

-- | Contains a short description of the error that occurred.
athenaError_errorMessage :: Lens.Lens' AthenaError (Prelude.Maybe Prelude.Text)
athenaError_errorMessage = Lens.lens (\AthenaError' {errorMessage} -> errorMessage) (\s@AthenaError' {} a -> s {errorMessage = a} :: AthenaError)

-- | An integer value that provides specific information about an Athena
-- query error. For the meaning of specific values, see the
-- <https://docs.aws.amazon.com/athena/latest/ug/error-reference.html#error-reference-error-type-reference Error Type Reference>
-- in the /Amazon Athena User Guide/.
athenaError_errorType :: Lens.Lens' AthenaError (Prelude.Maybe Prelude.Natural)
athenaError_errorType = Lens.lens (\AthenaError' {errorType} -> errorType) (\s@AthenaError' {} a -> s {errorType = a} :: AthenaError)

instance Core.FromJSON AthenaError where
  parseJSON =
    Core.withObject
      "AthenaError"
      ( \x ->
          AthenaError'
            Prelude.<$> (x Core..:? "Retryable")
            Prelude.<*> (x Core..:? "ErrorCategory")
            Prelude.<*> (x Core..:? "ErrorMessage")
            Prelude.<*> (x Core..:? "ErrorType")
      )

instance Prelude.Hashable AthenaError where
  hashWithSalt _salt AthenaError' {..} =
    _salt `Prelude.hashWithSalt` retryable
      `Prelude.hashWithSalt` errorCategory
      `Prelude.hashWithSalt` errorMessage
      `Prelude.hashWithSalt` errorType

instance Prelude.NFData AthenaError where
  rnf AthenaError' {..} =
    Prelude.rnf retryable
      `Prelude.seq` Prelude.rnf errorCategory
      `Prelude.seq` Prelude.rnf errorMessage
      `Prelude.seq` Prelude.rnf errorType
