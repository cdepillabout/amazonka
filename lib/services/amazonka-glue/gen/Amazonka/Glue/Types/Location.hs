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
-- Module      : Amazonka.Glue.Types.Location
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.Location where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types.CodeGenNodeArg
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The location of resources.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location'
  { -- | An Amazon Simple Storage Service (Amazon S3) location.
    s3 :: Prelude.Maybe [CodeGenNodeArg],
    -- | An Amazon DynamoDB table location.
    dynamoDB :: Prelude.Maybe [CodeGenNodeArg],
    -- | A JDBC location.
    jdbc :: Prelude.Maybe [CodeGenNodeArg]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Location' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3', 'location_s3' - An Amazon Simple Storage Service (Amazon S3) location.
--
-- 'dynamoDB', 'location_dynamoDB' - An Amazon DynamoDB table location.
--
-- 'jdbc', 'location_jdbc' - A JDBC location.
newLocation ::
  Location
newLocation =
  Location'
    { s3 = Prelude.Nothing,
      dynamoDB = Prelude.Nothing,
      jdbc = Prelude.Nothing
    }

-- | An Amazon Simple Storage Service (Amazon S3) location.
location_s3 :: Lens.Lens' Location (Prelude.Maybe [CodeGenNodeArg])
location_s3 = Lens.lens (\Location' {s3} -> s3) (\s@Location' {} a -> s {s3 = a} :: Location) Prelude.. Lens.mapping Lens.coerced

-- | An Amazon DynamoDB table location.
location_dynamoDB :: Lens.Lens' Location (Prelude.Maybe [CodeGenNodeArg])
location_dynamoDB = Lens.lens (\Location' {dynamoDB} -> dynamoDB) (\s@Location' {} a -> s {dynamoDB = a} :: Location) Prelude.. Lens.mapping Lens.coerced

-- | A JDBC location.
location_jdbc :: Lens.Lens' Location (Prelude.Maybe [CodeGenNodeArg])
location_jdbc = Lens.lens (\Location' {jdbc} -> jdbc) (\s@Location' {} a -> s {jdbc = a} :: Location) Prelude.. Lens.mapping Lens.coerced

instance Prelude.Hashable Location where
  hashWithSalt _salt Location' {..} =
    _salt `Prelude.hashWithSalt` s3
      `Prelude.hashWithSalt` dynamoDB
      `Prelude.hashWithSalt` jdbc

instance Prelude.NFData Location where
  rnf Location' {..} =
    Prelude.rnf s3
      `Prelude.seq` Prelude.rnf dynamoDB
      `Prelude.seq` Prelude.rnf jdbc

instance Core.ToJSON Location where
  toJSON Location' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("S3" Core..=) Prelude.<$> s3,
            ("DynamoDB" Core..=) Prelude.<$> dynamoDB,
            ("Jdbc" Core..=) Prelude.<$> jdbc
          ]
      )
