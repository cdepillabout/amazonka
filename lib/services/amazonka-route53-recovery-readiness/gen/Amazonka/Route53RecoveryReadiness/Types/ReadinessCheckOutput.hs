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
-- Module      : Amazonka.Route53RecoveryReadiness.Types.ReadinessCheckOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53RecoveryReadiness.Types.ReadinessCheckOutput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A readiness check.
--
-- /See:/ 'newReadinessCheckOutput' smart constructor.
data ReadinessCheckOutput = ReadinessCheckOutput'
  { tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Name of a readiness check.
    readinessCheckName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) associated with a readiness check.
    readinessCheckArn :: Prelude.Text,
    -- | Name of the resource set to be checked.
    resourceSet :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReadinessCheckOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'readinessCheckOutput_tags' - Undocumented member.
--
-- 'readinessCheckName', 'readinessCheckOutput_readinessCheckName' - Name of a readiness check.
--
-- 'readinessCheckArn', 'readinessCheckOutput_readinessCheckArn' - The Amazon Resource Name (ARN) associated with a readiness check.
--
-- 'resourceSet', 'readinessCheckOutput_resourceSet' - Name of the resource set to be checked.
newReadinessCheckOutput ::
  -- | 'readinessCheckArn'
  Prelude.Text ->
  -- | 'resourceSet'
  Prelude.Text ->
  ReadinessCheckOutput
newReadinessCheckOutput
  pReadinessCheckArn_
  pResourceSet_ =
    ReadinessCheckOutput'
      { tags = Prelude.Nothing,
        readinessCheckName = Prelude.Nothing,
        readinessCheckArn = pReadinessCheckArn_,
        resourceSet = pResourceSet_
      }

-- | Undocumented member.
readinessCheckOutput_tags :: Lens.Lens' ReadinessCheckOutput (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
readinessCheckOutput_tags = Lens.lens (\ReadinessCheckOutput' {tags} -> tags) (\s@ReadinessCheckOutput' {} a -> s {tags = a} :: ReadinessCheckOutput) Prelude.. Lens.mapping Lens.coerced

-- | Name of a readiness check.
readinessCheckOutput_readinessCheckName :: Lens.Lens' ReadinessCheckOutput (Prelude.Maybe Prelude.Text)
readinessCheckOutput_readinessCheckName = Lens.lens (\ReadinessCheckOutput' {readinessCheckName} -> readinessCheckName) (\s@ReadinessCheckOutput' {} a -> s {readinessCheckName = a} :: ReadinessCheckOutput)

-- | The Amazon Resource Name (ARN) associated with a readiness check.
readinessCheckOutput_readinessCheckArn :: Lens.Lens' ReadinessCheckOutput Prelude.Text
readinessCheckOutput_readinessCheckArn = Lens.lens (\ReadinessCheckOutput' {readinessCheckArn} -> readinessCheckArn) (\s@ReadinessCheckOutput' {} a -> s {readinessCheckArn = a} :: ReadinessCheckOutput)

-- | Name of the resource set to be checked.
readinessCheckOutput_resourceSet :: Lens.Lens' ReadinessCheckOutput Prelude.Text
readinessCheckOutput_resourceSet = Lens.lens (\ReadinessCheckOutput' {resourceSet} -> resourceSet) (\s@ReadinessCheckOutput' {} a -> s {resourceSet = a} :: ReadinessCheckOutput)

instance Core.FromJSON ReadinessCheckOutput where
  parseJSON =
    Core.withObject
      "ReadinessCheckOutput"
      ( \x ->
          ReadinessCheckOutput'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "readinessCheckName")
            Prelude.<*> (x Core..: "readinessCheckArn")
            Prelude.<*> (x Core..: "resourceSet")
      )

instance Prelude.Hashable ReadinessCheckOutput where
  hashWithSalt _salt ReadinessCheckOutput' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` readinessCheckName
      `Prelude.hashWithSalt` readinessCheckArn
      `Prelude.hashWithSalt` resourceSet

instance Prelude.NFData ReadinessCheckOutput where
  rnf ReadinessCheckOutput' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf readinessCheckName
      `Prelude.seq` Prelude.rnf readinessCheckArn
      `Prelude.seq` Prelude.rnf resourceSet
