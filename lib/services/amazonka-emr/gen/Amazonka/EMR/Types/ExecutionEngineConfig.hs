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
-- Module      : Amazonka.EMR.Types.ExecutionEngineConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMR.Types.ExecutionEngineConfig where

import qualified Amazonka.Core as Core
import Amazonka.EMR.Types.ExecutionEngineType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies the execution engine (cluster) to run the notebook and perform
-- the notebook execution, for example, an EMR cluster.
--
-- /See:/ 'newExecutionEngineConfig' smart constructor.
data ExecutionEngineConfig = ExecutionEngineConfig'
  { -- | The type of execution engine. A value of @EMR@ specifies an EMR cluster.
    type' :: Prelude.Maybe ExecutionEngineType,
    -- | An optional unique ID of an EC2 security group to associate with the
    -- master instance of the EMR cluster for this notebook execution. For more
    -- information see
    -- <https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html Specifying EC2 Security Groups for EMR Notebooks>
    -- in the /EMR Management Guide/.
    masterInstanceSecurityGroupId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the execution engine. For an EMR cluster, this
    -- is the cluster ID.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExecutionEngineConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'executionEngineConfig_type' - The type of execution engine. A value of @EMR@ specifies an EMR cluster.
--
-- 'masterInstanceSecurityGroupId', 'executionEngineConfig_masterInstanceSecurityGroupId' - An optional unique ID of an EC2 security group to associate with the
-- master instance of the EMR cluster for this notebook execution. For more
-- information see
-- <https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html Specifying EC2 Security Groups for EMR Notebooks>
-- in the /EMR Management Guide/.
--
-- 'id', 'executionEngineConfig_id' - The unique identifier of the execution engine. For an EMR cluster, this
-- is the cluster ID.
newExecutionEngineConfig ::
  -- | 'id'
  Prelude.Text ->
  ExecutionEngineConfig
newExecutionEngineConfig pId_ =
  ExecutionEngineConfig'
    { type' = Prelude.Nothing,
      masterInstanceSecurityGroupId = Prelude.Nothing,
      id = pId_
    }

-- | The type of execution engine. A value of @EMR@ specifies an EMR cluster.
executionEngineConfig_type :: Lens.Lens' ExecutionEngineConfig (Prelude.Maybe ExecutionEngineType)
executionEngineConfig_type = Lens.lens (\ExecutionEngineConfig' {type'} -> type') (\s@ExecutionEngineConfig' {} a -> s {type' = a} :: ExecutionEngineConfig)

-- | An optional unique ID of an EC2 security group to associate with the
-- master instance of the EMR cluster for this notebook execution. For more
-- information see
-- <https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html Specifying EC2 Security Groups for EMR Notebooks>
-- in the /EMR Management Guide/.
executionEngineConfig_masterInstanceSecurityGroupId :: Lens.Lens' ExecutionEngineConfig (Prelude.Maybe Prelude.Text)
executionEngineConfig_masterInstanceSecurityGroupId = Lens.lens (\ExecutionEngineConfig' {masterInstanceSecurityGroupId} -> masterInstanceSecurityGroupId) (\s@ExecutionEngineConfig' {} a -> s {masterInstanceSecurityGroupId = a} :: ExecutionEngineConfig)

-- | The unique identifier of the execution engine. For an EMR cluster, this
-- is the cluster ID.
executionEngineConfig_id :: Lens.Lens' ExecutionEngineConfig Prelude.Text
executionEngineConfig_id = Lens.lens (\ExecutionEngineConfig' {id} -> id) (\s@ExecutionEngineConfig' {} a -> s {id = a} :: ExecutionEngineConfig)

instance Core.FromJSON ExecutionEngineConfig where
  parseJSON =
    Core.withObject
      "ExecutionEngineConfig"
      ( \x ->
          ExecutionEngineConfig'
            Prelude.<$> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "MasterInstanceSecurityGroupId")
            Prelude.<*> (x Core..: "Id")
      )

instance Prelude.Hashable ExecutionEngineConfig where
  hashWithSalt _salt ExecutionEngineConfig' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` masterInstanceSecurityGroupId
      `Prelude.hashWithSalt` id

instance Prelude.NFData ExecutionEngineConfig where
  rnf ExecutionEngineConfig' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf masterInstanceSecurityGroupId
      `Prelude.seq` Prelude.rnf id

instance Core.ToJSON ExecutionEngineConfig where
  toJSON ExecutionEngineConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Type" Core..=) Prelude.<$> type',
            ("MasterInstanceSecurityGroupId" Core..=)
              Prelude.<$> masterInstanceSecurityGroupId,
            Prelude.Just ("Id" Core..= id)
          ]
      )
