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
-- Module      : Amazonka.RDS.Types.DBSubnetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RDS.Types.DBSubnetGroup where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types.Subnet

-- | Contains the details of an Amazon RDS DB subnet group.
--
-- This data type is used as a response element in the
-- @DescribeDBSubnetGroups@ action.
--
-- /See:/ 'newDBSubnetGroup' smart constructor.
data DBSubnetGroup = DBSubnetGroup'
  { -- | The name of the DB subnet group.
    dbSubnetGroupName :: Prelude.Maybe Prelude.Text,
    -- | Provides the status of the DB subnet group.
    subnetGroupStatus :: Prelude.Maybe Prelude.Text,
    -- | Contains a list of @Subnet@ elements.
    subnets :: Prelude.Maybe [Subnet],
    -- | Provides the description of the DB subnet group.
    dbSubnetGroupDescription :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the DB subnet group.
    dbSubnetGroupArn :: Prelude.Maybe Prelude.Text,
    -- | Provides the VpcId of the DB subnet group.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | The network type of the DB subnet group.
    --
    -- Valid values:
    --
    -- -   @IPV4@
    --
    -- -   @DUAL@
    --
    -- A @DBSubnetGroup@ can support only the IPv4 protocol or the IPv4 and the
    -- IPv6 protocols (@DUAL@).
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html Working with a DB instance in a VPC>
    -- in the /Amazon RDS User Guide./
    supportedNetworkTypes :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DBSubnetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbSubnetGroupName', 'dbSubnetGroup_dbSubnetGroupName' - The name of the DB subnet group.
--
-- 'subnetGroupStatus', 'dbSubnetGroup_subnetGroupStatus' - Provides the status of the DB subnet group.
--
-- 'subnets', 'dbSubnetGroup_subnets' - Contains a list of @Subnet@ elements.
--
-- 'dbSubnetGroupDescription', 'dbSubnetGroup_dbSubnetGroupDescription' - Provides the description of the DB subnet group.
--
-- 'dbSubnetGroupArn', 'dbSubnetGroup_dbSubnetGroupArn' - The Amazon Resource Name (ARN) for the DB subnet group.
--
-- 'vpcId', 'dbSubnetGroup_vpcId' - Provides the VpcId of the DB subnet group.
--
-- 'supportedNetworkTypes', 'dbSubnetGroup_supportedNetworkTypes' - The network type of the DB subnet group.
--
-- Valid values:
--
-- -   @IPV4@
--
-- -   @DUAL@
--
-- A @DBSubnetGroup@ can support only the IPv4 protocol or the IPv4 and the
-- IPv6 protocols (@DUAL@).
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html Working with a DB instance in a VPC>
-- in the /Amazon RDS User Guide./
newDBSubnetGroup ::
  DBSubnetGroup
newDBSubnetGroup =
  DBSubnetGroup'
    { dbSubnetGroupName = Prelude.Nothing,
      subnetGroupStatus = Prelude.Nothing,
      subnets = Prelude.Nothing,
      dbSubnetGroupDescription = Prelude.Nothing,
      dbSubnetGroupArn = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      supportedNetworkTypes = Prelude.Nothing
    }

-- | The name of the DB subnet group.
dbSubnetGroup_dbSubnetGroupName :: Lens.Lens' DBSubnetGroup (Prelude.Maybe Prelude.Text)
dbSubnetGroup_dbSubnetGroupName = Lens.lens (\DBSubnetGroup' {dbSubnetGroupName} -> dbSubnetGroupName) (\s@DBSubnetGroup' {} a -> s {dbSubnetGroupName = a} :: DBSubnetGroup)

-- | Provides the status of the DB subnet group.
dbSubnetGroup_subnetGroupStatus :: Lens.Lens' DBSubnetGroup (Prelude.Maybe Prelude.Text)
dbSubnetGroup_subnetGroupStatus = Lens.lens (\DBSubnetGroup' {subnetGroupStatus} -> subnetGroupStatus) (\s@DBSubnetGroup' {} a -> s {subnetGroupStatus = a} :: DBSubnetGroup)

-- | Contains a list of @Subnet@ elements.
dbSubnetGroup_subnets :: Lens.Lens' DBSubnetGroup (Prelude.Maybe [Subnet])
dbSubnetGroup_subnets = Lens.lens (\DBSubnetGroup' {subnets} -> subnets) (\s@DBSubnetGroup' {} a -> s {subnets = a} :: DBSubnetGroup) Prelude.. Lens.mapping Lens.coerced

-- | Provides the description of the DB subnet group.
dbSubnetGroup_dbSubnetGroupDescription :: Lens.Lens' DBSubnetGroup (Prelude.Maybe Prelude.Text)
dbSubnetGroup_dbSubnetGroupDescription = Lens.lens (\DBSubnetGroup' {dbSubnetGroupDescription} -> dbSubnetGroupDescription) (\s@DBSubnetGroup' {} a -> s {dbSubnetGroupDescription = a} :: DBSubnetGroup)

-- | The Amazon Resource Name (ARN) for the DB subnet group.
dbSubnetGroup_dbSubnetGroupArn :: Lens.Lens' DBSubnetGroup (Prelude.Maybe Prelude.Text)
dbSubnetGroup_dbSubnetGroupArn = Lens.lens (\DBSubnetGroup' {dbSubnetGroupArn} -> dbSubnetGroupArn) (\s@DBSubnetGroup' {} a -> s {dbSubnetGroupArn = a} :: DBSubnetGroup)

-- | Provides the VpcId of the DB subnet group.
dbSubnetGroup_vpcId :: Lens.Lens' DBSubnetGroup (Prelude.Maybe Prelude.Text)
dbSubnetGroup_vpcId = Lens.lens (\DBSubnetGroup' {vpcId} -> vpcId) (\s@DBSubnetGroup' {} a -> s {vpcId = a} :: DBSubnetGroup)

-- | The network type of the DB subnet group.
--
-- Valid values:
--
-- -   @IPV4@
--
-- -   @DUAL@
--
-- A @DBSubnetGroup@ can support only the IPv4 protocol or the IPv4 and the
-- IPv6 protocols (@DUAL@).
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html Working with a DB instance in a VPC>
-- in the /Amazon RDS User Guide./
dbSubnetGroup_supportedNetworkTypes :: Lens.Lens' DBSubnetGroup (Prelude.Maybe [Prelude.Text])
dbSubnetGroup_supportedNetworkTypes = Lens.lens (\DBSubnetGroup' {supportedNetworkTypes} -> supportedNetworkTypes) (\s@DBSubnetGroup' {} a -> s {supportedNetworkTypes = a} :: DBSubnetGroup) Prelude.. Lens.mapping Lens.coerced

instance Core.FromXML DBSubnetGroup where
  parseXML x =
    DBSubnetGroup'
      Prelude.<$> (x Core..@? "DBSubnetGroupName")
      Prelude.<*> (x Core..@? "SubnetGroupStatus")
      Prelude.<*> ( x Core..@? "Subnets" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "Subnet")
                  )
      Prelude.<*> (x Core..@? "DBSubnetGroupDescription")
      Prelude.<*> (x Core..@? "DBSubnetGroupArn")
      Prelude.<*> (x Core..@? "VpcId")
      Prelude.<*> ( x Core..@? "SupportedNetworkTypes"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )

instance Prelude.Hashable DBSubnetGroup where
  hashWithSalt _salt DBSubnetGroup' {..} =
    _salt `Prelude.hashWithSalt` dbSubnetGroupName
      `Prelude.hashWithSalt` subnetGroupStatus
      `Prelude.hashWithSalt` subnets
      `Prelude.hashWithSalt` dbSubnetGroupDescription
      `Prelude.hashWithSalt` dbSubnetGroupArn
      `Prelude.hashWithSalt` vpcId
      `Prelude.hashWithSalt` supportedNetworkTypes

instance Prelude.NFData DBSubnetGroup where
  rnf DBSubnetGroup' {..} =
    Prelude.rnf dbSubnetGroupName
      `Prelude.seq` Prelude.rnf subnetGroupStatus
      `Prelude.seq` Prelude.rnf subnets
      `Prelude.seq` Prelude.rnf dbSubnetGroupDescription
      `Prelude.seq` Prelude.rnf dbSubnetGroupArn
      `Prelude.seq` Prelude.rnf vpcId
      `Prelude.seq` Prelude.rnf supportedNetworkTypes
