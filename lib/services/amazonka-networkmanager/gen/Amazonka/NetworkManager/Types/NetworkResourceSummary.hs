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
-- Module      : Amazonka.NetworkManager.Types.NetworkResourceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.NetworkManager.Types.NetworkResourceSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a network resource.
--
-- /See:/ 'newNetworkResourceSummary' smart constructor.
data NetworkResourceSummary = NetworkResourceSummary'
  { -- | The resource type.
    resourceType :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether this is a middlebox appliance.
    isMiddlebox :: Prelude.Maybe Prelude.Bool,
    -- | The ARN of the gateway.
    registeredGatewayArn :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the resource.
    resourceArn :: Prelude.Maybe Prelude.Text,
    -- | Information about the resource, in JSON format. Network Manager gets
    -- this information by describing the resource using its Describe API call.
    definition :: Prelude.Maybe Prelude.Text,
    -- | The value for the Name tag.
    nameTag :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkResourceSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'networkResourceSummary_resourceType' - The resource type.
--
-- 'isMiddlebox', 'networkResourceSummary_isMiddlebox' - Indicates whether this is a middlebox appliance.
--
-- 'registeredGatewayArn', 'networkResourceSummary_registeredGatewayArn' - The ARN of the gateway.
--
-- 'resourceArn', 'networkResourceSummary_resourceArn' - The ARN of the resource.
--
-- 'definition', 'networkResourceSummary_definition' - Information about the resource, in JSON format. Network Manager gets
-- this information by describing the resource using its Describe API call.
--
-- 'nameTag', 'networkResourceSummary_nameTag' - The value for the Name tag.
newNetworkResourceSummary ::
  NetworkResourceSummary
newNetworkResourceSummary =
  NetworkResourceSummary'
    { resourceType =
        Prelude.Nothing,
      isMiddlebox = Prelude.Nothing,
      registeredGatewayArn = Prelude.Nothing,
      resourceArn = Prelude.Nothing,
      definition = Prelude.Nothing,
      nameTag = Prelude.Nothing
    }

-- | The resource type.
networkResourceSummary_resourceType :: Lens.Lens' NetworkResourceSummary (Prelude.Maybe Prelude.Text)
networkResourceSummary_resourceType = Lens.lens (\NetworkResourceSummary' {resourceType} -> resourceType) (\s@NetworkResourceSummary' {} a -> s {resourceType = a} :: NetworkResourceSummary)

-- | Indicates whether this is a middlebox appliance.
networkResourceSummary_isMiddlebox :: Lens.Lens' NetworkResourceSummary (Prelude.Maybe Prelude.Bool)
networkResourceSummary_isMiddlebox = Lens.lens (\NetworkResourceSummary' {isMiddlebox} -> isMiddlebox) (\s@NetworkResourceSummary' {} a -> s {isMiddlebox = a} :: NetworkResourceSummary)

-- | The ARN of the gateway.
networkResourceSummary_registeredGatewayArn :: Lens.Lens' NetworkResourceSummary (Prelude.Maybe Prelude.Text)
networkResourceSummary_registeredGatewayArn = Lens.lens (\NetworkResourceSummary' {registeredGatewayArn} -> registeredGatewayArn) (\s@NetworkResourceSummary' {} a -> s {registeredGatewayArn = a} :: NetworkResourceSummary)

-- | The ARN of the resource.
networkResourceSummary_resourceArn :: Lens.Lens' NetworkResourceSummary (Prelude.Maybe Prelude.Text)
networkResourceSummary_resourceArn = Lens.lens (\NetworkResourceSummary' {resourceArn} -> resourceArn) (\s@NetworkResourceSummary' {} a -> s {resourceArn = a} :: NetworkResourceSummary)

-- | Information about the resource, in JSON format. Network Manager gets
-- this information by describing the resource using its Describe API call.
networkResourceSummary_definition :: Lens.Lens' NetworkResourceSummary (Prelude.Maybe Prelude.Text)
networkResourceSummary_definition = Lens.lens (\NetworkResourceSummary' {definition} -> definition) (\s@NetworkResourceSummary' {} a -> s {definition = a} :: NetworkResourceSummary)

-- | The value for the Name tag.
networkResourceSummary_nameTag :: Lens.Lens' NetworkResourceSummary (Prelude.Maybe Prelude.Text)
networkResourceSummary_nameTag = Lens.lens (\NetworkResourceSummary' {nameTag} -> nameTag) (\s@NetworkResourceSummary' {} a -> s {nameTag = a} :: NetworkResourceSummary)

instance Core.FromJSON NetworkResourceSummary where
  parseJSON =
    Core.withObject
      "NetworkResourceSummary"
      ( \x ->
          NetworkResourceSummary'
            Prelude.<$> (x Core..:? "ResourceType")
            Prelude.<*> (x Core..:? "IsMiddlebox")
            Prelude.<*> (x Core..:? "RegisteredGatewayArn")
            Prelude.<*> (x Core..:? "ResourceArn")
            Prelude.<*> (x Core..:? "Definition")
            Prelude.<*> (x Core..:? "NameTag")
      )

instance Prelude.Hashable NetworkResourceSummary where
  hashWithSalt _salt NetworkResourceSummary' {..} =
    _salt `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` isMiddlebox
      `Prelude.hashWithSalt` registeredGatewayArn
      `Prelude.hashWithSalt` resourceArn
      `Prelude.hashWithSalt` definition
      `Prelude.hashWithSalt` nameTag

instance Prelude.NFData NetworkResourceSummary where
  rnf NetworkResourceSummary' {..} =
    Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf isMiddlebox
      `Prelude.seq` Prelude.rnf registeredGatewayArn
      `Prelude.seq` Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf definition
      `Prelude.seq` Prelude.rnf nameTag
