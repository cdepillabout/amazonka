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
-- Module      : Amazonka.SecurityHub.Types.Recommendation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.Recommendation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A recommendation on how to remediate the issue identified in a finding.
--
-- /See:/ 'newRecommendation' smart constructor.
data Recommendation = Recommendation'
  { -- | A URL to a page or site that contains information about how to remediate
    -- a finding.
    url :: Prelude.Maybe Prelude.Text,
    -- | Describes the recommended steps to take to remediate an issue identified
    -- in a finding.
    text :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Recommendation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'url', 'recommendation_url' - A URL to a page or site that contains information about how to remediate
-- a finding.
--
-- 'text', 'recommendation_text' - Describes the recommended steps to take to remediate an issue identified
-- in a finding.
newRecommendation ::
  Recommendation
newRecommendation =
  Recommendation'
    { url = Prelude.Nothing,
      text = Prelude.Nothing
    }

-- | A URL to a page or site that contains information about how to remediate
-- a finding.
recommendation_url :: Lens.Lens' Recommendation (Prelude.Maybe Prelude.Text)
recommendation_url = Lens.lens (\Recommendation' {url} -> url) (\s@Recommendation' {} a -> s {url = a} :: Recommendation)

-- | Describes the recommended steps to take to remediate an issue identified
-- in a finding.
recommendation_text :: Lens.Lens' Recommendation (Prelude.Maybe Prelude.Text)
recommendation_text = Lens.lens (\Recommendation' {text} -> text) (\s@Recommendation' {} a -> s {text = a} :: Recommendation)

instance Core.FromJSON Recommendation where
  parseJSON =
    Core.withObject
      "Recommendation"
      ( \x ->
          Recommendation'
            Prelude.<$> (x Core..:? "Url") Prelude.<*> (x Core..:? "Text")
      )

instance Prelude.Hashable Recommendation where
  hashWithSalt _salt Recommendation' {..} =
    _salt `Prelude.hashWithSalt` url
      `Prelude.hashWithSalt` text

instance Prelude.NFData Recommendation where
  rnf Recommendation' {..} =
    Prelude.rnf url `Prelude.seq` Prelude.rnf text

instance Core.ToJSON Recommendation where
  toJSON Recommendation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Url" Core..=) Prelude.<$> url,
            ("Text" Core..=) Prelude.<$> text
          ]
      )
