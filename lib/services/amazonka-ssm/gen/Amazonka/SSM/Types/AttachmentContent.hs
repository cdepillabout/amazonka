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
-- Module      : Amazonka.SSM.Types.AttachmentContent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.AttachmentContent where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSM.Types.AttachmentHashType

-- | A structure that includes attributes that describe a document
-- attachment.
--
-- /See:/ 'newAttachmentContent' smart constructor.
data AttachmentContent = AttachmentContent'
  { -- | The name of an attachment.
    name :: Prelude.Maybe Prelude.Text,
    -- | The cryptographic hash value of the document content.
    hash :: Prelude.Maybe Prelude.Text,
    -- | The size of an attachment in bytes.
    size :: Prelude.Maybe Prelude.Integer,
    -- | The URL location of the attachment content.
    url :: Prelude.Maybe Prelude.Text,
    -- | The hash algorithm used to calculate the hash value.
    hashType :: Prelude.Maybe AttachmentHashType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AttachmentContent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'attachmentContent_name' - The name of an attachment.
--
-- 'hash', 'attachmentContent_hash' - The cryptographic hash value of the document content.
--
-- 'size', 'attachmentContent_size' - The size of an attachment in bytes.
--
-- 'url', 'attachmentContent_url' - The URL location of the attachment content.
--
-- 'hashType', 'attachmentContent_hashType' - The hash algorithm used to calculate the hash value.
newAttachmentContent ::
  AttachmentContent
newAttachmentContent =
  AttachmentContent'
    { name = Prelude.Nothing,
      hash = Prelude.Nothing,
      size = Prelude.Nothing,
      url = Prelude.Nothing,
      hashType = Prelude.Nothing
    }

-- | The name of an attachment.
attachmentContent_name :: Lens.Lens' AttachmentContent (Prelude.Maybe Prelude.Text)
attachmentContent_name = Lens.lens (\AttachmentContent' {name} -> name) (\s@AttachmentContent' {} a -> s {name = a} :: AttachmentContent)

-- | The cryptographic hash value of the document content.
attachmentContent_hash :: Lens.Lens' AttachmentContent (Prelude.Maybe Prelude.Text)
attachmentContent_hash = Lens.lens (\AttachmentContent' {hash} -> hash) (\s@AttachmentContent' {} a -> s {hash = a} :: AttachmentContent)

-- | The size of an attachment in bytes.
attachmentContent_size :: Lens.Lens' AttachmentContent (Prelude.Maybe Prelude.Integer)
attachmentContent_size = Lens.lens (\AttachmentContent' {size} -> size) (\s@AttachmentContent' {} a -> s {size = a} :: AttachmentContent)

-- | The URL location of the attachment content.
attachmentContent_url :: Lens.Lens' AttachmentContent (Prelude.Maybe Prelude.Text)
attachmentContent_url = Lens.lens (\AttachmentContent' {url} -> url) (\s@AttachmentContent' {} a -> s {url = a} :: AttachmentContent)

-- | The hash algorithm used to calculate the hash value.
attachmentContent_hashType :: Lens.Lens' AttachmentContent (Prelude.Maybe AttachmentHashType)
attachmentContent_hashType = Lens.lens (\AttachmentContent' {hashType} -> hashType) (\s@AttachmentContent' {} a -> s {hashType = a} :: AttachmentContent)

instance Core.FromJSON AttachmentContent where
  parseJSON =
    Core.withObject
      "AttachmentContent"
      ( \x ->
          AttachmentContent'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Hash")
            Prelude.<*> (x Core..:? "Size")
            Prelude.<*> (x Core..:? "Url")
            Prelude.<*> (x Core..:? "HashType")
      )

instance Prelude.Hashable AttachmentContent where
  hashWithSalt _salt AttachmentContent' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` hash
      `Prelude.hashWithSalt` size
      `Prelude.hashWithSalt` url
      `Prelude.hashWithSalt` hashType

instance Prelude.NFData AttachmentContent where
  rnf AttachmentContent' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf hash
      `Prelude.seq` Prelude.rnf size
      `Prelude.seq` Prelude.rnf url
      `Prelude.seq` Prelude.rnf hashType
