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
-- Module      : Amazonka.AlexaBusiness.Types.Contact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AlexaBusiness.Types.Contact where

import Amazonka.AlexaBusiness.Types.PhoneNumber
import Amazonka.AlexaBusiness.Types.SipAddress
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A contact with attributes.
--
-- /See:/ 'newContact' smart constructor.
data Contact = Contact'
  { -- | The first name of the contact, used to call the contact on the device.
    firstName :: Prelude.Maybe Prelude.Text,
    -- | The list of SIP addresses for the contact.
    sipAddresses :: Prelude.Maybe [SipAddress],
    -- | The name of the contact to display on the console.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the contact.
    contactArn :: Prelude.Maybe Prelude.Text,
    -- | The last name of the contact, used to call the contact on the device.
    lastName :: Prelude.Maybe Prelude.Text,
    -- | The phone number of the contact. The phone number type defaults to WORK.
    -- You can either specify PhoneNumber or PhoneNumbers. We recommend that
    -- you use PhoneNumbers, which lets you specify the phone number type and
    -- multiple numbers.
    phoneNumber :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The list of phone numbers for the contact.
    phoneNumbers :: Prelude.Maybe [PhoneNumber]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Contact' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firstName', 'contact_firstName' - The first name of the contact, used to call the contact on the device.
--
-- 'sipAddresses', 'contact_sipAddresses' - The list of SIP addresses for the contact.
--
-- 'displayName', 'contact_displayName' - The name of the contact to display on the console.
--
-- 'contactArn', 'contact_contactArn' - The ARN of the contact.
--
-- 'lastName', 'contact_lastName' - The last name of the contact, used to call the contact on the device.
--
-- 'phoneNumber', 'contact_phoneNumber' - The phone number of the contact. The phone number type defaults to WORK.
-- You can either specify PhoneNumber or PhoneNumbers. We recommend that
-- you use PhoneNumbers, which lets you specify the phone number type and
-- multiple numbers.
--
-- 'phoneNumbers', 'contact_phoneNumbers' - The list of phone numbers for the contact.
newContact ::
  Contact
newContact =
  Contact'
    { firstName = Prelude.Nothing,
      sipAddresses = Prelude.Nothing,
      displayName = Prelude.Nothing,
      contactArn = Prelude.Nothing,
      lastName = Prelude.Nothing,
      phoneNumber = Prelude.Nothing,
      phoneNumbers = Prelude.Nothing
    }

-- | The first name of the contact, used to call the contact on the device.
contact_firstName :: Lens.Lens' Contact (Prelude.Maybe Prelude.Text)
contact_firstName = Lens.lens (\Contact' {firstName} -> firstName) (\s@Contact' {} a -> s {firstName = a} :: Contact)

-- | The list of SIP addresses for the contact.
contact_sipAddresses :: Lens.Lens' Contact (Prelude.Maybe [SipAddress])
contact_sipAddresses = Lens.lens (\Contact' {sipAddresses} -> sipAddresses) (\s@Contact' {} a -> s {sipAddresses = a} :: Contact) Prelude.. Lens.mapping Lens.coerced

-- | The name of the contact to display on the console.
contact_displayName :: Lens.Lens' Contact (Prelude.Maybe Prelude.Text)
contact_displayName = Lens.lens (\Contact' {displayName} -> displayName) (\s@Contact' {} a -> s {displayName = a} :: Contact)

-- | The ARN of the contact.
contact_contactArn :: Lens.Lens' Contact (Prelude.Maybe Prelude.Text)
contact_contactArn = Lens.lens (\Contact' {contactArn} -> contactArn) (\s@Contact' {} a -> s {contactArn = a} :: Contact)

-- | The last name of the contact, used to call the contact on the device.
contact_lastName :: Lens.Lens' Contact (Prelude.Maybe Prelude.Text)
contact_lastName = Lens.lens (\Contact' {lastName} -> lastName) (\s@Contact' {} a -> s {lastName = a} :: Contact)

-- | The phone number of the contact. The phone number type defaults to WORK.
-- You can either specify PhoneNumber or PhoneNumbers. We recommend that
-- you use PhoneNumbers, which lets you specify the phone number type and
-- multiple numbers.
contact_phoneNumber :: Lens.Lens' Contact (Prelude.Maybe Prelude.Text)
contact_phoneNumber = Lens.lens (\Contact' {phoneNumber} -> phoneNumber) (\s@Contact' {} a -> s {phoneNumber = a} :: Contact) Prelude.. Lens.mapping Core._Sensitive

-- | The list of phone numbers for the contact.
contact_phoneNumbers :: Lens.Lens' Contact (Prelude.Maybe [PhoneNumber])
contact_phoneNumbers = Lens.lens (\Contact' {phoneNumbers} -> phoneNumbers) (\s@Contact' {} a -> s {phoneNumbers = a} :: Contact) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Contact where
  parseJSON =
    Core.withObject
      "Contact"
      ( \x ->
          Contact'
            Prelude.<$> (x Core..:? "FirstName")
            Prelude.<*> (x Core..:? "SipAddresses" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "DisplayName")
            Prelude.<*> (x Core..:? "ContactArn")
            Prelude.<*> (x Core..:? "LastName")
            Prelude.<*> (x Core..:? "PhoneNumber")
            Prelude.<*> (x Core..:? "PhoneNumbers" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Contact where
  hashWithSalt _salt Contact' {..} =
    _salt `Prelude.hashWithSalt` firstName
      `Prelude.hashWithSalt` sipAddresses
      `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` contactArn
      `Prelude.hashWithSalt` lastName
      `Prelude.hashWithSalt` phoneNumber
      `Prelude.hashWithSalt` phoneNumbers

instance Prelude.NFData Contact where
  rnf Contact' {..} =
    Prelude.rnf firstName
      `Prelude.seq` Prelude.rnf sipAddresses
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf contactArn
      `Prelude.seq` Prelude.rnf lastName
      `Prelude.seq` Prelude.rnf phoneNumber
      `Prelude.seq` Prelude.rnf phoneNumbers
