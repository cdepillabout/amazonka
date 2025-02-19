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
-- Module      : Amazonka.AppConfig.Types.ExtensionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppConfig.Types.ExtensionSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about an extension. Call @GetExtension@ to get more
-- information about an extension.
--
-- /See:/ 'newExtensionSummary' smart constructor.
data ExtensionSummary = ExtensionSummary'
  { -- | The extension name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The system-generated Amazon Resource Name (ARN) for the extension.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The system-generated ID of the extension.
    id :: Prelude.Maybe Prelude.Text,
    -- | Information about the extension.
    description :: Prelude.Maybe Prelude.Text,
    -- | The extension version number.
    versionNumber :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExtensionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'extensionSummary_name' - The extension name.
--
-- 'arn', 'extensionSummary_arn' - The system-generated Amazon Resource Name (ARN) for the extension.
--
-- 'id', 'extensionSummary_id' - The system-generated ID of the extension.
--
-- 'description', 'extensionSummary_description' - Information about the extension.
--
-- 'versionNumber', 'extensionSummary_versionNumber' - The extension version number.
newExtensionSummary ::
  ExtensionSummary
newExtensionSummary =
  ExtensionSummary'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      description = Prelude.Nothing,
      versionNumber = Prelude.Nothing
    }

-- | The extension name.
extensionSummary_name :: Lens.Lens' ExtensionSummary (Prelude.Maybe Prelude.Text)
extensionSummary_name = Lens.lens (\ExtensionSummary' {name} -> name) (\s@ExtensionSummary' {} a -> s {name = a} :: ExtensionSummary)

-- | The system-generated Amazon Resource Name (ARN) for the extension.
extensionSummary_arn :: Lens.Lens' ExtensionSummary (Prelude.Maybe Prelude.Text)
extensionSummary_arn = Lens.lens (\ExtensionSummary' {arn} -> arn) (\s@ExtensionSummary' {} a -> s {arn = a} :: ExtensionSummary)

-- | The system-generated ID of the extension.
extensionSummary_id :: Lens.Lens' ExtensionSummary (Prelude.Maybe Prelude.Text)
extensionSummary_id = Lens.lens (\ExtensionSummary' {id} -> id) (\s@ExtensionSummary' {} a -> s {id = a} :: ExtensionSummary)

-- | Information about the extension.
extensionSummary_description :: Lens.Lens' ExtensionSummary (Prelude.Maybe Prelude.Text)
extensionSummary_description = Lens.lens (\ExtensionSummary' {description} -> description) (\s@ExtensionSummary' {} a -> s {description = a} :: ExtensionSummary)

-- | The extension version number.
extensionSummary_versionNumber :: Lens.Lens' ExtensionSummary (Prelude.Maybe Prelude.Int)
extensionSummary_versionNumber = Lens.lens (\ExtensionSummary' {versionNumber} -> versionNumber) (\s@ExtensionSummary' {} a -> s {versionNumber = a} :: ExtensionSummary)

instance Core.FromJSON ExtensionSummary where
  parseJSON =
    Core.withObject
      "ExtensionSummary"
      ( \x ->
          ExtensionSummary'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "VersionNumber")
      )

instance Prelude.Hashable ExtensionSummary where
  hashWithSalt _salt ExtensionSummary' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` versionNumber

instance Prelude.NFData ExtensionSummary where
  rnf ExtensionSummary' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf versionNumber
