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
-- Module      : Amazonka.SecurityHub.Types.AwsCertificateManagerCertificateResourceRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsCertificateManagerCertificateResourceRecord where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides details about the CNAME record that is added to the DNS
-- database for domain validation.
--
-- /See:/ 'newAwsCertificateManagerCertificateResourceRecord' smart constructor.
data AwsCertificateManagerCertificateResourceRecord = AwsCertificateManagerCertificateResourceRecord'
  { -- | The name of the resource.
    name :: Prelude.Maybe Prelude.Text,
    -- | The type of resource.
    type' :: Prelude.Maybe Prelude.Text,
    -- | The value of the resource.
    value :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsCertificateManagerCertificateResourceRecord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'awsCertificateManagerCertificateResourceRecord_name' - The name of the resource.
--
-- 'type'', 'awsCertificateManagerCertificateResourceRecord_type' - The type of resource.
--
-- 'value', 'awsCertificateManagerCertificateResourceRecord_value' - The value of the resource.
newAwsCertificateManagerCertificateResourceRecord ::
  AwsCertificateManagerCertificateResourceRecord
newAwsCertificateManagerCertificateResourceRecord =
  AwsCertificateManagerCertificateResourceRecord'
    { name =
        Prelude.Nothing,
      type' = Prelude.Nothing,
      value = Prelude.Nothing
    }

-- | The name of the resource.
awsCertificateManagerCertificateResourceRecord_name :: Lens.Lens' AwsCertificateManagerCertificateResourceRecord (Prelude.Maybe Prelude.Text)
awsCertificateManagerCertificateResourceRecord_name = Lens.lens (\AwsCertificateManagerCertificateResourceRecord' {name} -> name) (\s@AwsCertificateManagerCertificateResourceRecord' {} a -> s {name = a} :: AwsCertificateManagerCertificateResourceRecord)

-- | The type of resource.
awsCertificateManagerCertificateResourceRecord_type :: Lens.Lens' AwsCertificateManagerCertificateResourceRecord (Prelude.Maybe Prelude.Text)
awsCertificateManagerCertificateResourceRecord_type = Lens.lens (\AwsCertificateManagerCertificateResourceRecord' {type'} -> type') (\s@AwsCertificateManagerCertificateResourceRecord' {} a -> s {type' = a} :: AwsCertificateManagerCertificateResourceRecord)

-- | The value of the resource.
awsCertificateManagerCertificateResourceRecord_value :: Lens.Lens' AwsCertificateManagerCertificateResourceRecord (Prelude.Maybe Prelude.Text)
awsCertificateManagerCertificateResourceRecord_value = Lens.lens (\AwsCertificateManagerCertificateResourceRecord' {value} -> value) (\s@AwsCertificateManagerCertificateResourceRecord' {} a -> s {value = a} :: AwsCertificateManagerCertificateResourceRecord)

instance
  Core.FromJSON
    AwsCertificateManagerCertificateResourceRecord
  where
  parseJSON =
    Core.withObject
      "AwsCertificateManagerCertificateResourceRecord"
      ( \x ->
          AwsCertificateManagerCertificateResourceRecord'
            Prelude.<$> (x Core..:? "Name") Prelude.<*> (x Core..:? "Type")
              Prelude.<*> (x Core..:? "Value")
      )

instance
  Prelude.Hashable
    AwsCertificateManagerCertificateResourceRecord
  where
  hashWithSalt
    _salt
    AwsCertificateManagerCertificateResourceRecord' {..} =
      _salt `Prelude.hashWithSalt` name
        `Prelude.hashWithSalt` type'
        `Prelude.hashWithSalt` value

instance
  Prelude.NFData
    AwsCertificateManagerCertificateResourceRecord
  where
  rnf
    AwsCertificateManagerCertificateResourceRecord' {..} =
      Prelude.rnf name
        `Prelude.seq` Prelude.rnf type'
        `Prelude.seq` Prelude.rnf value

instance
  Core.ToJSON
    AwsCertificateManagerCertificateResourceRecord
  where
  toJSON
    AwsCertificateManagerCertificateResourceRecord' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Name" Core..=) Prelude.<$> name,
              ("Type" Core..=) Prelude.<$> type',
              ("Value" Core..=) Prelude.<$> value
            ]
        )
