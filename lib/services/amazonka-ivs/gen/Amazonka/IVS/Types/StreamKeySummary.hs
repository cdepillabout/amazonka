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
-- Module      : Amazonka.IVS.Types.StreamKeySummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IVS.Types.StreamKeySummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Summary information about a stream key.
--
-- /See:/ 'newStreamKeySummary' smart constructor.
data StreamKeySummary = StreamKeySummary'
  { -- | Array of 1-50 maps, each of the form @string:string (key:value)@. See
    -- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
    -- for more information, including restrictions that apply to tags and
    -- \"Tag naming limits and requirements\"; Amazon IVS has no
    -- service-specific constraints beyond what is documented there.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Stream-key ARN.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Channel ARN for the stream.
    channelArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StreamKeySummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'streamKeySummary_tags' - Array of 1-50 maps, each of the form @string:string (key:value)@. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
-- for more information, including restrictions that apply to tags and
-- \"Tag naming limits and requirements\"; Amazon IVS has no
-- service-specific constraints beyond what is documented there.
--
-- 'arn', 'streamKeySummary_arn' - Stream-key ARN.
--
-- 'channelArn', 'streamKeySummary_channelArn' - Channel ARN for the stream.
newStreamKeySummary ::
  StreamKeySummary
newStreamKeySummary =
  StreamKeySummary'
    { tags = Prelude.Nothing,
      arn = Prelude.Nothing,
      channelArn = Prelude.Nothing
    }

-- | Array of 1-50 maps, each of the form @string:string (key:value)@. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
-- for more information, including restrictions that apply to tags and
-- \"Tag naming limits and requirements\"; Amazon IVS has no
-- service-specific constraints beyond what is documented there.
streamKeySummary_tags :: Lens.Lens' StreamKeySummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
streamKeySummary_tags = Lens.lens (\StreamKeySummary' {tags} -> tags) (\s@StreamKeySummary' {} a -> s {tags = a} :: StreamKeySummary) Prelude.. Lens.mapping Lens.coerced

-- | Stream-key ARN.
streamKeySummary_arn :: Lens.Lens' StreamKeySummary (Prelude.Maybe Prelude.Text)
streamKeySummary_arn = Lens.lens (\StreamKeySummary' {arn} -> arn) (\s@StreamKeySummary' {} a -> s {arn = a} :: StreamKeySummary)

-- | Channel ARN for the stream.
streamKeySummary_channelArn :: Lens.Lens' StreamKeySummary (Prelude.Maybe Prelude.Text)
streamKeySummary_channelArn = Lens.lens (\StreamKeySummary' {channelArn} -> channelArn) (\s@StreamKeySummary' {} a -> s {channelArn = a} :: StreamKeySummary)

instance Core.FromJSON StreamKeySummary where
  parseJSON =
    Core.withObject
      "StreamKeySummary"
      ( \x ->
          StreamKeySummary'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "channelArn")
      )

instance Prelude.Hashable StreamKeySummary where
  hashWithSalt _salt StreamKeySummary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` channelArn

instance Prelude.NFData StreamKeySummary where
  rnf StreamKeySummary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf channelArn
