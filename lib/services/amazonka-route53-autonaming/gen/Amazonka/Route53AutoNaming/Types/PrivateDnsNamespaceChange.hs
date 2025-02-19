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
-- Module      : Amazonka.Route53AutoNaming.Types.PrivateDnsNamespaceChange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53AutoNaming.Types.PrivateDnsNamespaceChange where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Route53AutoNaming.Types.PrivateDnsNamespacePropertiesChange

-- | Updated properties for the private DNS namespace.
--
-- /See:/ 'newPrivateDnsNamespaceChange' smart constructor.
data PrivateDnsNamespaceChange = PrivateDnsNamespaceChange'
  { -- | Properties to be updated in the private DNS namespace.
    properties :: Prelude.Maybe PrivateDnsNamespacePropertiesChange,
    -- | An updated description for the private DNS namespace.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PrivateDnsNamespaceChange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'properties', 'privateDnsNamespaceChange_properties' - Properties to be updated in the private DNS namespace.
--
-- 'description', 'privateDnsNamespaceChange_description' - An updated description for the private DNS namespace.
newPrivateDnsNamespaceChange ::
  PrivateDnsNamespaceChange
newPrivateDnsNamespaceChange =
  PrivateDnsNamespaceChange'
    { properties =
        Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | Properties to be updated in the private DNS namespace.
privateDnsNamespaceChange_properties :: Lens.Lens' PrivateDnsNamespaceChange (Prelude.Maybe PrivateDnsNamespacePropertiesChange)
privateDnsNamespaceChange_properties = Lens.lens (\PrivateDnsNamespaceChange' {properties} -> properties) (\s@PrivateDnsNamespaceChange' {} a -> s {properties = a} :: PrivateDnsNamespaceChange)

-- | An updated description for the private DNS namespace.
privateDnsNamespaceChange_description :: Lens.Lens' PrivateDnsNamespaceChange (Prelude.Maybe Prelude.Text)
privateDnsNamespaceChange_description = Lens.lens (\PrivateDnsNamespaceChange' {description} -> description) (\s@PrivateDnsNamespaceChange' {} a -> s {description = a} :: PrivateDnsNamespaceChange)

instance Prelude.Hashable PrivateDnsNamespaceChange where
  hashWithSalt _salt PrivateDnsNamespaceChange' {..} =
    _salt `Prelude.hashWithSalt` properties
      `Prelude.hashWithSalt` description

instance Prelude.NFData PrivateDnsNamespaceChange where
  rnf PrivateDnsNamespaceChange' {..} =
    Prelude.rnf properties
      `Prelude.seq` Prelude.rnf description

instance Core.ToJSON PrivateDnsNamespaceChange where
  toJSON PrivateDnsNamespaceChange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Properties" Core..=) Prelude.<$> properties,
            ("Description" Core..=) Prelude.<$> description
          ]
      )
