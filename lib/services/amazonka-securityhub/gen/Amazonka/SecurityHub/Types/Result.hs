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
-- Module      : Amazonka.SecurityHub.Types.Result
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.Result where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details about the account that was not processed.
--
-- /See:/ 'newResult' smart constructor.
data Result = Result'
  { -- | The reason that the account was not processed.
    processingResult :: Prelude.Maybe Prelude.Text,
    -- | An Amazon Web Services account ID of the account that was not processed.
    accountId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Result' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'processingResult', 'result_processingResult' - The reason that the account was not processed.
--
-- 'accountId', 'result_accountId' - An Amazon Web Services account ID of the account that was not processed.
newResult ::
  Result
newResult =
  Result'
    { processingResult = Prelude.Nothing,
      accountId = Prelude.Nothing
    }

-- | The reason that the account was not processed.
result_processingResult :: Lens.Lens' Result (Prelude.Maybe Prelude.Text)
result_processingResult = Lens.lens (\Result' {processingResult} -> processingResult) (\s@Result' {} a -> s {processingResult = a} :: Result)

-- | An Amazon Web Services account ID of the account that was not processed.
result_accountId :: Lens.Lens' Result (Prelude.Maybe Prelude.Text)
result_accountId = Lens.lens (\Result' {accountId} -> accountId) (\s@Result' {} a -> s {accountId = a} :: Result)

instance Core.FromJSON Result where
  parseJSON =
    Core.withObject
      "Result"
      ( \x ->
          Result'
            Prelude.<$> (x Core..:? "ProcessingResult")
            Prelude.<*> (x Core..:? "AccountId")
      )

instance Prelude.Hashable Result where
  hashWithSalt _salt Result' {..} =
    _salt `Prelude.hashWithSalt` processingResult
      `Prelude.hashWithSalt` accountId

instance Prelude.NFData Result where
  rnf Result' {..} =
    Prelude.rnf processingResult
      `Prelude.seq` Prelude.rnf accountId
