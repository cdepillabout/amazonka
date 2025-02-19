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
-- Module      : Amazonka.AppStream.Types.StreamingExperienceSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppStream.Types.StreamingExperienceSettings where

import Amazonka.AppStream.Types.PreferredProtocol
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The streaming protocol you want your stack to prefer. This can be UDP or
-- TCP. Currently, UDP is only supported in the Windows native client.
--
-- /See:/ 'newStreamingExperienceSettings' smart constructor.
data StreamingExperienceSettings = StreamingExperienceSettings'
  { -- | The preferred protocol that you want to use while streaming your
    -- application.
    preferredProtocol :: Prelude.Maybe PreferredProtocol
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StreamingExperienceSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'preferredProtocol', 'streamingExperienceSettings_preferredProtocol' - The preferred protocol that you want to use while streaming your
-- application.
newStreamingExperienceSettings ::
  StreamingExperienceSettings
newStreamingExperienceSettings =
  StreamingExperienceSettings'
    { preferredProtocol =
        Prelude.Nothing
    }

-- | The preferred protocol that you want to use while streaming your
-- application.
streamingExperienceSettings_preferredProtocol :: Lens.Lens' StreamingExperienceSettings (Prelude.Maybe PreferredProtocol)
streamingExperienceSettings_preferredProtocol = Lens.lens (\StreamingExperienceSettings' {preferredProtocol} -> preferredProtocol) (\s@StreamingExperienceSettings' {} a -> s {preferredProtocol = a} :: StreamingExperienceSettings)

instance Core.FromJSON StreamingExperienceSettings where
  parseJSON =
    Core.withObject
      "StreamingExperienceSettings"
      ( \x ->
          StreamingExperienceSettings'
            Prelude.<$> (x Core..:? "PreferredProtocol")
      )

instance Prelude.Hashable StreamingExperienceSettings where
  hashWithSalt _salt StreamingExperienceSettings' {..} =
    _salt `Prelude.hashWithSalt` preferredProtocol

instance Prelude.NFData StreamingExperienceSettings where
  rnf StreamingExperienceSettings' {..} =
    Prelude.rnf preferredProtocol

instance Core.ToJSON StreamingExperienceSettings where
  toJSON StreamingExperienceSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PreferredProtocol" Core..=)
              Prelude.<$> preferredProtocol
          ]
      )
