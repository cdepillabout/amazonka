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
-- Module      : Amazonka.EC2.Types.ClassicLinkInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ClassicLinkInstance where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.GroupIdentifier
import Amazonka.EC2.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | We are retiring EC2-Classic on August 15, 2022. We recommend that you
-- migrate from EC2-Classic to a VPC. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html Migrate from EC2-Classic to a VPC>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- Describes a linked EC2-Classic instance.
--
-- /See:/ 'newClassicLinkInstance' smart constructor.
data ClassicLinkInstance = ClassicLinkInstance'
  { -- | Any tags assigned to the instance.
    tags :: Prelude.Maybe [Tag],
    -- | The ID of the instance.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the VPC.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | A list of security groups.
    groups :: Prelude.Maybe [GroupIdentifier]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClassicLinkInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'classicLinkInstance_tags' - Any tags assigned to the instance.
--
-- 'instanceId', 'classicLinkInstance_instanceId' - The ID of the instance.
--
-- 'vpcId', 'classicLinkInstance_vpcId' - The ID of the VPC.
--
-- 'groups', 'classicLinkInstance_groups' - A list of security groups.
newClassicLinkInstance ::
  ClassicLinkInstance
newClassicLinkInstance =
  ClassicLinkInstance'
    { tags = Prelude.Nothing,
      instanceId = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      groups = Prelude.Nothing
    }

-- | Any tags assigned to the instance.
classicLinkInstance_tags :: Lens.Lens' ClassicLinkInstance (Prelude.Maybe [Tag])
classicLinkInstance_tags = Lens.lens (\ClassicLinkInstance' {tags} -> tags) (\s@ClassicLinkInstance' {} a -> s {tags = a} :: ClassicLinkInstance) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the instance.
classicLinkInstance_instanceId :: Lens.Lens' ClassicLinkInstance (Prelude.Maybe Prelude.Text)
classicLinkInstance_instanceId = Lens.lens (\ClassicLinkInstance' {instanceId} -> instanceId) (\s@ClassicLinkInstance' {} a -> s {instanceId = a} :: ClassicLinkInstance)

-- | The ID of the VPC.
classicLinkInstance_vpcId :: Lens.Lens' ClassicLinkInstance (Prelude.Maybe Prelude.Text)
classicLinkInstance_vpcId = Lens.lens (\ClassicLinkInstance' {vpcId} -> vpcId) (\s@ClassicLinkInstance' {} a -> s {vpcId = a} :: ClassicLinkInstance)

-- | A list of security groups.
classicLinkInstance_groups :: Lens.Lens' ClassicLinkInstance (Prelude.Maybe [GroupIdentifier])
classicLinkInstance_groups = Lens.lens (\ClassicLinkInstance' {groups} -> groups) (\s@ClassicLinkInstance' {} a -> s {groups = a} :: ClassicLinkInstance) Prelude.. Lens.mapping Lens.coerced

instance Core.FromXML ClassicLinkInstance where
  parseXML x =
    ClassicLinkInstance'
      Prelude.<$> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "instanceId")
      Prelude.<*> (x Core..@? "vpcId")
      Prelude.<*> ( x Core..@? "groupSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )

instance Prelude.Hashable ClassicLinkInstance where
  hashWithSalt _salt ClassicLinkInstance' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` vpcId
      `Prelude.hashWithSalt` groups

instance Prelude.NFData ClassicLinkInstance where
  rnf ClassicLinkInstance' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf vpcId
      `Prelude.seq` Prelude.rnf groups
