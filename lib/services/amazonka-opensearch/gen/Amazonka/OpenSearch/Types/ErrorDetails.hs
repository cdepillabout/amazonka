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
-- Module      : Amazonka.OpenSearch.Types.ErrorDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.ErrorDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | /See:/ 'newErrorDetails' smart constructor.
data ErrorDetails = ErrorDetails'
  { errorMessage :: Prelude.Maybe Prelude.Text,
    errorType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ErrorDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorMessage', 'errorDetails_errorMessage' - Undocumented member.
--
-- 'errorType', 'errorDetails_errorType' - Undocumented member.
newErrorDetails ::
  ErrorDetails
newErrorDetails =
  ErrorDetails'
    { errorMessage = Prelude.Nothing,
      errorType = Prelude.Nothing
    }

-- | Undocumented member.
errorDetails_errorMessage :: Lens.Lens' ErrorDetails (Prelude.Maybe Prelude.Text)
errorDetails_errorMessage = Lens.lens (\ErrorDetails' {errorMessage} -> errorMessage) (\s@ErrorDetails' {} a -> s {errorMessage = a} :: ErrorDetails)

-- | Undocumented member.
errorDetails_errorType :: Lens.Lens' ErrorDetails (Prelude.Maybe Prelude.Text)
errorDetails_errorType = Lens.lens (\ErrorDetails' {errorType} -> errorType) (\s@ErrorDetails' {} a -> s {errorType = a} :: ErrorDetails)

instance Core.FromJSON ErrorDetails where
  parseJSON =
    Core.withObject
      "ErrorDetails"
      ( \x ->
          ErrorDetails'
            Prelude.<$> (x Core..:? "ErrorMessage")
            Prelude.<*> (x Core..:? "ErrorType")
      )

instance Prelude.Hashable ErrorDetails where
  hashWithSalt _salt ErrorDetails' {..} =
    _salt `Prelude.hashWithSalt` errorMessage
      `Prelude.hashWithSalt` errorType

instance Prelude.NFData ErrorDetails where
  rnf ErrorDetails' {..} =
    Prelude.rnf errorMessage
      `Prelude.seq` Prelude.rnf errorType
