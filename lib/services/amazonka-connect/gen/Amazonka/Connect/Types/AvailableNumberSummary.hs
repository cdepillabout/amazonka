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
-- Module      : Amazonka.Connect.Types.AvailableNumberSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.AvailableNumberSummary where

import Amazonka.Connect.Types.PhoneNumberCountryCode
import Amazonka.Connect.Types.PhoneNumberType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about available phone numbers.
--
-- /See:/ 'newAvailableNumberSummary' smart constructor.
data AvailableNumberSummary = AvailableNumberSummary'
  { -- | The ISO country code.
    phoneNumberCountryCode :: Prelude.Maybe PhoneNumberCountryCode,
    -- | The type of phone number.
    phoneNumberType :: Prelude.Maybe PhoneNumberType,
    -- | The phone number. Phone numbers are formatted
    -- @[+] [country code] [subscriber number including area code]@.
    phoneNumber :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AvailableNumberSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'phoneNumberCountryCode', 'availableNumberSummary_phoneNumberCountryCode' - The ISO country code.
--
-- 'phoneNumberType', 'availableNumberSummary_phoneNumberType' - The type of phone number.
--
-- 'phoneNumber', 'availableNumberSummary_phoneNumber' - The phone number. Phone numbers are formatted
-- @[+] [country code] [subscriber number including area code]@.
newAvailableNumberSummary ::
  AvailableNumberSummary
newAvailableNumberSummary =
  AvailableNumberSummary'
    { phoneNumberCountryCode =
        Prelude.Nothing,
      phoneNumberType = Prelude.Nothing,
      phoneNumber = Prelude.Nothing
    }

-- | The ISO country code.
availableNumberSummary_phoneNumberCountryCode :: Lens.Lens' AvailableNumberSummary (Prelude.Maybe PhoneNumberCountryCode)
availableNumberSummary_phoneNumberCountryCode = Lens.lens (\AvailableNumberSummary' {phoneNumberCountryCode} -> phoneNumberCountryCode) (\s@AvailableNumberSummary' {} a -> s {phoneNumberCountryCode = a} :: AvailableNumberSummary)

-- | The type of phone number.
availableNumberSummary_phoneNumberType :: Lens.Lens' AvailableNumberSummary (Prelude.Maybe PhoneNumberType)
availableNumberSummary_phoneNumberType = Lens.lens (\AvailableNumberSummary' {phoneNumberType} -> phoneNumberType) (\s@AvailableNumberSummary' {} a -> s {phoneNumberType = a} :: AvailableNumberSummary)

-- | The phone number. Phone numbers are formatted
-- @[+] [country code] [subscriber number including area code]@.
availableNumberSummary_phoneNumber :: Lens.Lens' AvailableNumberSummary (Prelude.Maybe Prelude.Text)
availableNumberSummary_phoneNumber = Lens.lens (\AvailableNumberSummary' {phoneNumber} -> phoneNumber) (\s@AvailableNumberSummary' {} a -> s {phoneNumber = a} :: AvailableNumberSummary)

instance Core.FromJSON AvailableNumberSummary where
  parseJSON =
    Core.withObject
      "AvailableNumberSummary"
      ( \x ->
          AvailableNumberSummary'
            Prelude.<$> (x Core..:? "PhoneNumberCountryCode")
            Prelude.<*> (x Core..:? "PhoneNumberType")
            Prelude.<*> (x Core..:? "PhoneNumber")
      )

instance Prelude.Hashable AvailableNumberSummary where
  hashWithSalt _salt AvailableNumberSummary' {..} =
    _salt `Prelude.hashWithSalt` phoneNumberCountryCode
      `Prelude.hashWithSalt` phoneNumberType
      `Prelude.hashWithSalt` phoneNumber

instance Prelude.NFData AvailableNumberSummary where
  rnf AvailableNumberSummary' {..} =
    Prelude.rnf phoneNumberCountryCode
      `Prelude.seq` Prelude.rnf phoneNumberType
      `Prelude.seq` Prelude.rnf phoneNumber
