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
-- Module      : Amazonka.CognitoIdentityProvider.Types.ProviderUserIdentifierType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CognitoIdentityProvider.Types.ProviderUserIdentifierType where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A container for information about an IdP for a user pool.
--
-- /See:/ 'newProviderUserIdentifierType' smart constructor.
data ProviderUserIdentifierType = ProviderUserIdentifierType'
  { -- | The name of the provider, such as Facebook, Google, or Login with
    -- Amazon.
    providerName :: Prelude.Maybe Prelude.Text,
    -- | The name of the provider attribute to link to, such as @NameID@.
    providerAttributeName :: Prelude.Maybe Prelude.Text,
    -- | The value of the provider attribute to link to, such as @xxxxx_account@.
    providerAttributeValue :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProviderUserIdentifierType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'providerName', 'providerUserIdentifierType_providerName' - The name of the provider, such as Facebook, Google, or Login with
-- Amazon.
--
-- 'providerAttributeName', 'providerUserIdentifierType_providerAttributeName' - The name of the provider attribute to link to, such as @NameID@.
--
-- 'providerAttributeValue', 'providerUserIdentifierType_providerAttributeValue' - The value of the provider attribute to link to, such as @xxxxx_account@.
newProviderUserIdentifierType ::
  ProviderUserIdentifierType
newProviderUserIdentifierType =
  ProviderUserIdentifierType'
    { providerName =
        Prelude.Nothing,
      providerAttributeName = Prelude.Nothing,
      providerAttributeValue = Prelude.Nothing
    }

-- | The name of the provider, such as Facebook, Google, or Login with
-- Amazon.
providerUserIdentifierType_providerName :: Lens.Lens' ProviderUserIdentifierType (Prelude.Maybe Prelude.Text)
providerUserIdentifierType_providerName = Lens.lens (\ProviderUserIdentifierType' {providerName} -> providerName) (\s@ProviderUserIdentifierType' {} a -> s {providerName = a} :: ProviderUserIdentifierType)

-- | The name of the provider attribute to link to, such as @NameID@.
providerUserIdentifierType_providerAttributeName :: Lens.Lens' ProviderUserIdentifierType (Prelude.Maybe Prelude.Text)
providerUserIdentifierType_providerAttributeName = Lens.lens (\ProviderUserIdentifierType' {providerAttributeName} -> providerAttributeName) (\s@ProviderUserIdentifierType' {} a -> s {providerAttributeName = a} :: ProviderUserIdentifierType)

-- | The value of the provider attribute to link to, such as @xxxxx_account@.
providerUserIdentifierType_providerAttributeValue :: Lens.Lens' ProviderUserIdentifierType (Prelude.Maybe Prelude.Text)
providerUserIdentifierType_providerAttributeValue = Lens.lens (\ProviderUserIdentifierType' {providerAttributeValue} -> providerAttributeValue) (\s@ProviderUserIdentifierType' {} a -> s {providerAttributeValue = a} :: ProviderUserIdentifierType)

instance Prelude.Hashable ProviderUserIdentifierType where
  hashWithSalt _salt ProviderUserIdentifierType' {..} =
    _salt `Prelude.hashWithSalt` providerName
      `Prelude.hashWithSalt` providerAttributeName
      `Prelude.hashWithSalt` providerAttributeValue

instance Prelude.NFData ProviderUserIdentifierType where
  rnf ProviderUserIdentifierType' {..} =
    Prelude.rnf providerName
      `Prelude.seq` Prelude.rnf providerAttributeName
      `Prelude.seq` Prelude.rnf providerAttributeValue

instance Core.ToJSON ProviderUserIdentifierType where
  toJSON ProviderUserIdentifierType' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ProviderName" Core..=) Prelude.<$> providerName,
            ("ProviderAttributeName" Core..=)
              Prelude.<$> providerAttributeName,
            ("ProviderAttributeValue" Core..=)
              Prelude.<$> providerAttributeValue
          ]
      )
