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
-- Module      : Amazonka.EC2.Types.NetworkInsightsAccessScope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.NetworkInsightsAccessScope where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a Network Access Scope.
--
-- /See:/ 'newNetworkInsightsAccessScope' smart constructor.
data NetworkInsightsAccessScope = NetworkInsightsAccessScope'
  { -- | The tags.
    tags :: Prelude.Maybe [Tag],
    -- | The ID of the Network Access Scope.
    networkInsightsAccessScopeId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the Network Access Scope.
    networkInsightsAccessScopeArn :: Prelude.Maybe Prelude.Text,
    -- | The last updated date.
    updatedDate :: Prelude.Maybe Core.ISO8601,
    -- | The creation date.
    createdDate :: Prelude.Maybe Core.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkInsightsAccessScope' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'networkInsightsAccessScope_tags' - The tags.
--
-- 'networkInsightsAccessScopeId', 'networkInsightsAccessScope_networkInsightsAccessScopeId' - The ID of the Network Access Scope.
--
-- 'networkInsightsAccessScopeArn', 'networkInsightsAccessScope_networkInsightsAccessScopeArn' - The Amazon Resource Name (ARN) of the Network Access Scope.
--
-- 'updatedDate', 'networkInsightsAccessScope_updatedDate' - The last updated date.
--
-- 'createdDate', 'networkInsightsAccessScope_createdDate' - The creation date.
newNetworkInsightsAccessScope ::
  NetworkInsightsAccessScope
newNetworkInsightsAccessScope =
  NetworkInsightsAccessScope'
    { tags = Prelude.Nothing,
      networkInsightsAccessScopeId = Prelude.Nothing,
      networkInsightsAccessScopeArn = Prelude.Nothing,
      updatedDate = Prelude.Nothing,
      createdDate = Prelude.Nothing
    }

-- | The tags.
networkInsightsAccessScope_tags :: Lens.Lens' NetworkInsightsAccessScope (Prelude.Maybe [Tag])
networkInsightsAccessScope_tags = Lens.lens (\NetworkInsightsAccessScope' {tags} -> tags) (\s@NetworkInsightsAccessScope' {} a -> s {tags = a} :: NetworkInsightsAccessScope) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the Network Access Scope.
networkInsightsAccessScope_networkInsightsAccessScopeId :: Lens.Lens' NetworkInsightsAccessScope (Prelude.Maybe Prelude.Text)
networkInsightsAccessScope_networkInsightsAccessScopeId = Lens.lens (\NetworkInsightsAccessScope' {networkInsightsAccessScopeId} -> networkInsightsAccessScopeId) (\s@NetworkInsightsAccessScope' {} a -> s {networkInsightsAccessScopeId = a} :: NetworkInsightsAccessScope)

-- | The Amazon Resource Name (ARN) of the Network Access Scope.
networkInsightsAccessScope_networkInsightsAccessScopeArn :: Lens.Lens' NetworkInsightsAccessScope (Prelude.Maybe Prelude.Text)
networkInsightsAccessScope_networkInsightsAccessScopeArn = Lens.lens (\NetworkInsightsAccessScope' {networkInsightsAccessScopeArn} -> networkInsightsAccessScopeArn) (\s@NetworkInsightsAccessScope' {} a -> s {networkInsightsAccessScopeArn = a} :: NetworkInsightsAccessScope)

-- | The last updated date.
networkInsightsAccessScope_updatedDate :: Lens.Lens' NetworkInsightsAccessScope (Prelude.Maybe Prelude.UTCTime)
networkInsightsAccessScope_updatedDate = Lens.lens (\NetworkInsightsAccessScope' {updatedDate} -> updatedDate) (\s@NetworkInsightsAccessScope' {} a -> s {updatedDate = a} :: NetworkInsightsAccessScope) Prelude.. Lens.mapping Core._Time

-- | The creation date.
networkInsightsAccessScope_createdDate :: Lens.Lens' NetworkInsightsAccessScope (Prelude.Maybe Prelude.UTCTime)
networkInsightsAccessScope_createdDate = Lens.lens (\NetworkInsightsAccessScope' {createdDate} -> createdDate) (\s@NetworkInsightsAccessScope' {} a -> s {createdDate = a} :: NetworkInsightsAccessScope) Prelude.. Lens.mapping Core._Time

instance Core.FromXML NetworkInsightsAccessScope where
  parseXML x =
    NetworkInsightsAccessScope'
      Prelude.<$> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "networkInsightsAccessScopeId")
      Prelude.<*> (x Core..@? "networkInsightsAccessScopeArn")
      Prelude.<*> (x Core..@? "updatedDate")
      Prelude.<*> (x Core..@? "createdDate")

instance Prelude.Hashable NetworkInsightsAccessScope where
  hashWithSalt _salt NetworkInsightsAccessScope' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` networkInsightsAccessScopeId
      `Prelude.hashWithSalt` networkInsightsAccessScopeArn
      `Prelude.hashWithSalt` updatedDate
      `Prelude.hashWithSalt` createdDate

instance Prelude.NFData NetworkInsightsAccessScope where
  rnf NetworkInsightsAccessScope' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf networkInsightsAccessScopeId
      `Prelude.seq` Prelude.rnf networkInsightsAccessScopeArn
      `Prelude.seq` Prelude.rnf updatedDate
      `Prelude.seq` Prelude.rnf createdDate
