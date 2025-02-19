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
-- Module      : Amazonka.DataBrew.Types.PathOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataBrew.Types.PathOptions where

import qualified Amazonka.Core as Core
import Amazonka.DataBrew.Types.DatasetParameter
import Amazonka.DataBrew.Types.FilesLimit
import Amazonka.DataBrew.Types.FilterExpression
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents a set of options that define how DataBrew selects files for a
-- given Amazon S3 path in a dataset.
--
-- /See:/ 'newPathOptions' smart constructor.
data PathOptions = PathOptions'
  { -- | If provided, this structure defines a date range for matching Amazon S3
    -- objects based on their LastModifiedDate attribute in Amazon S3.
    lastModifiedDateCondition :: Prelude.Maybe FilterExpression,
    -- | If provided, this structure imposes a limit on a number of files that
    -- should be selected.
    filesLimit :: Prelude.Maybe FilesLimit,
    -- | A structure that maps names of parameters used in the Amazon S3 path of
    -- a dataset to their definitions.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text DatasetParameter)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PathOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModifiedDateCondition', 'pathOptions_lastModifiedDateCondition' - If provided, this structure defines a date range for matching Amazon S3
-- objects based on their LastModifiedDate attribute in Amazon S3.
--
-- 'filesLimit', 'pathOptions_filesLimit' - If provided, this structure imposes a limit on a number of files that
-- should be selected.
--
-- 'parameters', 'pathOptions_parameters' - A structure that maps names of parameters used in the Amazon S3 path of
-- a dataset to their definitions.
newPathOptions ::
  PathOptions
newPathOptions =
  PathOptions'
    { lastModifiedDateCondition =
        Prelude.Nothing,
      filesLimit = Prelude.Nothing,
      parameters = Prelude.Nothing
    }

-- | If provided, this structure defines a date range for matching Amazon S3
-- objects based on their LastModifiedDate attribute in Amazon S3.
pathOptions_lastModifiedDateCondition :: Lens.Lens' PathOptions (Prelude.Maybe FilterExpression)
pathOptions_lastModifiedDateCondition = Lens.lens (\PathOptions' {lastModifiedDateCondition} -> lastModifiedDateCondition) (\s@PathOptions' {} a -> s {lastModifiedDateCondition = a} :: PathOptions)

-- | If provided, this structure imposes a limit on a number of files that
-- should be selected.
pathOptions_filesLimit :: Lens.Lens' PathOptions (Prelude.Maybe FilesLimit)
pathOptions_filesLimit = Lens.lens (\PathOptions' {filesLimit} -> filesLimit) (\s@PathOptions' {} a -> s {filesLimit = a} :: PathOptions)

-- | A structure that maps names of parameters used in the Amazon S3 path of
-- a dataset to their definitions.
pathOptions_parameters :: Lens.Lens' PathOptions (Prelude.Maybe (Prelude.HashMap Prelude.Text DatasetParameter))
pathOptions_parameters = Lens.lens (\PathOptions' {parameters} -> parameters) (\s@PathOptions' {} a -> s {parameters = a} :: PathOptions) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON PathOptions where
  parseJSON =
    Core.withObject
      "PathOptions"
      ( \x ->
          PathOptions'
            Prelude.<$> (x Core..:? "LastModifiedDateCondition")
            Prelude.<*> (x Core..:? "FilesLimit")
            Prelude.<*> (x Core..:? "Parameters" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable PathOptions where
  hashWithSalt _salt PathOptions' {..} =
    _salt
      `Prelude.hashWithSalt` lastModifiedDateCondition
      `Prelude.hashWithSalt` filesLimit
      `Prelude.hashWithSalt` parameters

instance Prelude.NFData PathOptions where
  rnf PathOptions' {..} =
    Prelude.rnf lastModifiedDateCondition
      `Prelude.seq` Prelude.rnf filesLimit
      `Prelude.seq` Prelude.rnf parameters

instance Core.ToJSON PathOptions where
  toJSON PathOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("LastModifiedDateCondition" Core..=)
              Prelude.<$> lastModifiedDateCondition,
            ("FilesLimit" Core..=) Prelude.<$> filesLimit,
            ("Parameters" Core..=) Prelude.<$> parameters
          ]
      )
