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
-- Module      : Amazonka.DeviceFarm.Types.MonetaryAmount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DeviceFarm.Types.MonetaryAmount where

import qualified Amazonka.Core as Core
import Amazonka.DeviceFarm.Types.CurrencyCode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A number that represents the monetary amount for an offering or
-- transaction.
--
-- /See:/ 'newMonetaryAmount' smart constructor.
data MonetaryAmount = MonetaryAmount'
  { -- | The currency code of a monetary amount. For example, @USD@ means U.S.
    -- dollars.
    currencyCode :: Prelude.Maybe CurrencyCode,
    -- | The numerical amount of an offering or transaction.
    amount :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MonetaryAmount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'currencyCode', 'monetaryAmount_currencyCode' - The currency code of a monetary amount. For example, @USD@ means U.S.
-- dollars.
--
-- 'amount', 'monetaryAmount_amount' - The numerical amount of an offering or transaction.
newMonetaryAmount ::
  MonetaryAmount
newMonetaryAmount =
  MonetaryAmount'
    { currencyCode = Prelude.Nothing,
      amount = Prelude.Nothing
    }

-- | The currency code of a monetary amount. For example, @USD@ means U.S.
-- dollars.
monetaryAmount_currencyCode :: Lens.Lens' MonetaryAmount (Prelude.Maybe CurrencyCode)
monetaryAmount_currencyCode = Lens.lens (\MonetaryAmount' {currencyCode} -> currencyCode) (\s@MonetaryAmount' {} a -> s {currencyCode = a} :: MonetaryAmount)

-- | The numerical amount of an offering or transaction.
monetaryAmount_amount :: Lens.Lens' MonetaryAmount (Prelude.Maybe Prelude.Double)
monetaryAmount_amount = Lens.lens (\MonetaryAmount' {amount} -> amount) (\s@MonetaryAmount' {} a -> s {amount = a} :: MonetaryAmount)

instance Core.FromJSON MonetaryAmount where
  parseJSON =
    Core.withObject
      "MonetaryAmount"
      ( \x ->
          MonetaryAmount'
            Prelude.<$> (x Core..:? "currencyCode")
            Prelude.<*> (x Core..:? "amount")
      )

instance Prelude.Hashable MonetaryAmount where
  hashWithSalt _salt MonetaryAmount' {..} =
    _salt `Prelude.hashWithSalt` currencyCode
      `Prelude.hashWithSalt` amount

instance Prelude.NFData MonetaryAmount where
  rnf MonetaryAmount' {..} =
    Prelude.rnf currencyCode
      `Prelude.seq` Prelude.rnf amount
