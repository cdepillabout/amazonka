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
-- Module      : Amazonka.IoT.Types.AuditNotificationTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.AuditNotificationTarget where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the targets to which audit notifications are sent.
--
-- /See:/ 'newAuditNotificationTarget' smart constructor.
data AuditNotificationTarget = AuditNotificationTarget'
  { -- | The ARN of the role that grants permission to send notifications to the
    -- target.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the target (SNS topic) to which audit notifications are sent.
    targetArn :: Prelude.Maybe Prelude.Text,
    -- | True if notifications to the target are enabled.
    enabled :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AuditNotificationTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleArn', 'auditNotificationTarget_roleArn' - The ARN of the role that grants permission to send notifications to the
-- target.
--
-- 'targetArn', 'auditNotificationTarget_targetArn' - The ARN of the target (SNS topic) to which audit notifications are sent.
--
-- 'enabled', 'auditNotificationTarget_enabled' - True if notifications to the target are enabled.
newAuditNotificationTarget ::
  AuditNotificationTarget
newAuditNotificationTarget =
  AuditNotificationTarget'
    { roleArn = Prelude.Nothing,
      targetArn = Prelude.Nothing,
      enabled = Prelude.Nothing
    }

-- | The ARN of the role that grants permission to send notifications to the
-- target.
auditNotificationTarget_roleArn :: Lens.Lens' AuditNotificationTarget (Prelude.Maybe Prelude.Text)
auditNotificationTarget_roleArn = Lens.lens (\AuditNotificationTarget' {roleArn} -> roleArn) (\s@AuditNotificationTarget' {} a -> s {roleArn = a} :: AuditNotificationTarget)

-- | The ARN of the target (SNS topic) to which audit notifications are sent.
auditNotificationTarget_targetArn :: Lens.Lens' AuditNotificationTarget (Prelude.Maybe Prelude.Text)
auditNotificationTarget_targetArn = Lens.lens (\AuditNotificationTarget' {targetArn} -> targetArn) (\s@AuditNotificationTarget' {} a -> s {targetArn = a} :: AuditNotificationTarget)

-- | True if notifications to the target are enabled.
auditNotificationTarget_enabled :: Lens.Lens' AuditNotificationTarget (Prelude.Maybe Prelude.Bool)
auditNotificationTarget_enabled = Lens.lens (\AuditNotificationTarget' {enabled} -> enabled) (\s@AuditNotificationTarget' {} a -> s {enabled = a} :: AuditNotificationTarget)

instance Core.FromJSON AuditNotificationTarget where
  parseJSON =
    Core.withObject
      "AuditNotificationTarget"
      ( \x ->
          AuditNotificationTarget'
            Prelude.<$> (x Core..:? "roleArn")
            Prelude.<*> (x Core..:? "targetArn")
            Prelude.<*> (x Core..:? "enabled")
      )

instance Prelude.Hashable AuditNotificationTarget where
  hashWithSalt _salt AuditNotificationTarget' {..} =
    _salt `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` targetArn
      `Prelude.hashWithSalt` enabled

instance Prelude.NFData AuditNotificationTarget where
  rnf AuditNotificationTarget' {..} =
    Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf targetArn
      `Prelude.seq` Prelude.rnf enabled

instance Core.ToJSON AuditNotificationTarget where
  toJSON AuditNotificationTarget' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("roleArn" Core..=) Prelude.<$> roleArn,
            ("targetArn" Core..=) Prelude.<$> targetArn,
            ("enabled" Core..=) Prelude.<$> enabled
          ]
      )
