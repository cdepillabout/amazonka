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
-- Module      : Amazonka.MediaConvert.Types.DvbNitSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.DvbNitSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Use these settings to insert a DVB Network Information Table (NIT) in
-- the transport stream of this output. When you work directly in your JSON
-- job specification, include this object only when your job has a
-- transport stream output and the container settings contain the object
-- M2tsSettings.
--
-- /See:/ 'newDvbNitSettings' smart constructor.
data DvbNitSettings = DvbNitSettings'
  { -- | The number of milliseconds between instances of this table in the output
    -- transport stream.
    nitInterval :: Prelude.Maybe Prelude.Natural,
    -- | The network name text placed in the network_name_descriptor inside the
    -- Network Information Table. Maximum length is 256 characters.
    networkName :: Prelude.Maybe Prelude.Text,
    -- | The numeric value placed in the Network Information Table (NIT).
    networkId :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DvbNitSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nitInterval', 'dvbNitSettings_nitInterval' - The number of milliseconds between instances of this table in the output
-- transport stream.
--
-- 'networkName', 'dvbNitSettings_networkName' - The network name text placed in the network_name_descriptor inside the
-- Network Information Table. Maximum length is 256 characters.
--
-- 'networkId', 'dvbNitSettings_networkId' - The numeric value placed in the Network Information Table (NIT).
newDvbNitSettings ::
  DvbNitSettings
newDvbNitSettings =
  DvbNitSettings'
    { nitInterval = Prelude.Nothing,
      networkName = Prelude.Nothing,
      networkId = Prelude.Nothing
    }

-- | The number of milliseconds between instances of this table in the output
-- transport stream.
dvbNitSettings_nitInterval :: Lens.Lens' DvbNitSettings (Prelude.Maybe Prelude.Natural)
dvbNitSettings_nitInterval = Lens.lens (\DvbNitSettings' {nitInterval} -> nitInterval) (\s@DvbNitSettings' {} a -> s {nitInterval = a} :: DvbNitSettings)

-- | The network name text placed in the network_name_descriptor inside the
-- Network Information Table. Maximum length is 256 characters.
dvbNitSettings_networkName :: Lens.Lens' DvbNitSettings (Prelude.Maybe Prelude.Text)
dvbNitSettings_networkName = Lens.lens (\DvbNitSettings' {networkName} -> networkName) (\s@DvbNitSettings' {} a -> s {networkName = a} :: DvbNitSettings)

-- | The numeric value placed in the Network Information Table (NIT).
dvbNitSettings_networkId :: Lens.Lens' DvbNitSettings (Prelude.Maybe Prelude.Natural)
dvbNitSettings_networkId = Lens.lens (\DvbNitSettings' {networkId} -> networkId) (\s@DvbNitSettings' {} a -> s {networkId = a} :: DvbNitSettings)

instance Core.FromJSON DvbNitSettings where
  parseJSON =
    Core.withObject
      "DvbNitSettings"
      ( \x ->
          DvbNitSettings'
            Prelude.<$> (x Core..:? "nitInterval")
            Prelude.<*> (x Core..:? "networkName")
            Prelude.<*> (x Core..:? "networkId")
      )

instance Prelude.Hashable DvbNitSettings where
  hashWithSalt _salt DvbNitSettings' {..} =
    _salt `Prelude.hashWithSalt` nitInterval
      `Prelude.hashWithSalt` networkName
      `Prelude.hashWithSalt` networkId

instance Prelude.NFData DvbNitSettings where
  rnf DvbNitSettings' {..} =
    Prelude.rnf nitInterval
      `Prelude.seq` Prelude.rnf networkName
      `Prelude.seq` Prelude.rnf networkId

instance Core.ToJSON DvbNitSettings where
  toJSON DvbNitSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nitInterval" Core..=) Prelude.<$> nitInterval,
            ("networkName" Core..=) Prelude.<$> networkName,
            ("networkId" Core..=) Prelude.<$> networkId
          ]
      )
