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
-- Module      : Amazonka.DeviceFarm.Types.TestGridSessionAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DeviceFarm.Types.TestGridSessionAction where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An action taken by a TestGridSession browser instance.
--
-- /See:/ 'newTestGridSessionAction' smart constructor.
data TestGridSessionAction = TestGridSessionAction'
  { -- | HTTP method that the browser used to make the request.
    requestMethod :: Prelude.Maybe Prelude.Text,
    -- | The time that the session invoked the action.
    started :: Prelude.Maybe Core.POSIX,
    -- | The time, in milliseconds, that the action took to complete in the
    -- browser.
    duration :: Prelude.Maybe Prelude.Integer,
    -- | The action taken by the session.
    action :: Prelude.Maybe Prelude.Text,
    -- | HTTP status code returned to the browser when the action was taken.
    statusCode :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TestGridSessionAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestMethod', 'testGridSessionAction_requestMethod' - HTTP method that the browser used to make the request.
--
-- 'started', 'testGridSessionAction_started' - The time that the session invoked the action.
--
-- 'duration', 'testGridSessionAction_duration' - The time, in milliseconds, that the action took to complete in the
-- browser.
--
-- 'action', 'testGridSessionAction_action' - The action taken by the session.
--
-- 'statusCode', 'testGridSessionAction_statusCode' - HTTP status code returned to the browser when the action was taken.
newTestGridSessionAction ::
  TestGridSessionAction
newTestGridSessionAction =
  TestGridSessionAction'
    { requestMethod =
        Prelude.Nothing,
      started = Prelude.Nothing,
      duration = Prelude.Nothing,
      action = Prelude.Nothing,
      statusCode = Prelude.Nothing
    }

-- | HTTP method that the browser used to make the request.
testGridSessionAction_requestMethod :: Lens.Lens' TestGridSessionAction (Prelude.Maybe Prelude.Text)
testGridSessionAction_requestMethod = Lens.lens (\TestGridSessionAction' {requestMethod} -> requestMethod) (\s@TestGridSessionAction' {} a -> s {requestMethod = a} :: TestGridSessionAction)

-- | The time that the session invoked the action.
testGridSessionAction_started :: Lens.Lens' TestGridSessionAction (Prelude.Maybe Prelude.UTCTime)
testGridSessionAction_started = Lens.lens (\TestGridSessionAction' {started} -> started) (\s@TestGridSessionAction' {} a -> s {started = a} :: TestGridSessionAction) Prelude.. Lens.mapping Core._Time

-- | The time, in milliseconds, that the action took to complete in the
-- browser.
testGridSessionAction_duration :: Lens.Lens' TestGridSessionAction (Prelude.Maybe Prelude.Integer)
testGridSessionAction_duration = Lens.lens (\TestGridSessionAction' {duration} -> duration) (\s@TestGridSessionAction' {} a -> s {duration = a} :: TestGridSessionAction)

-- | The action taken by the session.
testGridSessionAction_action :: Lens.Lens' TestGridSessionAction (Prelude.Maybe Prelude.Text)
testGridSessionAction_action = Lens.lens (\TestGridSessionAction' {action} -> action) (\s@TestGridSessionAction' {} a -> s {action = a} :: TestGridSessionAction)

-- | HTTP status code returned to the browser when the action was taken.
testGridSessionAction_statusCode :: Lens.Lens' TestGridSessionAction (Prelude.Maybe Prelude.Text)
testGridSessionAction_statusCode = Lens.lens (\TestGridSessionAction' {statusCode} -> statusCode) (\s@TestGridSessionAction' {} a -> s {statusCode = a} :: TestGridSessionAction)

instance Core.FromJSON TestGridSessionAction where
  parseJSON =
    Core.withObject
      "TestGridSessionAction"
      ( \x ->
          TestGridSessionAction'
            Prelude.<$> (x Core..:? "requestMethod")
            Prelude.<*> (x Core..:? "started")
            Prelude.<*> (x Core..:? "duration")
            Prelude.<*> (x Core..:? "action")
            Prelude.<*> (x Core..:? "statusCode")
      )

instance Prelude.Hashable TestGridSessionAction where
  hashWithSalt _salt TestGridSessionAction' {..} =
    _salt `Prelude.hashWithSalt` requestMethod
      `Prelude.hashWithSalt` started
      `Prelude.hashWithSalt` duration
      `Prelude.hashWithSalt` action
      `Prelude.hashWithSalt` statusCode

instance Prelude.NFData TestGridSessionAction where
  rnf TestGridSessionAction' {..} =
    Prelude.rnf requestMethod
      `Prelude.seq` Prelude.rnf started
      `Prelude.seq` Prelude.rnf duration
      `Prelude.seq` Prelude.rnf action
      `Prelude.seq` Prelude.rnf statusCode
