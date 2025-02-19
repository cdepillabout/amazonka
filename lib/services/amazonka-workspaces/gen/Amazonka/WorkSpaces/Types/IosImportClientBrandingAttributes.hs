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
-- Module      : Amazonka.WorkSpaces.Types.IosImportClientBrandingAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WorkSpaces.Types.IosImportClientBrandingAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The client branding attributes to import for iOS device types. These
-- attributes are displayed on the iOS client login screen.
--
-- Client branding attributes are public facing. Ensure you do not include
-- sensitive information.
--
-- /See:/ 'newIosImportClientBrandingAttributes' smart constructor.
data IosImportClientBrandingAttributes = IosImportClientBrandingAttributes'
  { -- | The support link. The link for the company\'s customer support page for
    -- their WorkSpace.
    --
    -- -   In each platform type, the @SupportEmail@ and @SupportLink@
    --     parameters are mutually exclusive. You can specify one parameter for
    --     each platform type, but not both.
    --
    -- -   The default support link is @workspaces-feedback\@amazon.com@.
    supportLink :: Prelude.Maybe Prelude.Text,
    -- | The support email. The company\'s customer support email address.
    --
    -- -   In each platform type, the @SupportEmail@ and @SupportLink@
    --     parameters are mutually exclusive. You can specify one parameter for
    --     each platform type, but not both.
    --
    -- -   The default email is @workspaces-feedback\@amazon.com@.
    supportEmail :: Prelude.Maybe Prelude.Text,
    -- | The logo. This is the standard-resolution display that has a 1:1 pixel
    -- density (or \@1x), where one pixel is equal to one point. The only image
    -- format accepted is a binary data object that is converted from a @.png@
    -- file.
    logo :: Prelude.Maybe Core.Base64,
    -- | The \@3x version of the logo. This is the higher resolution display that
    -- offers a scale factor of 3.0 (or \@3x). The only image format accepted
    -- is a binary data object that is converted from a @.png@ file.
    --
    -- For more information about iOS image size and resolution, see
    -- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
    -- in the /Apple Human Interface Guidelines/.
    logo3x :: Prelude.Maybe Core.Base64,
    -- | The login message. Specified as a key value pair, in which the key is a
    -- locale and the value is the localized message for that locale. The only
    -- key supported is @en_US@. The HTML tags supported include the following:
    -- @a, b, blockquote, br, cite, code, dd, dl, dt, div, em, i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul@.
    loginMessage :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The forgotten password link. This is the web address that users can go
    -- to if they forget the password for their WorkSpace.
    forgotPasswordLink :: Prelude.Maybe Prelude.Text,
    -- | The \@2x version of the logo. This is the higher resolution display that
    -- offers a scale factor of 2.0 (or \@2x). The only image format accepted
    -- is a binary data object that is converted from a @.png@ file.
    --
    -- For more information about iOS image size and resolution, see
    -- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
    -- in the /Apple Human Interface Guidelines/.
    logo2x :: Prelude.Maybe Core.Base64
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IosImportClientBrandingAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'supportLink', 'iosImportClientBrandingAttributes_supportLink' - The support link. The link for the company\'s customer support page for
-- their WorkSpace.
--
-- -   In each platform type, the @SupportEmail@ and @SupportLink@
--     parameters are mutually exclusive. You can specify one parameter for
--     each platform type, but not both.
--
-- -   The default support link is @workspaces-feedback\@amazon.com@.
--
-- 'supportEmail', 'iosImportClientBrandingAttributes_supportEmail' - The support email. The company\'s customer support email address.
--
-- -   In each platform type, the @SupportEmail@ and @SupportLink@
--     parameters are mutually exclusive. You can specify one parameter for
--     each platform type, but not both.
--
-- -   The default email is @workspaces-feedback\@amazon.com@.
--
-- 'logo', 'iosImportClientBrandingAttributes_logo' - The logo. This is the standard-resolution display that has a 1:1 pixel
-- density (or \@1x), where one pixel is equal to one point. The only image
-- format accepted is a binary data object that is converted from a @.png@
-- file.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'logo3x', 'iosImportClientBrandingAttributes_logo3x' - The \@3x version of the logo. This is the higher resolution display that
-- offers a scale factor of 3.0 (or \@3x). The only image format accepted
-- is a binary data object that is converted from a @.png@ file.
--
-- For more information about iOS image size and resolution, see
-- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
-- in the /Apple Human Interface Guidelines/.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'loginMessage', 'iosImportClientBrandingAttributes_loginMessage' - The login message. Specified as a key value pair, in which the key is a
-- locale and the value is the localized message for that locale. The only
-- key supported is @en_US@. The HTML tags supported include the following:
-- @a, b, blockquote, br, cite, code, dd, dl, dt, div, em, i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul@.
--
-- 'forgotPasswordLink', 'iosImportClientBrandingAttributes_forgotPasswordLink' - The forgotten password link. This is the web address that users can go
-- to if they forget the password for their WorkSpace.
--
-- 'logo2x', 'iosImportClientBrandingAttributes_logo2x' - The \@2x version of the logo. This is the higher resolution display that
-- offers a scale factor of 2.0 (or \@2x). The only image format accepted
-- is a binary data object that is converted from a @.png@ file.
--
-- For more information about iOS image size and resolution, see
-- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
-- in the /Apple Human Interface Guidelines/.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
newIosImportClientBrandingAttributes ::
  IosImportClientBrandingAttributes
newIosImportClientBrandingAttributes =
  IosImportClientBrandingAttributes'
    { supportLink =
        Prelude.Nothing,
      supportEmail = Prelude.Nothing,
      logo = Prelude.Nothing,
      logo3x = Prelude.Nothing,
      loginMessage = Prelude.Nothing,
      forgotPasswordLink = Prelude.Nothing,
      logo2x = Prelude.Nothing
    }

-- | The support link. The link for the company\'s customer support page for
-- their WorkSpace.
--
-- -   In each platform type, the @SupportEmail@ and @SupportLink@
--     parameters are mutually exclusive. You can specify one parameter for
--     each platform type, but not both.
--
-- -   The default support link is @workspaces-feedback\@amazon.com@.
iosImportClientBrandingAttributes_supportLink :: Lens.Lens' IosImportClientBrandingAttributes (Prelude.Maybe Prelude.Text)
iosImportClientBrandingAttributes_supportLink = Lens.lens (\IosImportClientBrandingAttributes' {supportLink} -> supportLink) (\s@IosImportClientBrandingAttributes' {} a -> s {supportLink = a} :: IosImportClientBrandingAttributes)

-- | The support email. The company\'s customer support email address.
--
-- -   In each platform type, the @SupportEmail@ and @SupportLink@
--     parameters are mutually exclusive. You can specify one parameter for
--     each platform type, but not both.
--
-- -   The default email is @workspaces-feedback\@amazon.com@.
iosImportClientBrandingAttributes_supportEmail :: Lens.Lens' IosImportClientBrandingAttributes (Prelude.Maybe Prelude.Text)
iosImportClientBrandingAttributes_supportEmail = Lens.lens (\IosImportClientBrandingAttributes' {supportEmail} -> supportEmail) (\s@IosImportClientBrandingAttributes' {} a -> s {supportEmail = a} :: IosImportClientBrandingAttributes)

-- | The logo. This is the standard-resolution display that has a 1:1 pixel
-- density (or \@1x), where one pixel is equal to one point. The only image
-- format accepted is a binary data object that is converted from a @.png@
-- file.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
iosImportClientBrandingAttributes_logo :: Lens.Lens' IosImportClientBrandingAttributes (Prelude.Maybe Prelude.ByteString)
iosImportClientBrandingAttributes_logo = Lens.lens (\IosImportClientBrandingAttributes' {logo} -> logo) (\s@IosImportClientBrandingAttributes' {} a -> s {logo = a} :: IosImportClientBrandingAttributes) Prelude.. Lens.mapping Core._Base64

-- | The \@3x version of the logo. This is the higher resolution display that
-- offers a scale factor of 3.0 (or \@3x). The only image format accepted
-- is a binary data object that is converted from a @.png@ file.
--
-- For more information about iOS image size and resolution, see
-- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
-- in the /Apple Human Interface Guidelines/.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
iosImportClientBrandingAttributes_logo3x :: Lens.Lens' IosImportClientBrandingAttributes (Prelude.Maybe Prelude.ByteString)
iosImportClientBrandingAttributes_logo3x = Lens.lens (\IosImportClientBrandingAttributes' {logo3x} -> logo3x) (\s@IosImportClientBrandingAttributes' {} a -> s {logo3x = a} :: IosImportClientBrandingAttributes) Prelude.. Lens.mapping Core._Base64

-- | The login message. Specified as a key value pair, in which the key is a
-- locale and the value is the localized message for that locale. The only
-- key supported is @en_US@. The HTML tags supported include the following:
-- @a, b, blockquote, br, cite, code, dd, dl, dt, div, em, i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul@.
iosImportClientBrandingAttributes_loginMessage :: Lens.Lens' IosImportClientBrandingAttributes (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
iosImportClientBrandingAttributes_loginMessage = Lens.lens (\IosImportClientBrandingAttributes' {loginMessage} -> loginMessage) (\s@IosImportClientBrandingAttributes' {} a -> s {loginMessage = a} :: IosImportClientBrandingAttributes) Prelude.. Lens.mapping Lens.coerced

-- | The forgotten password link. This is the web address that users can go
-- to if they forget the password for their WorkSpace.
iosImportClientBrandingAttributes_forgotPasswordLink :: Lens.Lens' IosImportClientBrandingAttributes (Prelude.Maybe Prelude.Text)
iosImportClientBrandingAttributes_forgotPasswordLink = Lens.lens (\IosImportClientBrandingAttributes' {forgotPasswordLink} -> forgotPasswordLink) (\s@IosImportClientBrandingAttributes' {} a -> s {forgotPasswordLink = a} :: IosImportClientBrandingAttributes)

-- | The \@2x version of the logo. This is the higher resolution display that
-- offers a scale factor of 2.0 (or \@2x). The only image format accepted
-- is a binary data object that is converted from a @.png@ file.
--
-- For more information about iOS image size and resolution, see
-- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
-- in the /Apple Human Interface Guidelines/.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
iosImportClientBrandingAttributes_logo2x :: Lens.Lens' IosImportClientBrandingAttributes (Prelude.Maybe Prelude.ByteString)
iosImportClientBrandingAttributes_logo2x = Lens.lens (\IosImportClientBrandingAttributes' {logo2x} -> logo2x) (\s@IosImportClientBrandingAttributes' {} a -> s {logo2x = a} :: IosImportClientBrandingAttributes) Prelude.. Lens.mapping Core._Base64

instance
  Prelude.Hashable
    IosImportClientBrandingAttributes
  where
  hashWithSalt
    _salt
    IosImportClientBrandingAttributes' {..} =
      _salt `Prelude.hashWithSalt` supportLink
        `Prelude.hashWithSalt` supportEmail
        `Prelude.hashWithSalt` logo
        `Prelude.hashWithSalt` logo3x
        `Prelude.hashWithSalt` loginMessage
        `Prelude.hashWithSalt` forgotPasswordLink
        `Prelude.hashWithSalt` logo2x

instance
  Prelude.NFData
    IosImportClientBrandingAttributes
  where
  rnf IosImportClientBrandingAttributes' {..} =
    Prelude.rnf supportLink
      `Prelude.seq` Prelude.rnf supportEmail
      `Prelude.seq` Prelude.rnf logo
      `Prelude.seq` Prelude.rnf logo3x
      `Prelude.seq` Prelude.rnf loginMessage
      `Prelude.seq` Prelude.rnf forgotPasswordLink
      `Prelude.seq` Prelude.rnf logo2x

instance
  Core.ToJSON
    IosImportClientBrandingAttributes
  where
  toJSON IosImportClientBrandingAttributes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SupportLink" Core..=) Prelude.<$> supportLink,
            ("SupportEmail" Core..=) Prelude.<$> supportEmail,
            ("Logo" Core..=) Prelude.<$> logo,
            ("Logo3x" Core..=) Prelude.<$> logo3x,
            ("LoginMessage" Core..=) Prelude.<$> loginMessage,
            ("ForgotPasswordLink" Core..=)
              Prelude.<$> forgotPasswordLink,
            ("Logo2x" Core..=) Prelude.<$> logo2x
          ]
      )
