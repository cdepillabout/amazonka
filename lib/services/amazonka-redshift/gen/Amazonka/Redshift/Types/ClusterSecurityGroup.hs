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
-- Module      : Amazonka.Redshift.Types.ClusterSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Redshift.Types.ClusterSecurityGroup where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Internal
import Amazonka.Redshift.Types.EC2SecurityGroup
import Amazonka.Redshift.Types.IPRange
import Amazonka.Redshift.Types.Tag

-- | Describes a security group.
--
-- /See:/ 'newClusterSecurityGroup' smart constructor.
data ClusterSecurityGroup = ClusterSecurityGroup'
  { -- | The list of tags for the cluster security group.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the cluster security group to which the operation was
    -- applied.
    clusterSecurityGroupName :: Prelude.Maybe Prelude.Text,
    -- | A description of the security group.
    description :: Prelude.Maybe Prelude.Text,
    -- | A list of EC2 security groups that are permitted to access clusters
    -- associated with this cluster security group.
    eC2SecurityGroups :: Prelude.Maybe [EC2SecurityGroup],
    -- | A list of IP ranges (CIDR blocks) that are permitted to access clusters
    -- associated with this cluster security group.
    iPRanges :: Prelude.Maybe [IPRange]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClusterSecurityGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'clusterSecurityGroup_tags' - The list of tags for the cluster security group.
--
-- 'clusterSecurityGroupName', 'clusterSecurityGroup_clusterSecurityGroupName' - The name of the cluster security group to which the operation was
-- applied.
--
-- 'description', 'clusterSecurityGroup_description' - A description of the security group.
--
-- 'eC2SecurityGroups', 'clusterSecurityGroup_eC2SecurityGroups' - A list of EC2 security groups that are permitted to access clusters
-- associated with this cluster security group.
--
-- 'iPRanges', 'clusterSecurityGroup_iPRanges' - A list of IP ranges (CIDR blocks) that are permitted to access clusters
-- associated with this cluster security group.
newClusterSecurityGroup ::
  ClusterSecurityGroup
newClusterSecurityGroup =
  ClusterSecurityGroup'
    { tags = Prelude.Nothing,
      clusterSecurityGroupName = Prelude.Nothing,
      description = Prelude.Nothing,
      eC2SecurityGroups = Prelude.Nothing,
      iPRanges = Prelude.Nothing
    }

-- | The list of tags for the cluster security group.
clusterSecurityGroup_tags :: Lens.Lens' ClusterSecurityGroup (Prelude.Maybe [Tag])
clusterSecurityGroup_tags = Lens.lens (\ClusterSecurityGroup' {tags} -> tags) (\s@ClusterSecurityGroup' {} a -> s {tags = a} :: ClusterSecurityGroup) Prelude.. Lens.mapping Lens.coerced

-- | The name of the cluster security group to which the operation was
-- applied.
clusterSecurityGroup_clusterSecurityGroupName :: Lens.Lens' ClusterSecurityGroup (Prelude.Maybe Prelude.Text)
clusterSecurityGroup_clusterSecurityGroupName = Lens.lens (\ClusterSecurityGroup' {clusterSecurityGroupName} -> clusterSecurityGroupName) (\s@ClusterSecurityGroup' {} a -> s {clusterSecurityGroupName = a} :: ClusterSecurityGroup)

-- | A description of the security group.
clusterSecurityGroup_description :: Lens.Lens' ClusterSecurityGroup (Prelude.Maybe Prelude.Text)
clusterSecurityGroup_description = Lens.lens (\ClusterSecurityGroup' {description} -> description) (\s@ClusterSecurityGroup' {} a -> s {description = a} :: ClusterSecurityGroup)

-- | A list of EC2 security groups that are permitted to access clusters
-- associated with this cluster security group.
clusterSecurityGroup_eC2SecurityGroups :: Lens.Lens' ClusterSecurityGroup (Prelude.Maybe [EC2SecurityGroup])
clusterSecurityGroup_eC2SecurityGroups = Lens.lens (\ClusterSecurityGroup' {eC2SecurityGroups} -> eC2SecurityGroups) (\s@ClusterSecurityGroup' {} a -> s {eC2SecurityGroups = a} :: ClusterSecurityGroup) Prelude.. Lens.mapping Lens.coerced

-- | A list of IP ranges (CIDR blocks) that are permitted to access clusters
-- associated with this cluster security group.
clusterSecurityGroup_iPRanges :: Lens.Lens' ClusterSecurityGroup (Prelude.Maybe [IPRange])
clusterSecurityGroup_iPRanges = Lens.lens (\ClusterSecurityGroup' {iPRanges} -> iPRanges) (\s@ClusterSecurityGroup' {} a -> s {iPRanges = a} :: ClusterSecurityGroup) Prelude.. Lens.mapping Lens.coerced

instance Core.FromXML ClusterSecurityGroup where
  parseXML x =
    ClusterSecurityGroup'
      Prelude.<$> ( x Core..@? "Tags" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "Tag")
                  )
      Prelude.<*> (x Core..@? "ClusterSecurityGroupName")
      Prelude.<*> (x Core..@? "Description")
      Prelude.<*> ( x Core..@? "EC2SecurityGroups"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "EC2SecurityGroup")
                  )
      Prelude.<*> ( x Core..@? "IPRanges" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "IPRange")
                  )

instance Prelude.Hashable ClusterSecurityGroup where
  hashWithSalt _salt ClusterSecurityGroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clusterSecurityGroupName
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` eC2SecurityGroups
      `Prelude.hashWithSalt` iPRanges

instance Prelude.NFData ClusterSecurityGroup where
  rnf ClusterSecurityGroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clusterSecurityGroupName
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf eC2SecurityGroups
      `Prelude.seq` Prelude.rnf iPRanges
