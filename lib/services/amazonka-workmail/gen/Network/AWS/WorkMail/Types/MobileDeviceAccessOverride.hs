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
-- Module      : Network.AWS.WorkMail.Types.MobileDeviceAccessOverride
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.MobileDeviceAccessOverride where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.WorkMail.Types.MobileDeviceAccessRuleEffect

-- | The override object.
--
-- /See:/ 'newMobileDeviceAccessOverride' smart constructor.
data MobileDeviceAccessOverride = MobileDeviceAccessOverride'
  { -- | The effect of the override, @ALLOW@ or @DENY@.
    effect :: Prelude.Maybe MobileDeviceAccessRuleEffect,
    -- | The WorkMail user to which the access override applies.
    userId :: Prelude.Maybe Prelude.Text,
    -- | The date the override was first created.
    dateCreated :: Prelude.Maybe Core.POSIX,
    -- | The date the override was last modified.
    dateModified :: Prelude.Maybe Core.POSIX,
    -- | The device to which the override applies.
    deviceId :: Prelude.Maybe Prelude.Text,
    -- | A description of the override.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MobileDeviceAccessOverride' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'effect', 'mobileDeviceAccessOverride_effect' - The effect of the override, @ALLOW@ or @DENY@.
--
-- 'userId', 'mobileDeviceAccessOverride_userId' - The WorkMail user to which the access override applies.
--
-- 'dateCreated', 'mobileDeviceAccessOverride_dateCreated' - The date the override was first created.
--
-- 'dateModified', 'mobileDeviceAccessOverride_dateModified' - The date the override was last modified.
--
-- 'deviceId', 'mobileDeviceAccessOverride_deviceId' - The device to which the override applies.
--
-- 'description', 'mobileDeviceAccessOverride_description' - A description of the override.
newMobileDeviceAccessOverride ::
  MobileDeviceAccessOverride
newMobileDeviceAccessOverride =
  MobileDeviceAccessOverride'
    { effect =
        Prelude.Nothing,
      userId = Prelude.Nothing,
      dateCreated = Prelude.Nothing,
      dateModified = Prelude.Nothing,
      deviceId = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The effect of the override, @ALLOW@ or @DENY@.
mobileDeviceAccessOverride_effect :: Lens.Lens' MobileDeviceAccessOverride (Prelude.Maybe MobileDeviceAccessRuleEffect)
mobileDeviceAccessOverride_effect = Lens.lens (\MobileDeviceAccessOverride' {effect} -> effect) (\s@MobileDeviceAccessOverride' {} a -> s {effect = a} :: MobileDeviceAccessOverride)

-- | The WorkMail user to which the access override applies.
mobileDeviceAccessOverride_userId :: Lens.Lens' MobileDeviceAccessOverride (Prelude.Maybe Prelude.Text)
mobileDeviceAccessOverride_userId = Lens.lens (\MobileDeviceAccessOverride' {userId} -> userId) (\s@MobileDeviceAccessOverride' {} a -> s {userId = a} :: MobileDeviceAccessOverride)

-- | The date the override was first created.
mobileDeviceAccessOverride_dateCreated :: Lens.Lens' MobileDeviceAccessOverride (Prelude.Maybe Prelude.UTCTime)
mobileDeviceAccessOverride_dateCreated = Lens.lens (\MobileDeviceAccessOverride' {dateCreated} -> dateCreated) (\s@MobileDeviceAccessOverride' {} a -> s {dateCreated = a} :: MobileDeviceAccessOverride) Prelude.. Lens.mapping Core._Time

-- | The date the override was last modified.
mobileDeviceAccessOverride_dateModified :: Lens.Lens' MobileDeviceAccessOverride (Prelude.Maybe Prelude.UTCTime)
mobileDeviceAccessOverride_dateModified = Lens.lens (\MobileDeviceAccessOverride' {dateModified} -> dateModified) (\s@MobileDeviceAccessOverride' {} a -> s {dateModified = a} :: MobileDeviceAccessOverride) Prelude.. Lens.mapping Core._Time

-- | The device to which the override applies.
mobileDeviceAccessOverride_deviceId :: Lens.Lens' MobileDeviceAccessOverride (Prelude.Maybe Prelude.Text)
mobileDeviceAccessOverride_deviceId = Lens.lens (\MobileDeviceAccessOverride' {deviceId} -> deviceId) (\s@MobileDeviceAccessOverride' {} a -> s {deviceId = a} :: MobileDeviceAccessOverride)

-- | A description of the override.
mobileDeviceAccessOverride_description :: Lens.Lens' MobileDeviceAccessOverride (Prelude.Maybe Prelude.Text)
mobileDeviceAccessOverride_description = Lens.lens (\MobileDeviceAccessOverride' {description} -> description) (\s@MobileDeviceAccessOverride' {} a -> s {description = a} :: MobileDeviceAccessOverride)

instance Core.FromJSON MobileDeviceAccessOverride where
  parseJSON =
    Core.withObject
      "MobileDeviceAccessOverride"
      ( \x ->
          MobileDeviceAccessOverride'
            Prelude.<$> (x Core..:? "Effect")
            Prelude.<*> (x Core..:? "UserId")
            Prelude.<*> (x Core..:? "DateCreated")
            Prelude.<*> (x Core..:? "DateModified")
            Prelude.<*> (x Core..:? "DeviceId")
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable MobileDeviceAccessOverride

instance Prelude.NFData MobileDeviceAccessOverride
