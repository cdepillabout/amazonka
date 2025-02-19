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
-- Module      : Amazonka.WorkMail.Types.MobileDeviceAccessRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WorkMail.Types.MobileDeviceAccessRule where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.WorkMail.Types.MobileDeviceAccessRuleEffect

-- | A rule that controls access to mobile devices for an Amazon WorkMail
-- group.
--
-- /See:/ 'newMobileDeviceAccessRule' smart constructor.
data MobileDeviceAccessRule = MobileDeviceAccessRule'
  { -- | The name of a mobile access rule.
    name :: Prelude.Maybe Prelude.Text,
    -- | Device types that a rule will match.
    deviceTypes :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The ID assigned to a mobile access rule.
    mobileDeviceAccessRuleId :: Prelude.Maybe Prelude.Text,
    -- | Device user agents that a rule __will not__ match. All other device user
    -- agents will match.
    notDeviceUserAgents :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device user agents that a rule will match.
    deviceUserAgents :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device models that a rule __will not__ match. All other device models
    -- will match.
    notDeviceModels :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The effect of the rule when it matches. Allowed values are @ALLOW@ or
    -- @DENY@.
    effect :: Prelude.Maybe MobileDeviceAccessRuleEffect,
    -- | The description of a mobile access rule.
    description :: Prelude.Maybe Prelude.Text,
    -- | Device models that a rule will match.
    deviceModels :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device types that a rule __will not__ match. All other device types will
    -- match.
    notDeviceTypes :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device operating systems that a rule will match.
    deviceOperatingSystems :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device operating systems that a rule __will not__ match. All other
    -- device types will match.
    notDeviceOperatingSystems :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The date and time at which an access rule was created.
    dateCreated :: Prelude.Maybe Core.POSIX,
    -- | The date and time at which an access rule was modified.
    dateModified :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MobileDeviceAccessRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'mobileDeviceAccessRule_name' - The name of a mobile access rule.
--
-- 'deviceTypes', 'mobileDeviceAccessRule_deviceTypes' - Device types that a rule will match.
--
-- 'mobileDeviceAccessRuleId', 'mobileDeviceAccessRule_mobileDeviceAccessRuleId' - The ID assigned to a mobile access rule.
--
-- 'notDeviceUserAgents', 'mobileDeviceAccessRule_notDeviceUserAgents' - Device user agents that a rule __will not__ match. All other device user
-- agents will match.
--
-- 'deviceUserAgents', 'mobileDeviceAccessRule_deviceUserAgents' - Device user agents that a rule will match.
--
-- 'notDeviceModels', 'mobileDeviceAccessRule_notDeviceModels' - Device models that a rule __will not__ match. All other device models
-- will match.
--
-- 'effect', 'mobileDeviceAccessRule_effect' - The effect of the rule when it matches. Allowed values are @ALLOW@ or
-- @DENY@.
--
-- 'description', 'mobileDeviceAccessRule_description' - The description of a mobile access rule.
--
-- 'deviceModels', 'mobileDeviceAccessRule_deviceModels' - Device models that a rule will match.
--
-- 'notDeviceTypes', 'mobileDeviceAccessRule_notDeviceTypes' - Device types that a rule __will not__ match. All other device types will
-- match.
--
-- 'deviceOperatingSystems', 'mobileDeviceAccessRule_deviceOperatingSystems' - Device operating systems that a rule will match.
--
-- 'notDeviceOperatingSystems', 'mobileDeviceAccessRule_notDeviceOperatingSystems' - Device operating systems that a rule __will not__ match. All other
-- device types will match.
--
-- 'dateCreated', 'mobileDeviceAccessRule_dateCreated' - The date and time at which an access rule was created.
--
-- 'dateModified', 'mobileDeviceAccessRule_dateModified' - The date and time at which an access rule was modified.
newMobileDeviceAccessRule ::
  MobileDeviceAccessRule
newMobileDeviceAccessRule =
  MobileDeviceAccessRule'
    { name = Prelude.Nothing,
      deviceTypes = Prelude.Nothing,
      mobileDeviceAccessRuleId = Prelude.Nothing,
      notDeviceUserAgents = Prelude.Nothing,
      deviceUserAgents = Prelude.Nothing,
      notDeviceModels = Prelude.Nothing,
      effect = Prelude.Nothing,
      description = Prelude.Nothing,
      deviceModels = Prelude.Nothing,
      notDeviceTypes = Prelude.Nothing,
      deviceOperatingSystems = Prelude.Nothing,
      notDeviceOperatingSystems = Prelude.Nothing,
      dateCreated = Prelude.Nothing,
      dateModified = Prelude.Nothing
    }

-- | The name of a mobile access rule.
mobileDeviceAccessRule_name :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe Prelude.Text)
mobileDeviceAccessRule_name = Lens.lens (\MobileDeviceAccessRule' {name} -> name) (\s@MobileDeviceAccessRule' {} a -> s {name = a} :: MobileDeviceAccessRule)

-- | Device types that a rule will match.
mobileDeviceAccessRule_deviceTypes :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
mobileDeviceAccessRule_deviceTypes = Lens.lens (\MobileDeviceAccessRule' {deviceTypes} -> deviceTypes) (\s@MobileDeviceAccessRule' {} a -> s {deviceTypes = a} :: MobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | The ID assigned to a mobile access rule.
mobileDeviceAccessRule_mobileDeviceAccessRuleId :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe Prelude.Text)
mobileDeviceAccessRule_mobileDeviceAccessRuleId = Lens.lens (\MobileDeviceAccessRule' {mobileDeviceAccessRuleId} -> mobileDeviceAccessRuleId) (\s@MobileDeviceAccessRule' {} a -> s {mobileDeviceAccessRuleId = a} :: MobileDeviceAccessRule)

-- | Device user agents that a rule __will not__ match. All other device user
-- agents will match.
mobileDeviceAccessRule_notDeviceUserAgents :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
mobileDeviceAccessRule_notDeviceUserAgents = Lens.lens (\MobileDeviceAccessRule' {notDeviceUserAgents} -> notDeviceUserAgents) (\s@MobileDeviceAccessRule' {} a -> s {notDeviceUserAgents = a} :: MobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device user agents that a rule will match.
mobileDeviceAccessRule_deviceUserAgents :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
mobileDeviceAccessRule_deviceUserAgents = Lens.lens (\MobileDeviceAccessRule' {deviceUserAgents} -> deviceUserAgents) (\s@MobileDeviceAccessRule' {} a -> s {deviceUserAgents = a} :: MobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device models that a rule __will not__ match. All other device models
-- will match.
mobileDeviceAccessRule_notDeviceModels :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
mobileDeviceAccessRule_notDeviceModels = Lens.lens (\MobileDeviceAccessRule' {notDeviceModels} -> notDeviceModels) (\s@MobileDeviceAccessRule' {} a -> s {notDeviceModels = a} :: MobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | The effect of the rule when it matches. Allowed values are @ALLOW@ or
-- @DENY@.
mobileDeviceAccessRule_effect :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe MobileDeviceAccessRuleEffect)
mobileDeviceAccessRule_effect = Lens.lens (\MobileDeviceAccessRule' {effect} -> effect) (\s@MobileDeviceAccessRule' {} a -> s {effect = a} :: MobileDeviceAccessRule)

-- | The description of a mobile access rule.
mobileDeviceAccessRule_description :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe Prelude.Text)
mobileDeviceAccessRule_description = Lens.lens (\MobileDeviceAccessRule' {description} -> description) (\s@MobileDeviceAccessRule' {} a -> s {description = a} :: MobileDeviceAccessRule)

-- | Device models that a rule will match.
mobileDeviceAccessRule_deviceModels :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
mobileDeviceAccessRule_deviceModels = Lens.lens (\MobileDeviceAccessRule' {deviceModels} -> deviceModels) (\s@MobileDeviceAccessRule' {} a -> s {deviceModels = a} :: MobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device types that a rule __will not__ match. All other device types will
-- match.
mobileDeviceAccessRule_notDeviceTypes :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
mobileDeviceAccessRule_notDeviceTypes = Lens.lens (\MobileDeviceAccessRule' {notDeviceTypes} -> notDeviceTypes) (\s@MobileDeviceAccessRule' {} a -> s {notDeviceTypes = a} :: MobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device operating systems that a rule will match.
mobileDeviceAccessRule_deviceOperatingSystems :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
mobileDeviceAccessRule_deviceOperatingSystems = Lens.lens (\MobileDeviceAccessRule' {deviceOperatingSystems} -> deviceOperatingSystems) (\s@MobileDeviceAccessRule' {} a -> s {deviceOperatingSystems = a} :: MobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device operating systems that a rule __will not__ match. All other
-- device types will match.
mobileDeviceAccessRule_notDeviceOperatingSystems :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
mobileDeviceAccessRule_notDeviceOperatingSystems = Lens.lens (\MobileDeviceAccessRule' {notDeviceOperatingSystems} -> notDeviceOperatingSystems) (\s@MobileDeviceAccessRule' {} a -> s {notDeviceOperatingSystems = a} :: MobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | The date and time at which an access rule was created.
mobileDeviceAccessRule_dateCreated :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe Prelude.UTCTime)
mobileDeviceAccessRule_dateCreated = Lens.lens (\MobileDeviceAccessRule' {dateCreated} -> dateCreated) (\s@MobileDeviceAccessRule' {} a -> s {dateCreated = a} :: MobileDeviceAccessRule) Prelude.. Lens.mapping Core._Time

-- | The date and time at which an access rule was modified.
mobileDeviceAccessRule_dateModified :: Lens.Lens' MobileDeviceAccessRule (Prelude.Maybe Prelude.UTCTime)
mobileDeviceAccessRule_dateModified = Lens.lens (\MobileDeviceAccessRule' {dateModified} -> dateModified) (\s@MobileDeviceAccessRule' {} a -> s {dateModified = a} :: MobileDeviceAccessRule) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON MobileDeviceAccessRule where
  parseJSON =
    Core.withObject
      "MobileDeviceAccessRule"
      ( \x ->
          MobileDeviceAccessRule'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "DeviceTypes")
            Prelude.<*> (x Core..:? "MobileDeviceAccessRuleId")
            Prelude.<*> (x Core..:? "NotDeviceUserAgents")
            Prelude.<*> (x Core..:? "DeviceUserAgents")
            Prelude.<*> (x Core..:? "NotDeviceModels")
            Prelude.<*> (x Core..:? "Effect")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "DeviceModels")
            Prelude.<*> (x Core..:? "NotDeviceTypes")
            Prelude.<*> (x Core..:? "DeviceOperatingSystems")
            Prelude.<*> (x Core..:? "NotDeviceOperatingSystems")
            Prelude.<*> (x Core..:? "DateCreated")
            Prelude.<*> (x Core..:? "DateModified")
      )

instance Prelude.Hashable MobileDeviceAccessRule where
  hashWithSalt _salt MobileDeviceAccessRule' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` deviceTypes
      `Prelude.hashWithSalt` mobileDeviceAccessRuleId
      `Prelude.hashWithSalt` notDeviceUserAgents
      `Prelude.hashWithSalt` deviceUserAgents
      `Prelude.hashWithSalt` notDeviceModels
      `Prelude.hashWithSalt` effect
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` deviceModels
      `Prelude.hashWithSalt` notDeviceTypes
      `Prelude.hashWithSalt` deviceOperatingSystems
      `Prelude.hashWithSalt` notDeviceOperatingSystems
      `Prelude.hashWithSalt` dateCreated
      `Prelude.hashWithSalt` dateModified

instance Prelude.NFData MobileDeviceAccessRule where
  rnf MobileDeviceAccessRule' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf deviceTypes
      `Prelude.seq` Prelude.rnf mobileDeviceAccessRuleId
      `Prelude.seq` Prelude.rnf notDeviceUserAgents
      `Prelude.seq` Prelude.rnf deviceUserAgents
      `Prelude.seq` Prelude.rnf notDeviceModels
      `Prelude.seq` Prelude.rnf effect
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf deviceModels
      `Prelude.seq` Prelude.rnf notDeviceTypes
      `Prelude.seq` Prelude.rnf deviceOperatingSystems
      `Prelude.seq` Prelude.rnf notDeviceOperatingSystems
      `Prelude.seq` Prelude.rnf dateCreated
      `Prelude.seq` Prelude.rnf dateModified
