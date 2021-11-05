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
-- Module      : Amazonka.SecurityHub.Types.AwsElbLoadBalancerListenerDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsElbLoadBalancerListenerDescription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsElbLoadBalancerListener

-- | Lists the policies that are enabled for a load balancer listener.
--
-- /See:/ 'newAwsElbLoadBalancerListenerDescription' smart constructor.
data AwsElbLoadBalancerListenerDescription = AwsElbLoadBalancerListenerDescription'
  { -- | The policies enabled for the listener.
    policyNames :: Prelude.Maybe [Prelude.Text],
    -- | Information about the listener.
    listener :: Prelude.Maybe AwsElbLoadBalancerListener
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElbLoadBalancerListenerDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyNames', 'awsElbLoadBalancerListenerDescription_policyNames' - The policies enabled for the listener.
--
-- 'listener', 'awsElbLoadBalancerListenerDescription_listener' - Information about the listener.
newAwsElbLoadBalancerListenerDescription ::
  AwsElbLoadBalancerListenerDescription
newAwsElbLoadBalancerListenerDescription =
  AwsElbLoadBalancerListenerDescription'
    { policyNames =
        Prelude.Nothing,
      listener = Prelude.Nothing
    }

-- | The policies enabled for the listener.
awsElbLoadBalancerListenerDescription_policyNames :: Lens.Lens' AwsElbLoadBalancerListenerDescription (Prelude.Maybe [Prelude.Text])
awsElbLoadBalancerListenerDescription_policyNames = Lens.lens (\AwsElbLoadBalancerListenerDescription' {policyNames} -> policyNames) (\s@AwsElbLoadBalancerListenerDescription' {} a -> s {policyNames = a} :: AwsElbLoadBalancerListenerDescription) Prelude.. Lens.mapping Lens.coerced

-- | Information about the listener.
awsElbLoadBalancerListenerDescription_listener :: Lens.Lens' AwsElbLoadBalancerListenerDescription (Prelude.Maybe AwsElbLoadBalancerListener)
awsElbLoadBalancerListenerDescription_listener = Lens.lens (\AwsElbLoadBalancerListenerDescription' {listener} -> listener) (\s@AwsElbLoadBalancerListenerDescription' {} a -> s {listener = a} :: AwsElbLoadBalancerListenerDescription)

instance
  Core.FromJSON
    AwsElbLoadBalancerListenerDescription
  where
  parseJSON =
    Core.withObject
      "AwsElbLoadBalancerListenerDescription"
      ( \x ->
          AwsElbLoadBalancerListenerDescription'
            Prelude.<$> (x Core..:? "PolicyNames" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Listener")
      )

instance
  Prelude.Hashable
    AwsElbLoadBalancerListenerDescription

instance
  Prelude.NFData
    AwsElbLoadBalancerListenerDescription

instance
  Core.ToJSON
    AwsElbLoadBalancerListenerDescription
  where
  toJSON AwsElbLoadBalancerListenerDescription' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PolicyNames" Core..=) Prelude.<$> policyNames,
            ("Listener" Core..=) Prelude.<$> listener
          ]
      )
