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
-- Module      : Amazonka.CodePipeline.Types.ListWebhookItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodePipeline.Types.ListWebhookItem where

import Amazonka.CodePipeline.Types.Tag
import Amazonka.CodePipeline.Types.WebhookDefinition
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The detail returned for each webhook after listing webhooks, such as the
-- webhook URL, the webhook name, and the webhook ARN.
--
-- /See:/ 'newListWebhookItem' smart constructor.
data ListWebhookItem = ListWebhookItem'
  { -- | Specifies the tags applied to the webhook.
    tags :: Prelude.Maybe [Tag],
    -- | The text of the error message about the webhook.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the webhook.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The date and time a webhook was last successfully triggered, in
    -- timestamp format.
    lastTriggered :: Prelude.Maybe Core.POSIX,
    -- | The number code of the error.
    errorCode :: Prelude.Maybe Prelude.Text,
    -- | The detail returned for each webhook, such as the webhook authentication
    -- type and filter rules.
    definition :: WebhookDefinition,
    -- | A unique URL generated by CodePipeline. When a POST request is made to
    -- this URL, the defined pipeline is started as long as the body of the
    -- post request satisfies the defined authentication and filtering
    -- conditions. Deleting and re-creating a webhook makes the old URL invalid
    -- and generates a new one.
    url :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWebhookItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'listWebhookItem_tags' - Specifies the tags applied to the webhook.
--
-- 'errorMessage', 'listWebhookItem_errorMessage' - The text of the error message about the webhook.
--
-- 'arn', 'listWebhookItem_arn' - The Amazon Resource Name (ARN) of the webhook.
--
-- 'lastTriggered', 'listWebhookItem_lastTriggered' - The date and time a webhook was last successfully triggered, in
-- timestamp format.
--
-- 'errorCode', 'listWebhookItem_errorCode' - The number code of the error.
--
-- 'definition', 'listWebhookItem_definition' - The detail returned for each webhook, such as the webhook authentication
-- type and filter rules.
--
-- 'url', 'listWebhookItem_url' - A unique URL generated by CodePipeline. When a POST request is made to
-- this URL, the defined pipeline is started as long as the body of the
-- post request satisfies the defined authentication and filtering
-- conditions. Deleting and re-creating a webhook makes the old URL invalid
-- and generates a new one.
newListWebhookItem ::
  -- | 'definition'
  WebhookDefinition ->
  -- | 'url'
  Prelude.Text ->
  ListWebhookItem
newListWebhookItem pDefinition_ pUrl_ =
  ListWebhookItem'
    { tags = Prelude.Nothing,
      errorMessage = Prelude.Nothing,
      arn = Prelude.Nothing,
      lastTriggered = Prelude.Nothing,
      errorCode = Prelude.Nothing,
      definition = pDefinition_,
      url = pUrl_
    }

-- | Specifies the tags applied to the webhook.
listWebhookItem_tags :: Lens.Lens' ListWebhookItem (Prelude.Maybe [Tag])
listWebhookItem_tags = Lens.lens (\ListWebhookItem' {tags} -> tags) (\s@ListWebhookItem' {} a -> s {tags = a} :: ListWebhookItem) Prelude.. Lens.mapping Lens.coerced

-- | The text of the error message about the webhook.
listWebhookItem_errorMessage :: Lens.Lens' ListWebhookItem (Prelude.Maybe Prelude.Text)
listWebhookItem_errorMessage = Lens.lens (\ListWebhookItem' {errorMessage} -> errorMessage) (\s@ListWebhookItem' {} a -> s {errorMessage = a} :: ListWebhookItem)

-- | The Amazon Resource Name (ARN) of the webhook.
listWebhookItem_arn :: Lens.Lens' ListWebhookItem (Prelude.Maybe Prelude.Text)
listWebhookItem_arn = Lens.lens (\ListWebhookItem' {arn} -> arn) (\s@ListWebhookItem' {} a -> s {arn = a} :: ListWebhookItem)

-- | The date and time a webhook was last successfully triggered, in
-- timestamp format.
listWebhookItem_lastTriggered :: Lens.Lens' ListWebhookItem (Prelude.Maybe Prelude.UTCTime)
listWebhookItem_lastTriggered = Lens.lens (\ListWebhookItem' {lastTriggered} -> lastTriggered) (\s@ListWebhookItem' {} a -> s {lastTriggered = a} :: ListWebhookItem) Prelude.. Lens.mapping Core._Time

-- | The number code of the error.
listWebhookItem_errorCode :: Lens.Lens' ListWebhookItem (Prelude.Maybe Prelude.Text)
listWebhookItem_errorCode = Lens.lens (\ListWebhookItem' {errorCode} -> errorCode) (\s@ListWebhookItem' {} a -> s {errorCode = a} :: ListWebhookItem)

-- | The detail returned for each webhook, such as the webhook authentication
-- type and filter rules.
listWebhookItem_definition :: Lens.Lens' ListWebhookItem WebhookDefinition
listWebhookItem_definition = Lens.lens (\ListWebhookItem' {definition} -> definition) (\s@ListWebhookItem' {} a -> s {definition = a} :: ListWebhookItem)

-- | A unique URL generated by CodePipeline. When a POST request is made to
-- this URL, the defined pipeline is started as long as the body of the
-- post request satisfies the defined authentication and filtering
-- conditions. Deleting and re-creating a webhook makes the old URL invalid
-- and generates a new one.
listWebhookItem_url :: Lens.Lens' ListWebhookItem Prelude.Text
listWebhookItem_url = Lens.lens (\ListWebhookItem' {url} -> url) (\s@ListWebhookItem' {} a -> s {url = a} :: ListWebhookItem)

instance Core.FromJSON ListWebhookItem where
  parseJSON =
    Core.withObject
      "ListWebhookItem"
      ( \x ->
          ListWebhookItem'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "errorMessage")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "lastTriggered")
            Prelude.<*> (x Core..:? "errorCode")
            Prelude.<*> (x Core..: "definition")
            Prelude.<*> (x Core..: "url")
      )

instance Prelude.Hashable ListWebhookItem where
  hashWithSalt _salt ListWebhookItem' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` errorMessage
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` lastTriggered
      `Prelude.hashWithSalt` errorCode
      `Prelude.hashWithSalt` definition
      `Prelude.hashWithSalt` url

instance Prelude.NFData ListWebhookItem where
  rnf ListWebhookItem' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf errorMessage
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf lastTriggered
      `Prelude.seq` Prelude.rnf errorCode
      `Prelude.seq` Prelude.rnf definition
      `Prelude.seq` Prelude.rnf url
