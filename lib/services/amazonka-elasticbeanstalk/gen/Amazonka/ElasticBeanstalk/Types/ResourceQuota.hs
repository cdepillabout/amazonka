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
-- Module      : Amazonka.ElasticBeanstalk.Types.ResourceQuota
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticBeanstalk.Types.ResourceQuota where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The AWS Elastic Beanstalk quota information for a single resource type
-- in an AWS account. It reflects the resource\'s limits for this account.
--
-- /See:/ 'newResourceQuota' smart constructor.
data ResourceQuota = ResourceQuota'
  { -- | The maximum number of instances of this Elastic Beanstalk resource type
    -- that an AWS account can use.
    maximum :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResourceQuota' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maximum', 'resourceQuota_maximum' - The maximum number of instances of this Elastic Beanstalk resource type
-- that an AWS account can use.
newResourceQuota ::
  ResourceQuota
newResourceQuota =
  ResourceQuota' {maximum = Prelude.Nothing}

-- | The maximum number of instances of this Elastic Beanstalk resource type
-- that an AWS account can use.
resourceQuota_maximum :: Lens.Lens' ResourceQuota (Prelude.Maybe Prelude.Int)
resourceQuota_maximum = Lens.lens (\ResourceQuota' {maximum} -> maximum) (\s@ResourceQuota' {} a -> s {maximum = a} :: ResourceQuota)

instance Core.FromXML ResourceQuota where
  parseXML x =
    ResourceQuota' Prelude.<$> (x Core..@? "Maximum")

instance Prelude.Hashable ResourceQuota where
  hashWithSalt salt' ResourceQuota' {..} =
    salt' `Prelude.hashWithSalt` maximum

instance Prelude.NFData ResourceQuota where
  rnf ResourceQuota' {..} = Prelude.rnf maximum
