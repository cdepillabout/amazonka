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
-- Module      : Amazonka.Chime.Types.PhoneNumberAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Chime.Types.PhoneNumberAssociation where

import Amazonka.Chime.Types.PhoneNumberAssociationName
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The phone number associations, such as Amazon Chime account ID, Amazon
-- Chime user ID, Amazon Chime Voice Connector ID, or Amazon Chime Voice
-- Connector group ID.
--
-- /See:/ 'newPhoneNumberAssociation' smart constructor.
data PhoneNumberAssociation = PhoneNumberAssociation'
  { -- | Defines the association with an Amazon Chime account ID, user ID, Amazon
    -- Chime Voice Connector ID, or Amazon Chime Voice Connector group ID.
    name :: Prelude.Maybe PhoneNumberAssociationName,
    -- | The timestamp of the phone number association, in ISO 8601 format.
    associatedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | Contains the ID for the entity specified in Name.
    value :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PhoneNumberAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'phoneNumberAssociation_name' - Defines the association with an Amazon Chime account ID, user ID, Amazon
-- Chime Voice Connector ID, or Amazon Chime Voice Connector group ID.
--
-- 'associatedTimestamp', 'phoneNumberAssociation_associatedTimestamp' - The timestamp of the phone number association, in ISO 8601 format.
--
-- 'value', 'phoneNumberAssociation_value' - Contains the ID for the entity specified in Name.
newPhoneNumberAssociation ::
  PhoneNumberAssociation
newPhoneNumberAssociation =
  PhoneNumberAssociation'
    { name = Prelude.Nothing,
      associatedTimestamp = Prelude.Nothing,
      value = Prelude.Nothing
    }

-- | Defines the association with an Amazon Chime account ID, user ID, Amazon
-- Chime Voice Connector ID, or Amazon Chime Voice Connector group ID.
phoneNumberAssociation_name :: Lens.Lens' PhoneNumberAssociation (Prelude.Maybe PhoneNumberAssociationName)
phoneNumberAssociation_name = Lens.lens (\PhoneNumberAssociation' {name} -> name) (\s@PhoneNumberAssociation' {} a -> s {name = a} :: PhoneNumberAssociation)

-- | The timestamp of the phone number association, in ISO 8601 format.
phoneNumberAssociation_associatedTimestamp :: Lens.Lens' PhoneNumberAssociation (Prelude.Maybe Prelude.UTCTime)
phoneNumberAssociation_associatedTimestamp = Lens.lens (\PhoneNumberAssociation' {associatedTimestamp} -> associatedTimestamp) (\s@PhoneNumberAssociation' {} a -> s {associatedTimestamp = a} :: PhoneNumberAssociation) Prelude.. Lens.mapping Core._Time

-- | Contains the ID for the entity specified in Name.
phoneNumberAssociation_value :: Lens.Lens' PhoneNumberAssociation (Prelude.Maybe Prelude.Text)
phoneNumberAssociation_value = Lens.lens (\PhoneNumberAssociation' {value} -> value) (\s@PhoneNumberAssociation' {} a -> s {value = a} :: PhoneNumberAssociation)

instance Core.FromJSON PhoneNumberAssociation where
  parseJSON =
    Core.withObject
      "PhoneNumberAssociation"
      ( \x ->
          PhoneNumberAssociation'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "AssociatedTimestamp")
            Prelude.<*> (x Core..:? "Value")
      )

instance Prelude.Hashable PhoneNumberAssociation where
  hashWithSalt _salt PhoneNumberAssociation' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` associatedTimestamp
      `Prelude.hashWithSalt` value

instance Prelude.NFData PhoneNumberAssociation where
  rnf PhoneNumberAssociation' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf associatedTimestamp
      `Prelude.seq` Prelude.rnf value
