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
-- Module      : Amazonka.DeviceFarm.Types.AccountSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DeviceFarm.Types.AccountSettings where

import qualified Amazonka.Core as Core
import Amazonka.DeviceFarm.Types.DevicePlatform
import Amazonka.DeviceFarm.Types.TrialMinutes
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A container for account-level settings in AWS Device Farm.
--
-- /See:/ 'newAccountSettings' smart constructor.
data AccountSettings = AccountSettings'
  { -- | Returns the unmetered remote access devices you have purchased or want
    -- to purchase.
    unmeteredRemoteAccessDevices :: Prelude.Maybe (Prelude.HashMap DevicePlatform Prelude.Int),
    -- | Information about an AWS account\'s usage of free trial device minutes.
    trialMinutes :: Prelude.Maybe TrialMinutes,
    -- | The default number of minutes (at the account level) a test run executes
    -- before it times out. The default value is 150 minutes.
    defaultJobTimeoutMinutes :: Prelude.Maybe Prelude.Int,
    -- | The maximum number of device slots that the AWS account can purchase.
    -- Each maximum is expressed as an @offering-id:number@ pair, where the
    -- @offering-id@ represents one of the IDs returned by the @ListOfferings@
    -- command.
    maxSlots :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Int),
    -- | Returns the unmetered devices you have purchased or want to purchase.
    unmeteredDevices :: Prelude.Maybe (Prelude.HashMap DevicePlatform Prelude.Int),
    -- | The AWS account number specified in the @AccountSettings@ container.
    awsAccountNumber :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of minutes a test run executes before it times out.
    maxJobTimeoutMinutes :: Prelude.Maybe Prelude.Int,
    -- | When set to @true@, for private devices, Device Farm does not sign your
    -- app again. For public devices, Device Farm always signs your apps again.
    --
    -- For more information about how Device Farm re-signs your apps, see
    -- <https://aws.amazon.com/device-farm/faq/ Do you modify my app?> in the
    -- /AWS Device Farm FAQs/.
    skipAppResign :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccountSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unmeteredRemoteAccessDevices', 'accountSettings_unmeteredRemoteAccessDevices' - Returns the unmetered remote access devices you have purchased or want
-- to purchase.
--
-- 'trialMinutes', 'accountSettings_trialMinutes' - Information about an AWS account\'s usage of free trial device minutes.
--
-- 'defaultJobTimeoutMinutes', 'accountSettings_defaultJobTimeoutMinutes' - The default number of minutes (at the account level) a test run executes
-- before it times out. The default value is 150 minutes.
--
-- 'maxSlots', 'accountSettings_maxSlots' - The maximum number of device slots that the AWS account can purchase.
-- Each maximum is expressed as an @offering-id:number@ pair, where the
-- @offering-id@ represents one of the IDs returned by the @ListOfferings@
-- command.
--
-- 'unmeteredDevices', 'accountSettings_unmeteredDevices' - Returns the unmetered devices you have purchased or want to purchase.
--
-- 'awsAccountNumber', 'accountSettings_awsAccountNumber' - The AWS account number specified in the @AccountSettings@ container.
--
-- 'maxJobTimeoutMinutes', 'accountSettings_maxJobTimeoutMinutes' - The maximum number of minutes a test run executes before it times out.
--
-- 'skipAppResign', 'accountSettings_skipAppResign' - When set to @true@, for private devices, Device Farm does not sign your
-- app again. For public devices, Device Farm always signs your apps again.
--
-- For more information about how Device Farm re-signs your apps, see
-- <https://aws.amazon.com/device-farm/faq/ Do you modify my app?> in the
-- /AWS Device Farm FAQs/.
newAccountSettings ::
  AccountSettings
newAccountSettings =
  AccountSettings'
    { unmeteredRemoteAccessDevices =
        Prelude.Nothing,
      trialMinutes = Prelude.Nothing,
      defaultJobTimeoutMinutes = Prelude.Nothing,
      maxSlots = Prelude.Nothing,
      unmeteredDevices = Prelude.Nothing,
      awsAccountNumber = Prelude.Nothing,
      maxJobTimeoutMinutes = Prelude.Nothing,
      skipAppResign = Prelude.Nothing
    }

-- | Returns the unmetered remote access devices you have purchased or want
-- to purchase.
accountSettings_unmeteredRemoteAccessDevices :: Lens.Lens' AccountSettings (Prelude.Maybe (Prelude.HashMap DevicePlatform Prelude.Int))
accountSettings_unmeteredRemoteAccessDevices = Lens.lens (\AccountSettings' {unmeteredRemoteAccessDevices} -> unmeteredRemoteAccessDevices) (\s@AccountSettings' {} a -> s {unmeteredRemoteAccessDevices = a} :: AccountSettings) Prelude.. Lens.mapping Lens.coerced

-- | Information about an AWS account\'s usage of free trial device minutes.
accountSettings_trialMinutes :: Lens.Lens' AccountSettings (Prelude.Maybe TrialMinutes)
accountSettings_trialMinutes = Lens.lens (\AccountSettings' {trialMinutes} -> trialMinutes) (\s@AccountSettings' {} a -> s {trialMinutes = a} :: AccountSettings)

-- | The default number of minutes (at the account level) a test run executes
-- before it times out. The default value is 150 minutes.
accountSettings_defaultJobTimeoutMinutes :: Lens.Lens' AccountSettings (Prelude.Maybe Prelude.Int)
accountSettings_defaultJobTimeoutMinutes = Lens.lens (\AccountSettings' {defaultJobTimeoutMinutes} -> defaultJobTimeoutMinutes) (\s@AccountSettings' {} a -> s {defaultJobTimeoutMinutes = a} :: AccountSettings)

-- | The maximum number of device slots that the AWS account can purchase.
-- Each maximum is expressed as an @offering-id:number@ pair, where the
-- @offering-id@ represents one of the IDs returned by the @ListOfferings@
-- command.
accountSettings_maxSlots :: Lens.Lens' AccountSettings (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Int))
accountSettings_maxSlots = Lens.lens (\AccountSettings' {maxSlots} -> maxSlots) (\s@AccountSettings' {} a -> s {maxSlots = a} :: AccountSettings) Prelude.. Lens.mapping Lens.coerced

-- | Returns the unmetered devices you have purchased or want to purchase.
accountSettings_unmeteredDevices :: Lens.Lens' AccountSettings (Prelude.Maybe (Prelude.HashMap DevicePlatform Prelude.Int))
accountSettings_unmeteredDevices = Lens.lens (\AccountSettings' {unmeteredDevices} -> unmeteredDevices) (\s@AccountSettings' {} a -> s {unmeteredDevices = a} :: AccountSettings) Prelude.. Lens.mapping Lens.coerced

-- | The AWS account number specified in the @AccountSettings@ container.
accountSettings_awsAccountNumber :: Lens.Lens' AccountSettings (Prelude.Maybe Prelude.Text)
accountSettings_awsAccountNumber = Lens.lens (\AccountSettings' {awsAccountNumber} -> awsAccountNumber) (\s@AccountSettings' {} a -> s {awsAccountNumber = a} :: AccountSettings)

-- | The maximum number of minutes a test run executes before it times out.
accountSettings_maxJobTimeoutMinutes :: Lens.Lens' AccountSettings (Prelude.Maybe Prelude.Int)
accountSettings_maxJobTimeoutMinutes = Lens.lens (\AccountSettings' {maxJobTimeoutMinutes} -> maxJobTimeoutMinutes) (\s@AccountSettings' {} a -> s {maxJobTimeoutMinutes = a} :: AccountSettings)

-- | When set to @true@, for private devices, Device Farm does not sign your
-- app again. For public devices, Device Farm always signs your apps again.
--
-- For more information about how Device Farm re-signs your apps, see
-- <https://aws.amazon.com/device-farm/faq/ Do you modify my app?> in the
-- /AWS Device Farm FAQs/.
accountSettings_skipAppResign :: Lens.Lens' AccountSettings (Prelude.Maybe Prelude.Bool)
accountSettings_skipAppResign = Lens.lens (\AccountSettings' {skipAppResign} -> skipAppResign) (\s@AccountSettings' {} a -> s {skipAppResign = a} :: AccountSettings)

instance Core.FromJSON AccountSettings where
  parseJSON =
    Core.withObject
      "AccountSettings"
      ( \x ->
          AccountSettings'
            Prelude.<$> ( x Core..:? "unmeteredRemoteAccessDevices"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "trialMinutes")
            Prelude.<*> (x Core..:? "defaultJobTimeoutMinutes")
            Prelude.<*> (x Core..:? "maxSlots" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "unmeteredDevices"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "awsAccountNumber")
            Prelude.<*> (x Core..:? "maxJobTimeoutMinutes")
            Prelude.<*> (x Core..:? "skipAppResign")
      )

instance Prelude.Hashable AccountSettings where
  hashWithSalt _salt AccountSettings' {..} =
    _salt
      `Prelude.hashWithSalt` unmeteredRemoteAccessDevices
      `Prelude.hashWithSalt` trialMinutes
      `Prelude.hashWithSalt` defaultJobTimeoutMinutes
      `Prelude.hashWithSalt` maxSlots
      `Prelude.hashWithSalt` unmeteredDevices
      `Prelude.hashWithSalt` awsAccountNumber
      `Prelude.hashWithSalt` maxJobTimeoutMinutes
      `Prelude.hashWithSalt` skipAppResign

instance Prelude.NFData AccountSettings where
  rnf AccountSettings' {..} =
    Prelude.rnf unmeteredRemoteAccessDevices
      `Prelude.seq` Prelude.rnf trialMinutes
      `Prelude.seq` Prelude.rnf defaultJobTimeoutMinutes
      `Prelude.seq` Prelude.rnf maxSlots
      `Prelude.seq` Prelude.rnf unmeteredDevices
      `Prelude.seq` Prelude.rnf awsAccountNumber
      `Prelude.seq` Prelude.rnf maxJobTimeoutMinutes
      `Prelude.seq` Prelude.rnf skipAppResign
