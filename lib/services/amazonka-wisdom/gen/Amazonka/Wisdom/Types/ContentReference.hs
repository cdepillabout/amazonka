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
-- Module      : Amazonka.Wisdom.Types.ContentReference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Wisdom.Types.ContentReference where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Reference information about the content.
--
-- /See:/ 'newContentReference' smart constructor.
data ContentReference = ContentReference'
  { -- | The Amazon Resource Name (ARN) of the knowledge base.
    knowledgeBaseArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the content.
    contentArn :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the content.
    contentId :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the knowledge base.
    knowledgeBaseId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContentReference' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'knowledgeBaseArn', 'contentReference_knowledgeBaseArn' - The Amazon Resource Name (ARN) of the knowledge base.
--
-- 'contentArn', 'contentReference_contentArn' - The Amazon Resource Name (ARN) of the content.
--
-- 'contentId', 'contentReference_contentId' - The identifier of the content.
--
-- 'knowledgeBaseId', 'contentReference_knowledgeBaseId' - The identifier of the knowledge base.
newContentReference ::
  ContentReference
newContentReference =
  ContentReference'
    { knowledgeBaseArn =
        Prelude.Nothing,
      contentArn = Prelude.Nothing,
      contentId = Prelude.Nothing,
      knowledgeBaseId = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the knowledge base.
contentReference_knowledgeBaseArn :: Lens.Lens' ContentReference (Prelude.Maybe Prelude.Text)
contentReference_knowledgeBaseArn = Lens.lens (\ContentReference' {knowledgeBaseArn} -> knowledgeBaseArn) (\s@ContentReference' {} a -> s {knowledgeBaseArn = a} :: ContentReference)

-- | The Amazon Resource Name (ARN) of the content.
contentReference_contentArn :: Lens.Lens' ContentReference (Prelude.Maybe Prelude.Text)
contentReference_contentArn = Lens.lens (\ContentReference' {contentArn} -> contentArn) (\s@ContentReference' {} a -> s {contentArn = a} :: ContentReference)

-- | The identifier of the content.
contentReference_contentId :: Lens.Lens' ContentReference (Prelude.Maybe Prelude.Text)
contentReference_contentId = Lens.lens (\ContentReference' {contentId} -> contentId) (\s@ContentReference' {} a -> s {contentId = a} :: ContentReference)

-- | The identifier of the knowledge base.
contentReference_knowledgeBaseId :: Lens.Lens' ContentReference (Prelude.Maybe Prelude.Text)
contentReference_knowledgeBaseId = Lens.lens (\ContentReference' {knowledgeBaseId} -> knowledgeBaseId) (\s@ContentReference' {} a -> s {knowledgeBaseId = a} :: ContentReference)

instance Core.FromJSON ContentReference where
  parseJSON =
    Core.withObject
      "ContentReference"
      ( \x ->
          ContentReference'
            Prelude.<$> (x Core..:? "knowledgeBaseArn")
            Prelude.<*> (x Core..:? "contentArn")
            Prelude.<*> (x Core..:? "contentId")
            Prelude.<*> (x Core..:? "knowledgeBaseId")
      )

instance Prelude.Hashable ContentReference where
  hashWithSalt _salt ContentReference' {..} =
    _salt `Prelude.hashWithSalt` knowledgeBaseArn
      `Prelude.hashWithSalt` contentArn
      `Prelude.hashWithSalt` contentId
      `Prelude.hashWithSalt` knowledgeBaseId

instance Prelude.NFData ContentReference where
  rnf ContentReference' {..} =
    Prelude.rnf knowledgeBaseArn
      `Prelude.seq` Prelude.rnf contentArn
      `Prelude.seq` Prelude.rnf contentId
      `Prelude.seq` Prelude.rnf knowledgeBaseId
