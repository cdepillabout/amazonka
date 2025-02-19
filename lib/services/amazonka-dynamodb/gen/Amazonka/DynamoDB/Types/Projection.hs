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
-- Module      : Amazonka.DynamoDB.Types.Projection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DynamoDB.Types.Projection where

import qualified Amazonka.Core as Core
import Amazonka.DynamoDB.Types.AttributeValue
import Amazonka.DynamoDB.Types.ProjectionType
import Amazonka.DynamoDB.Types.WriteRequest
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents attributes that are copied (projected) from the table into an
-- index. These are in addition to the primary key attributes and index key
-- attributes, which are automatically projected.
--
-- /See:/ 'newProjection' smart constructor.
data Projection = Projection'
  { -- | The set of attributes that are projected into the index:
    --
    -- -   @KEYS_ONLY@ - Only the index and primary keys are projected into the
    --     index.
    --
    -- -   @INCLUDE@ - In addition to the attributes described in @KEYS_ONLY@,
    --     the secondary index will include other non-key attributes that you
    --     specify.
    --
    -- -   @ALL@ - All of the table attributes are projected into the index.
    projectionType :: Prelude.Maybe ProjectionType,
    -- | Represents the non-key attribute names which will be projected into the
    -- index.
    --
    -- For local secondary indexes, the total count of @NonKeyAttributes@
    -- summed across all of the local secondary indexes, must not exceed 100.
    -- If you project the same attribute into two different indexes, this
    -- counts as two distinct attributes when determining the total.
    nonKeyAttributes :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Projection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projectionType', 'projection_projectionType' - The set of attributes that are projected into the index:
--
-- -   @KEYS_ONLY@ - Only the index and primary keys are projected into the
--     index.
--
-- -   @INCLUDE@ - In addition to the attributes described in @KEYS_ONLY@,
--     the secondary index will include other non-key attributes that you
--     specify.
--
-- -   @ALL@ - All of the table attributes are projected into the index.
--
-- 'nonKeyAttributes', 'projection_nonKeyAttributes' - Represents the non-key attribute names which will be projected into the
-- index.
--
-- For local secondary indexes, the total count of @NonKeyAttributes@
-- summed across all of the local secondary indexes, must not exceed 100.
-- If you project the same attribute into two different indexes, this
-- counts as two distinct attributes when determining the total.
newProjection ::
  Projection
newProjection =
  Projection'
    { projectionType = Prelude.Nothing,
      nonKeyAttributes = Prelude.Nothing
    }

-- | The set of attributes that are projected into the index:
--
-- -   @KEYS_ONLY@ - Only the index and primary keys are projected into the
--     index.
--
-- -   @INCLUDE@ - In addition to the attributes described in @KEYS_ONLY@,
--     the secondary index will include other non-key attributes that you
--     specify.
--
-- -   @ALL@ - All of the table attributes are projected into the index.
projection_projectionType :: Lens.Lens' Projection (Prelude.Maybe ProjectionType)
projection_projectionType = Lens.lens (\Projection' {projectionType} -> projectionType) (\s@Projection' {} a -> s {projectionType = a} :: Projection)

-- | Represents the non-key attribute names which will be projected into the
-- index.
--
-- For local secondary indexes, the total count of @NonKeyAttributes@
-- summed across all of the local secondary indexes, must not exceed 100.
-- If you project the same attribute into two different indexes, this
-- counts as two distinct attributes when determining the total.
projection_nonKeyAttributes :: Lens.Lens' Projection (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
projection_nonKeyAttributes = Lens.lens (\Projection' {nonKeyAttributes} -> nonKeyAttributes) (\s@Projection' {} a -> s {nonKeyAttributes = a} :: Projection) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Projection where
  parseJSON =
    Core.withObject
      "Projection"
      ( \x ->
          Projection'
            Prelude.<$> (x Core..:? "ProjectionType")
            Prelude.<*> (x Core..:? "NonKeyAttributes")
      )

instance Prelude.Hashable Projection where
  hashWithSalt _salt Projection' {..} =
    _salt `Prelude.hashWithSalt` projectionType
      `Prelude.hashWithSalt` nonKeyAttributes

instance Prelude.NFData Projection where
  rnf Projection' {..} =
    Prelude.rnf projectionType
      `Prelude.seq` Prelude.rnf nonKeyAttributes

instance Core.ToJSON Projection where
  toJSON Projection' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ProjectionType" Core..=)
              Prelude.<$> projectionType,
            ("NonKeyAttributes" Core..=)
              Prelude.<$> nonKeyAttributes
          ]
      )
