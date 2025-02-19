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
-- Module      : Amazonka.Chime.Types.Address
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Chime.Types.Address where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A validated address.
--
-- /See:/ 'newAddress' smart constructor.
data Address = Address'
  { -- | The postal code of an address.
    postalCode :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The address suffix, such as the @N@ in @8th Avenue N@.
    streetSuffix :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The country of an address.
    country :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | An address suffix location, such as the @S. Unit A@ in
    -- @Central Park S. Unit A@.
    postDirectional :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The state of an address.
    state :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The address street, such as @8th Avenue@.
    streetName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The Zip + 4 or postal code + 4 of an address.
    postalCodePlus4 :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The city of an address.
    city :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | An address prefix location, such as the @N@ in @N. Third St.@.
    preDirectional :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The numeric portion of an address.
    streetNumber :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Address' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'postalCode', 'address_postalCode' - The postal code of an address.
--
-- 'streetSuffix', 'address_streetSuffix' - The address suffix, such as the @N@ in @8th Avenue N@.
--
-- 'country', 'address_country' - The country of an address.
--
-- 'postDirectional', 'address_postDirectional' - An address suffix location, such as the @S. Unit A@ in
-- @Central Park S. Unit A@.
--
-- 'state', 'address_state' - The state of an address.
--
-- 'streetName', 'address_streetName' - The address street, such as @8th Avenue@.
--
-- 'postalCodePlus4', 'address_postalCodePlus4' - The Zip + 4 or postal code + 4 of an address.
--
-- 'city', 'address_city' - The city of an address.
--
-- 'preDirectional', 'address_preDirectional' - An address prefix location, such as the @N@ in @N. Third St.@.
--
-- 'streetNumber', 'address_streetNumber' - The numeric portion of an address.
newAddress ::
  Address
newAddress =
  Address'
    { postalCode = Prelude.Nothing,
      streetSuffix = Prelude.Nothing,
      country = Prelude.Nothing,
      postDirectional = Prelude.Nothing,
      state = Prelude.Nothing,
      streetName = Prelude.Nothing,
      postalCodePlus4 = Prelude.Nothing,
      city = Prelude.Nothing,
      preDirectional = Prelude.Nothing,
      streetNumber = Prelude.Nothing
    }

-- | The postal code of an address.
address_postalCode :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_postalCode = Lens.lens (\Address' {postalCode} -> postalCode) (\s@Address' {} a -> s {postalCode = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The address suffix, such as the @N@ in @8th Avenue N@.
address_streetSuffix :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_streetSuffix = Lens.lens (\Address' {streetSuffix} -> streetSuffix) (\s@Address' {} a -> s {streetSuffix = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The country of an address.
address_country :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_country = Lens.lens (\Address' {country} -> country) (\s@Address' {} a -> s {country = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | An address suffix location, such as the @S. Unit A@ in
-- @Central Park S. Unit A@.
address_postDirectional :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_postDirectional = Lens.lens (\Address' {postDirectional} -> postDirectional) (\s@Address' {} a -> s {postDirectional = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The state of an address.
address_state :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_state = Lens.lens (\Address' {state} -> state) (\s@Address' {} a -> s {state = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The address street, such as @8th Avenue@.
address_streetName :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_streetName = Lens.lens (\Address' {streetName} -> streetName) (\s@Address' {} a -> s {streetName = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The Zip + 4 or postal code + 4 of an address.
address_postalCodePlus4 :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_postalCodePlus4 = Lens.lens (\Address' {postalCodePlus4} -> postalCodePlus4) (\s@Address' {} a -> s {postalCodePlus4 = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The city of an address.
address_city :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_city = Lens.lens (\Address' {city} -> city) (\s@Address' {} a -> s {city = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | An address prefix location, such as the @N@ in @N. Third St.@.
address_preDirectional :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_preDirectional = Lens.lens (\Address' {preDirectional} -> preDirectional) (\s@Address' {} a -> s {preDirectional = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The numeric portion of an address.
address_streetNumber :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_streetNumber = Lens.lens (\Address' {streetNumber} -> streetNumber) (\s@Address' {} a -> s {streetNumber = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

instance Core.FromJSON Address where
  parseJSON =
    Core.withObject
      "Address"
      ( \x ->
          Address'
            Prelude.<$> (x Core..:? "postalCode")
            Prelude.<*> (x Core..:? "streetSuffix")
            Prelude.<*> (x Core..:? "country")
            Prelude.<*> (x Core..:? "postDirectional")
            Prelude.<*> (x Core..:? "state")
            Prelude.<*> (x Core..:? "streetName")
            Prelude.<*> (x Core..:? "postalCodePlus4")
            Prelude.<*> (x Core..:? "city")
            Prelude.<*> (x Core..:? "preDirectional")
            Prelude.<*> (x Core..:? "streetNumber")
      )

instance Prelude.Hashable Address where
  hashWithSalt _salt Address' {..} =
    _salt `Prelude.hashWithSalt` postalCode
      `Prelude.hashWithSalt` streetSuffix
      `Prelude.hashWithSalt` country
      `Prelude.hashWithSalt` postDirectional
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` streetName
      `Prelude.hashWithSalt` postalCodePlus4
      `Prelude.hashWithSalt` city
      `Prelude.hashWithSalt` preDirectional
      `Prelude.hashWithSalt` streetNumber

instance Prelude.NFData Address where
  rnf Address' {..} =
    Prelude.rnf postalCode
      `Prelude.seq` Prelude.rnf streetSuffix
      `Prelude.seq` Prelude.rnf country
      `Prelude.seq` Prelude.rnf postDirectional
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf streetName
      `Prelude.seq` Prelude.rnf postalCodePlus4
      `Prelude.seq` Prelude.rnf city
      `Prelude.seq` Prelude.rnf preDirectional
      `Prelude.seq` Prelude.rnf streetNumber
