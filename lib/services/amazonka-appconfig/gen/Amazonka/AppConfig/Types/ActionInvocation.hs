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
-- Module      : Amazonka.AppConfig.Types.ActionInvocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppConfig.Types.ActionInvocation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An extension that was invoked as part of a deployment event.
--
-- /See:/ 'newActionInvocation' smart constructor.
data ActionInvocation = ActionInvocation'
  { -- | The name of the action.
    actionName :: Prelude.Maybe Prelude.Text,
    -- | An Amazon Resource Name (ARN) for an Identity and Access Management
    -- assume role.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | A system-generated ID for this invocation.
    invocationId :: Prelude.Maybe Prelude.Text,
    -- | The error message when an extension invocation fails.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | The extension URI associated to the action point in the extension
    -- definition. The URI can be an Amazon Resource Name (ARN) for one of the
    -- following: an Lambda function, an Amazon Simple Queue Service queue, an
    -- Amazon Simple Notification Service topic, or the Amazon EventBridge
    -- default event bus.
    uri :: Prelude.Maybe Prelude.Text,
    -- | The error code when an extension invocation fails.
    errorCode :: Prelude.Maybe Prelude.Text,
    -- | The name, the ID, or the Amazon Resource Name (ARN) of the extension.
    extensionIdentifier :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ActionInvocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionName', 'actionInvocation_actionName' - The name of the action.
--
-- 'roleArn', 'actionInvocation_roleArn' - An Amazon Resource Name (ARN) for an Identity and Access Management
-- assume role.
--
-- 'invocationId', 'actionInvocation_invocationId' - A system-generated ID for this invocation.
--
-- 'errorMessage', 'actionInvocation_errorMessage' - The error message when an extension invocation fails.
--
-- 'uri', 'actionInvocation_uri' - The extension URI associated to the action point in the extension
-- definition. The URI can be an Amazon Resource Name (ARN) for one of the
-- following: an Lambda function, an Amazon Simple Queue Service queue, an
-- Amazon Simple Notification Service topic, or the Amazon EventBridge
-- default event bus.
--
-- 'errorCode', 'actionInvocation_errorCode' - The error code when an extension invocation fails.
--
-- 'extensionIdentifier', 'actionInvocation_extensionIdentifier' - The name, the ID, or the Amazon Resource Name (ARN) of the extension.
newActionInvocation ::
  ActionInvocation
newActionInvocation =
  ActionInvocation'
    { actionName = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      invocationId = Prelude.Nothing,
      errorMessage = Prelude.Nothing,
      uri = Prelude.Nothing,
      errorCode = Prelude.Nothing,
      extensionIdentifier = Prelude.Nothing
    }

-- | The name of the action.
actionInvocation_actionName :: Lens.Lens' ActionInvocation (Prelude.Maybe Prelude.Text)
actionInvocation_actionName = Lens.lens (\ActionInvocation' {actionName} -> actionName) (\s@ActionInvocation' {} a -> s {actionName = a} :: ActionInvocation)

-- | An Amazon Resource Name (ARN) for an Identity and Access Management
-- assume role.
actionInvocation_roleArn :: Lens.Lens' ActionInvocation (Prelude.Maybe Prelude.Text)
actionInvocation_roleArn = Lens.lens (\ActionInvocation' {roleArn} -> roleArn) (\s@ActionInvocation' {} a -> s {roleArn = a} :: ActionInvocation)

-- | A system-generated ID for this invocation.
actionInvocation_invocationId :: Lens.Lens' ActionInvocation (Prelude.Maybe Prelude.Text)
actionInvocation_invocationId = Lens.lens (\ActionInvocation' {invocationId} -> invocationId) (\s@ActionInvocation' {} a -> s {invocationId = a} :: ActionInvocation)

-- | The error message when an extension invocation fails.
actionInvocation_errorMessage :: Lens.Lens' ActionInvocation (Prelude.Maybe Prelude.Text)
actionInvocation_errorMessage = Lens.lens (\ActionInvocation' {errorMessage} -> errorMessage) (\s@ActionInvocation' {} a -> s {errorMessage = a} :: ActionInvocation)

-- | The extension URI associated to the action point in the extension
-- definition. The URI can be an Amazon Resource Name (ARN) for one of the
-- following: an Lambda function, an Amazon Simple Queue Service queue, an
-- Amazon Simple Notification Service topic, or the Amazon EventBridge
-- default event bus.
actionInvocation_uri :: Lens.Lens' ActionInvocation (Prelude.Maybe Prelude.Text)
actionInvocation_uri = Lens.lens (\ActionInvocation' {uri} -> uri) (\s@ActionInvocation' {} a -> s {uri = a} :: ActionInvocation)

-- | The error code when an extension invocation fails.
actionInvocation_errorCode :: Lens.Lens' ActionInvocation (Prelude.Maybe Prelude.Text)
actionInvocation_errorCode = Lens.lens (\ActionInvocation' {errorCode} -> errorCode) (\s@ActionInvocation' {} a -> s {errorCode = a} :: ActionInvocation)

-- | The name, the ID, or the Amazon Resource Name (ARN) of the extension.
actionInvocation_extensionIdentifier :: Lens.Lens' ActionInvocation (Prelude.Maybe Prelude.Text)
actionInvocation_extensionIdentifier = Lens.lens (\ActionInvocation' {extensionIdentifier} -> extensionIdentifier) (\s@ActionInvocation' {} a -> s {extensionIdentifier = a} :: ActionInvocation)

instance Core.FromJSON ActionInvocation where
  parseJSON =
    Core.withObject
      "ActionInvocation"
      ( \x ->
          ActionInvocation'
            Prelude.<$> (x Core..:? "ActionName")
            Prelude.<*> (x Core..:? "RoleArn")
            Prelude.<*> (x Core..:? "InvocationId")
            Prelude.<*> (x Core..:? "ErrorMessage")
            Prelude.<*> (x Core..:? "Uri")
            Prelude.<*> (x Core..:? "ErrorCode")
            Prelude.<*> (x Core..:? "ExtensionIdentifier")
      )

instance Prelude.Hashable ActionInvocation where
  hashWithSalt _salt ActionInvocation' {..} =
    _salt `Prelude.hashWithSalt` actionName
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` invocationId
      `Prelude.hashWithSalt` errorMessage
      `Prelude.hashWithSalt` uri
      `Prelude.hashWithSalt` errorCode
      `Prelude.hashWithSalt` extensionIdentifier

instance Prelude.NFData ActionInvocation where
  rnf ActionInvocation' {..} =
    Prelude.rnf actionName
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf invocationId
      `Prelude.seq` Prelude.rnf errorMessage
      `Prelude.seq` Prelude.rnf uri
      `Prelude.seq` Prelude.rnf errorCode
      `Prelude.seq` Prelude.rnf extensionIdentifier
