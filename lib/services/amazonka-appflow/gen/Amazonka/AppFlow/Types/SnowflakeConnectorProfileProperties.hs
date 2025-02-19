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
-- Module      : Amazonka.AppFlow.Types.SnowflakeConnectorProfileProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppFlow.Types.SnowflakeConnectorProfileProperties where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The connector-specific profile properties required when using Snowflake.
--
-- /See:/ 'newSnowflakeConnectorProfileProperties' smart constructor.
data SnowflakeConnectorProfileProperties = SnowflakeConnectorProfileProperties'
  { -- | The bucket path that refers to the Amazon S3 bucket associated with
    -- Snowflake.
    bucketPrefix :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services Region of the Snowflake account.
    region :: Prelude.Maybe Prelude.Text,
    -- | The name of the account.
    accountName :: Prelude.Maybe Prelude.Text,
    -- | The Snowflake Private Link service name to be used for private data
    -- transfers.
    privateLinkServiceName :: Prelude.Maybe Prelude.Text,
    -- | The name of the Snowflake warehouse.
    warehouse :: Prelude.Text,
    -- | The name of the Amazon S3 stage that was created while setting up an
    -- Amazon S3 stage in the Snowflake account. This is written in the
    -- following format: \< Database>\< Schema>\<Stage Name>.
    stage :: Prelude.Text,
    -- | The name of the Amazon S3 bucket associated with Snowflake.
    bucketName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SnowflakeConnectorProfileProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketPrefix', 'snowflakeConnectorProfileProperties_bucketPrefix' - The bucket path that refers to the Amazon S3 bucket associated with
-- Snowflake.
--
-- 'region', 'snowflakeConnectorProfileProperties_region' - The Amazon Web Services Region of the Snowflake account.
--
-- 'accountName', 'snowflakeConnectorProfileProperties_accountName' - The name of the account.
--
-- 'privateLinkServiceName', 'snowflakeConnectorProfileProperties_privateLinkServiceName' - The Snowflake Private Link service name to be used for private data
-- transfers.
--
-- 'warehouse', 'snowflakeConnectorProfileProperties_warehouse' - The name of the Snowflake warehouse.
--
-- 'stage', 'snowflakeConnectorProfileProperties_stage' - The name of the Amazon S3 stage that was created while setting up an
-- Amazon S3 stage in the Snowflake account. This is written in the
-- following format: \< Database>\< Schema>\<Stage Name>.
--
-- 'bucketName', 'snowflakeConnectorProfileProperties_bucketName' - The name of the Amazon S3 bucket associated with Snowflake.
newSnowflakeConnectorProfileProperties ::
  -- | 'warehouse'
  Prelude.Text ->
  -- | 'stage'
  Prelude.Text ->
  -- | 'bucketName'
  Prelude.Text ->
  SnowflakeConnectorProfileProperties
newSnowflakeConnectorProfileProperties
  pWarehouse_
  pStage_
  pBucketName_ =
    SnowflakeConnectorProfileProperties'
      { bucketPrefix =
          Prelude.Nothing,
        region = Prelude.Nothing,
        accountName = Prelude.Nothing,
        privateLinkServiceName =
          Prelude.Nothing,
        warehouse = pWarehouse_,
        stage = pStage_,
        bucketName = pBucketName_
      }

-- | The bucket path that refers to the Amazon S3 bucket associated with
-- Snowflake.
snowflakeConnectorProfileProperties_bucketPrefix :: Lens.Lens' SnowflakeConnectorProfileProperties (Prelude.Maybe Prelude.Text)
snowflakeConnectorProfileProperties_bucketPrefix = Lens.lens (\SnowflakeConnectorProfileProperties' {bucketPrefix} -> bucketPrefix) (\s@SnowflakeConnectorProfileProperties' {} a -> s {bucketPrefix = a} :: SnowflakeConnectorProfileProperties)

-- | The Amazon Web Services Region of the Snowflake account.
snowflakeConnectorProfileProperties_region :: Lens.Lens' SnowflakeConnectorProfileProperties (Prelude.Maybe Prelude.Text)
snowflakeConnectorProfileProperties_region = Lens.lens (\SnowflakeConnectorProfileProperties' {region} -> region) (\s@SnowflakeConnectorProfileProperties' {} a -> s {region = a} :: SnowflakeConnectorProfileProperties)

-- | The name of the account.
snowflakeConnectorProfileProperties_accountName :: Lens.Lens' SnowflakeConnectorProfileProperties (Prelude.Maybe Prelude.Text)
snowflakeConnectorProfileProperties_accountName = Lens.lens (\SnowflakeConnectorProfileProperties' {accountName} -> accountName) (\s@SnowflakeConnectorProfileProperties' {} a -> s {accountName = a} :: SnowflakeConnectorProfileProperties)

-- | The Snowflake Private Link service name to be used for private data
-- transfers.
snowflakeConnectorProfileProperties_privateLinkServiceName :: Lens.Lens' SnowflakeConnectorProfileProperties (Prelude.Maybe Prelude.Text)
snowflakeConnectorProfileProperties_privateLinkServiceName = Lens.lens (\SnowflakeConnectorProfileProperties' {privateLinkServiceName} -> privateLinkServiceName) (\s@SnowflakeConnectorProfileProperties' {} a -> s {privateLinkServiceName = a} :: SnowflakeConnectorProfileProperties)

-- | The name of the Snowflake warehouse.
snowflakeConnectorProfileProperties_warehouse :: Lens.Lens' SnowflakeConnectorProfileProperties Prelude.Text
snowflakeConnectorProfileProperties_warehouse = Lens.lens (\SnowflakeConnectorProfileProperties' {warehouse} -> warehouse) (\s@SnowflakeConnectorProfileProperties' {} a -> s {warehouse = a} :: SnowflakeConnectorProfileProperties)

-- | The name of the Amazon S3 stage that was created while setting up an
-- Amazon S3 stage in the Snowflake account. This is written in the
-- following format: \< Database>\< Schema>\<Stage Name>.
snowflakeConnectorProfileProperties_stage :: Lens.Lens' SnowflakeConnectorProfileProperties Prelude.Text
snowflakeConnectorProfileProperties_stage = Lens.lens (\SnowflakeConnectorProfileProperties' {stage} -> stage) (\s@SnowflakeConnectorProfileProperties' {} a -> s {stage = a} :: SnowflakeConnectorProfileProperties)

-- | The name of the Amazon S3 bucket associated with Snowflake.
snowflakeConnectorProfileProperties_bucketName :: Lens.Lens' SnowflakeConnectorProfileProperties Prelude.Text
snowflakeConnectorProfileProperties_bucketName = Lens.lens (\SnowflakeConnectorProfileProperties' {bucketName} -> bucketName) (\s@SnowflakeConnectorProfileProperties' {} a -> s {bucketName = a} :: SnowflakeConnectorProfileProperties)

instance
  Core.FromJSON
    SnowflakeConnectorProfileProperties
  where
  parseJSON =
    Core.withObject
      "SnowflakeConnectorProfileProperties"
      ( \x ->
          SnowflakeConnectorProfileProperties'
            Prelude.<$> (x Core..:? "bucketPrefix")
            Prelude.<*> (x Core..:? "region")
            Prelude.<*> (x Core..:? "accountName")
            Prelude.<*> (x Core..:? "privateLinkServiceName")
            Prelude.<*> (x Core..: "warehouse")
            Prelude.<*> (x Core..: "stage")
            Prelude.<*> (x Core..: "bucketName")
      )

instance
  Prelude.Hashable
    SnowflakeConnectorProfileProperties
  where
  hashWithSalt
    _salt
    SnowflakeConnectorProfileProperties' {..} =
      _salt `Prelude.hashWithSalt` bucketPrefix
        `Prelude.hashWithSalt` region
        `Prelude.hashWithSalt` accountName
        `Prelude.hashWithSalt` privateLinkServiceName
        `Prelude.hashWithSalt` warehouse
        `Prelude.hashWithSalt` stage
        `Prelude.hashWithSalt` bucketName

instance
  Prelude.NFData
    SnowflakeConnectorProfileProperties
  where
  rnf SnowflakeConnectorProfileProperties' {..} =
    Prelude.rnf bucketPrefix
      `Prelude.seq` Prelude.rnf region
      `Prelude.seq` Prelude.rnf accountName
      `Prelude.seq` Prelude.rnf privateLinkServiceName
      `Prelude.seq` Prelude.rnf warehouse
      `Prelude.seq` Prelude.rnf stage
      `Prelude.seq` Prelude.rnf bucketName

instance
  Core.ToJSON
    SnowflakeConnectorProfileProperties
  where
  toJSON SnowflakeConnectorProfileProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("bucketPrefix" Core..=) Prelude.<$> bucketPrefix,
            ("region" Core..=) Prelude.<$> region,
            ("accountName" Core..=) Prelude.<$> accountName,
            ("privateLinkServiceName" Core..=)
              Prelude.<$> privateLinkServiceName,
            Prelude.Just ("warehouse" Core..= warehouse),
            Prelude.Just ("stage" Core..= stage),
            Prelude.Just ("bucketName" Core..= bucketName)
          ]
      )
