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
-- Module      : Amazonka.CloudFormation.Types.TypeFilters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudFormation.Types.TypeFilters where

import Amazonka.CloudFormation.Types.Category
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Filter criteria to use in determining which extensions to return.
--
-- /See:/ 'newTypeFilters' smart constructor.
data TypeFilters = TypeFilters'
  { -- | The id of the publisher of the extension.
    --
    -- Extensions published by Amazon aren\'t assigned a publisher ID. Use the
    -- @AWS_TYPES@ category to specify a list of types published by Amazon.
    publisherId :: Prelude.Maybe Prelude.Text,
    -- | A prefix to use as a filter for results.
    typeNamePrefix :: Prelude.Maybe Prelude.Text,
    -- | The category of extensions to return.
    --
    -- -   @REGISTERED@: Private extensions that have been registered for this
    --     account and region.
    --
    -- -   @ACTIVATED@: Public extensions that have been activated for this
    --     account and region.
    --
    -- -   @THIRD_PARTY@: Extensions available for use from publishers other
    --     than Amazon. This includes:
    --
    --     -   Private extensions registered in the account.
    --
    --     -   Public extensions from publishers other than Amazon, whether
    --         activated or not.
    --
    -- -   @AWS_TYPES@: Extensions available for use from Amazon.
    category :: Prelude.Maybe Category
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TypeFilters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publisherId', 'typeFilters_publisherId' - The id of the publisher of the extension.
--
-- Extensions published by Amazon aren\'t assigned a publisher ID. Use the
-- @AWS_TYPES@ category to specify a list of types published by Amazon.
--
-- 'typeNamePrefix', 'typeFilters_typeNamePrefix' - A prefix to use as a filter for results.
--
-- 'category', 'typeFilters_category' - The category of extensions to return.
--
-- -   @REGISTERED@: Private extensions that have been registered for this
--     account and region.
--
-- -   @ACTIVATED@: Public extensions that have been activated for this
--     account and region.
--
-- -   @THIRD_PARTY@: Extensions available for use from publishers other
--     than Amazon. This includes:
--
--     -   Private extensions registered in the account.
--
--     -   Public extensions from publishers other than Amazon, whether
--         activated or not.
--
-- -   @AWS_TYPES@: Extensions available for use from Amazon.
newTypeFilters ::
  TypeFilters
newTypeFilters =
  TypeFilters'
    { publisherId = Prelude.Nothing,
      typeNamePrefix = Prelude.Nothing,
      category = Prelude.Nothing
    }

-- | The id of the publisher of the extension.
--
-- Extensions published by Amazon aren\'t assigned a publisher ID. Use the
-- @AWS_TYPES@ category to specify a list of types published by Amazon.
typeFilters_publisherId :: Lens.Lens' TypeFilters (Prelude.Maybe Prelude.Text)
typeFilters_publisherId = Lens.lens (\TypeFilters' {publisherId} -> publisherId) (\s@TypeFilters' {} a -> s {publisherId = a} :: TypeFilters)

-- | A prefix to use as a filter for results.
typeFilters_typeNamePrefix :: Lens.Lens' TypeFilters (Prelude.Maybe Prelude.Text)
typeFilters_typeNamePrefix = Lens.lens (\TypeFilters' {typeNamePrefix} -> typeNamePrefix) (\s@TypeFilters' {} a -> s {typeNamePrefix = a} :: TypeFilters)

-- | The category of extensions to return.
--
-- -   @REGISTERED@: Private extensions that have been registered for this
--     account and region.
--
-- -   @ACTIVATED@: Public extensions that have been activated for this
--     account and region.
--
-- -   @THIRD_PARTY@: Extensions available for use from publishers other
--     than Amazon. This includes:
--
--     -   Private extensions registered in the account.
--
--     -   Public extensions from publishers other than Amazon, whether
--         activated or not.
--
-- -   @AWS_TYPES@: Extensions available for use from Amazon.
typeFilters_category :: Lens.Lens' TypeFilters (Prelude.Maybe Category)
typeFilters_category = Lens.lens (\TypeFilters' {category} -> category) (\s@TypeFilters' {} a -> s {category = a} :: TypeFilters)

instance Prelude.Hashable TypeFilters where
  hashWithSalt _salt TypeFilters' {..} =
    _salt `Prelude.hashWithSalt` publisherId
      `Prelude.hashWithSalt` typeNamePrefix
      `Prelude.hashWithSalt` category

instance Prelude.NFData TypeFilters where
  rnf TypeFilters' {..} =
    Prelude.rnf publisherId
      `Prelude.seq` Prelude.rnf typeNamePrefix
      `Prelude.seq` Prelude.rnf category

instance Core.ToQuery TypeFilters where
  toQuery TypeFilters' {..} =
    Prelude.mconcat
      [ "PublisherId" Core.=: publisherId,
        "TypeNamePrefix" Core.=: typeNamePrefix,
        "Category" Core.=: category
      ]
