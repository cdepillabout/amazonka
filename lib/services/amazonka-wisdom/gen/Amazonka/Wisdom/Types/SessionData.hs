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
-- Module      : Amazonka.Wisdom.Types.SessionData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Wisdom.Types.SessionData where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the session.
--
-- /See:/ 'newSessionData' smart constructor.
data SessionData = SessionData'
  { -- | The tags used to organize, track, or control access for this resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The description of the session.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the session.
    name :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the session.
    sessionArn :: Prelude.Text,
    -- | The identifier of the session.
    sessionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SessionData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'sessionData_tags' - The tags used to organize, track, or control access for this resource.
--
-- 'description', 'sessionData_description' - The description of the session.
--
-- 'name', 'sessionData_name' - The name of the session.
--
-- 'sessionArn', 'sessionData_sessionArn' - The Amazon Resource Name (ARN) of the session.
--
-- 'sessionId', 'sessionData_sessionId' - The identifier of the session.
newSessionData ::
  -- | 'name'
  Prelude.Text ->
  -- | 'sessionArn'
  Prelude.Text ->
  -- | 'sessionId'
  Prelude.Text ->
  SessionData
newSessionData pName_ pSessionArn_ pSessionId_ =
  SessionData'
    { tags = Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_,
      sessionArn = pSessionArn_,
      sessionId = pSessionId_
    }

-- | The tags used to organize, track, or control access for this resource.
sessionData_tags :: Lens.Lens' SessionData (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
sessionData_tags = Lens.lens (\SessionData' {tags} -> tags) (\s@SessionData' {} a -> s {tags = a} :: SessionData) Prelude.. Lens.mapping Lens.coerced

-- | The description of the session.
sessionData_description :: Lens.Lens' SessionData (Prelude.Maybe Prelude.Text)
sessionData_description = Lens.lens (\SessionData' {description} -> description) (\s@SessionData' {} a -> s {description = a} :: SessionData)

-- | The name of the session.
sessionData_name :: Lens.Lens' SessionData Prelude.Text
sessionData_name = Lens.lens (\SessionData' {name} -> name) (\s@SessionData' {} a -> s {name = a} :: SessionData)

-- | The Amazon Resource Name (ARN) of the session.
sessionData_sessionArn :: Lens.Lens' SessionData Prelude.Text
sessionData_sessionArn = Lens.lens (\SessionData' {sessionArn} -> sessionArn) (\s@SessionData' {} a -> s {sessionArn = a} :: SessionData)

-- | The identifier of the session.
sessionData_sessionId :: Lens.Lens' SessionData Prelude.Text
sessionData_sessionId = Lens.lens (\SessionData' {sessionId} -> sessionId) (\s@SessionData' {} a -> s {sessionId = a} :: SessionData)

instance Core.FromJSON SessionData where
  parseJSON =
    Core.withObject
      "SessionData"
      ( \x ->
          SessionData'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "sessionArn")
            Prelude.<*> (x Core..: "sessionId")
      )

instance Prelude.Hashable SessionData where
  hashWithSalt _salt SessionData' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` sessionArn
      `Prelude.hashWithSalt` sessionId

instance Prelude.NFData SessionData where
  rnf SessionData' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf sessionArn
      `Prelude.seq` Prelude.rnf sessionId
