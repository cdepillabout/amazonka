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
-- Module      : Amazonka.CognitoIdentityProvider.Types.SmsMfaConfigType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CognitoIdentityProvider.Types.SmsMfaConfigType where

import Amazonka.CognitoIdentityProvider.Types.SmsConfigurationType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The SMS text message multi-factor authentication (MFA) configuration
-- type.
--
-- /See:/ 'newSmsMfaConfigType' smart constructor.
data SmsMfaConfigType = SmsMfaConfigType'
  { -- | The SMS configuration with the settings that your Amazon Cognito user
    -- pool must use to send an SMS message from your Amazon Web Services
    -- account through Amazon Simple Notification Service. To request Amazon
    -- SNS in the Amazon Web Services Region that you want, the Amazon Cognito
    -- user pool uses an Identity and Access Management (IAM) role that you
    -- provide for your Amazon Web Services account.
    smsConfiguration :: Prelude.Maybe SmsConfigurationType,
    -- | The SMS authentication message that will be sent to users with the code
    -- they must sign in. The message must contain the ‘{####}’ placeholder,
    -- which is replaced with the code. If the message isn\'t included, and
    -- default message will be used.
    smsAuthenticationMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SmsMfaConfigType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'smsConfiguration', 'smsMfaConfigType_smsConfiguration' - The SMS configuration with the settings that your Amazon Cognito user
-- pool must use to send an SMS message from your Amazon Web Services
-- account through Amazon Simple Notification Service. To request Amazon
-- SNS in the Amazon Web Services Region that you want, the Amazon Cognito
-- user pool uses an Identity and Access Management (IAM) role that you
-- provide for your Amazon Web Services account.
--
-- 'smsAuthenticationMessage', 'smsMfaConfigType_smsAuthenticationMessage' - The SMS authentication message that will be sent to users with the code
-- they must sign in. The message must contain the ‘{####}’ placeholder,
-- which is replaced with the code. If the message isn\'t included, and
-- default message will be used.
newSmsMfaConfigType ::
  SmsMfaConfigType
newSmsMfaConfigType =
  SmsMfaConfigType'
    { smsConfiguration =
        Prelude.Nothing,
      smsAuthenticationMessage = Prelude.Nothing
    }

-- | The SMS configuration with the settings that your Amazon Cognito user
-- pool must use to send an SMS message from your Amazon Web Services
-- account through Amazon Simple Notification Service. To request Amazon
-- SNS in the Amazon Web Services Region that you want, the Amazon Cognito
-- user pool uses an Identity and Access Management (IAM) role that you
-- provide for your Amazon Web Services account.
smsMfaConfigType_smsConfiguration :: Lens.Lens' SmsMfaConfigType (Prelude.Maybe SmsConfigurationType)
smsMfaConfigType_smsConfiguration = Lens.lens (\SmsMfaConfigType' {smsConfiguration} -> smsConfiguration) (\s@SmsMfaConfigType' {} a -> s {smsConfiguration = a} :: SmsMfaConfigType)

-- | The SMS authentication message that will be sent to users with the code
-- they must sign in. The message must contain the ‘{####}’ placeholder,
-- which is replaced with the code. If the message isn\'t included, and
-- default message will be used.
smsMfaConfigType_smsAuthenticationMessage :: Lens.Lens' SmsMfaConfigType (Prelude.Maybe Prelude.Text)
smsMfaConfigType_smsAuthenticationMessage = Lens.lens (\SmsMfaConfigType' {smsAuthenticationMessage} -> smsAuthenticationMessage) (\s@SmsMfaConfigType' {} a -> s {smsAuthenticationMessage = a} :: SmsMfaConfigType)

instance Core.FromJSON SmsMfaConfigType where
  parseJSON =
    Core.withObject
      "SmsMfaConfigType"
      ( \x ->
          SmsMfaConfigType'
            Prelude.<$> (x Core..:? "SmsConfiguration")
            Prelude.<*> (x Core..:? "SmsAuthenticationMessage")
      )

instance Prelude.Hashable SmsMfaConfigType where
  hashWithSalt _salt SmsMfaConfigType' {..} =
    _salt `Prelude.hashWithSalt` smsConfiguration
      `Prelude.hashWithSalt` smsAuthenticationMessage

instance Prelude.NFData SmsMfaConfigType where
  rnf SmsMfaConfigType' {..} =
    Prelude.rnf smsConfiguration
      `Prelude.seq` Prelude.rnf smsAuthenticationMessage

instance Core.ToJSON SmsMfaConfigType where
  toJSON SmsMfaConfigType' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SmsConfiguration" Core..=)
              Prelude.<$> smsConfiguration,
            ("SmsAuthenticationMessage" Core..=)
              Prelude.<$> smsAuthenticationMessage
          ]
      )
