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
-- Module      : Amazonka.SES.Types.Template
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SES.Types.Template where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The content of the email, composed of a subject line, an HTML part, and
-- a text-only part.
--
-- /See:/ 'newTemplate' smart constructor.
data Template = Template'
  { -- | The subject line of the email.
    subjectPart :: Prelude.Maybe Prelude.Text,
    -- | The email body that will be visible to recipients whose email clients do
    -- not display HTML.
    textPart :: Prelude.Maybe Prelude.Text,
    -- | The HTML body of the email.
    htmlPart :: Prelude.Maybe Prelude.Text,
    -- | The name of the template. You will refer to this name when you send
    -- email using the @SendTemplatedEmail@ or @SendBulkTemplatedEmail@
    -- operations.
    templateName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Template' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subjectPart', 'template_subjectPart' - The subject line of the email.
--
-- 'textPart', 'template_textPart' - The email body that will be visible to recipients whose email clients do
-- not display HTML.
--
-- 'htmlPart', 'template_htmlPart' - The HTML body of the email.
--
-- 'templateName', 'template_templateName' - The name of the template. You will refer to this name when you send
-- email using the @SendTemplatedEmail@ or @SendBulkTemplatedEmail@
-- operations.
newTemplate ::
  -- | 'templateName'
  Prelude.Text ->
  Template
newTemplate pTemplateName_ =
  Template'
    { subjectPart = Prelude.Nothing,
      textPart = Prelude.Nothing,
      htmlPart = Prelude.Nothing,
      templateName = pTemplateName_
    }

-- | The subject line of the email.
template_subjectPart :: Lens.Lens' Template (Prelude.Maybe Prelude.Text)
template_subjectPart = Lens.lens (\Template' {subjectPart} -> subjectPart) (\s@Template' {} a -> s {subjectPart = a} :: Template)

-- | The email body that will be visible to recipients whose email clients do
-- not display HTML.
template_textPart :: Lens.Lens' Template (Prelude.Maybe Prelude.Text)
template_textPart = Lens.lens (\Template' {textPart} -> textPart) (\s@Template' {} a -> s {textPart = a} :: Template)

-- | The HTML body of the email.
template_htmlPart :: Lens.Lens' Template (Prelude.Maybe Prelude.Text)
template_htmlPart = Lens.lens (\Template' {htmlPart} -> htmlPart) (\s@Template' {} a -> s {htmlPart = a} :: Template)

-- | The name of the template. You will refer to this name when you send
-- email using the @SendTemplatedEmail@ or @SendBulkTemplatedEmail@
-- operations.
template_templateName :: Lens.Lens' Template Prelude.Text
template_templateName = Lens.lens (\Template' {templateName} -> templateName) (\s@Template' {} a -> s {templateName = a} :: Template)

instance Core.FromXML Template where
  parseXML x =
    Template'
      Prelude.<$> (x Core..@? "SubjectPart")
      Prelude.<*> (x Core..@? "TextPart")
      Prelude.<*> (x Core..@? "HtmlPart")
      Prelude.<*> (x Core..@ "TemplateName")

instance Prelude.Hashable Template where
  hashWithSalt _salt Template' {..} =
    _salt `Prelude.hashWithSalt` subjectPart
      `Prelude.hashWithSalt` textPart
      `Prelude.hashWithSalt` htmlPart
      `Prelude.hashWithSalt` templateName

instance Prelude.NFData Template where
  rnf Template' {..} =
    Prelude.rnf subjectPart
      `Prelude.seq` Prelude.rnf textPart
      `Prelude.seq` Prelude.rnf htmlPart
      `Prelude.seq` Prelude.rnf templateName

instance Core.ToQuery Template where
  toQuery Template' {..} =
    Prelude.mconcat
      [ "SubjectPart" Core.=: subjectPart,
        "TextPart" Core.=: textPart,
        "HtmlPart" Core.=: htmlPart,
        "TemplateName" Core.=: templateName
      ]
