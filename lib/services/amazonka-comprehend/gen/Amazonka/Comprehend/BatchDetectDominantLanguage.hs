{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Comprehend.BatchDetectDominantLanguage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Determines the dominant language of the input text for a batch of
-- documents. For a list of languages that Amazon Comprehend can detect,
-- see
-- <https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html Amazon Comprehend Supported Languages>.
module Amazonka.Comprehend.BatchDetectDominantLanguage
  ( -- * Creating a Request
    BatchDetectDominantLanguage (..),
    newBatchDetectDominantLanguage,

    -- * Request Lenses
    batchDetectDominantLanguage_textList,

    -- * Destructuring the Response
    BatchDetectDominantLanguageResponse (..),
    newBatchDetectDominantLanguageResponse,

    -- * Response Lenses
    batchDetectDominantLanguageResponse_httpStatus,
    batchDetectDominantLanguageResponse_resultList,
    batchDetectDominantLanguageResponse_errorList,
  )
where

import Amazonka.Comprehend.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newBatchDetectDominantLanguage' smart constructor.
data BatchDetectDominantLanguage = BatchDetectDominantLanguage'
  { -- | A list containing the text of the input documents. The list can contain
    -- a maximum of 25 documents. Each document should contain at least 20
    -- characters and must contain fewer than 5,000 bytes of UTF-8 encoded
    -- characters.
    textList :: Core.Sensitive (Prelude.NonEmpty (Core.Sensitive Prelude.Text))
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDetectDominantLanguage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'textList', 'batchDetectDominantLanguage_textList' - A list containing the text of the input documents. The list can contain
-- a maximum of 25 documents. Each document should contain at least 20
-- characters and must contain fewer than 5,000 bytes of UTF-8 encoded
-- characters.
newBatchDetectDominantLanguage ::
  -- | 'textList'
  Prelude.NonEmpty Prelude.Text ->
  BatchDetectDominantLanguage
newBatchDetectDominantLanguage pTextList_ =
  BatchDetectDominantLanguage'
    { textList =
        Core._Sensitive Prelude.. Lens.coerced
          Lens.# pTextList_
    }

-- | A list containing the text of the input documents. The list can contain
-- a maximum of 25 documents. Each document should contain at least 20
-- characters and must contain fewer than 5,000 bytes of UTF-8 encoded
-- characters.
batchDetectDominantLanguage_textList :: Lens.Lens' BatchDetectDominantLanguage (Prelude.NonEmpty Prelude.Text)
batchDetectDominantLanguage_textList = Lens.lens (\BatchDetectDominantLanguage' {textList} -> textList) (\s@BatchDetectDominantLanguage' {} a -> s {textList = a} :: BatchDetectDominantLanguage) Prelude.. Core._Sensitive Prelude.. Lens.coerced

instance Core.AWSRequest BatchDetectDominantLanguage where
  type
    AWSResponse BatchDetectDominantLanguage =
      BatchDetectDominantLanguageResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDetectDominantLanguageResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "ResultList" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "ErrorList" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable BatchDetectDominantLanguage where
  hashWithSalt _salt BatchDetectDominantLanguage' {..} =
    _salt `Prelude.hashWithSalt` textList

instance Prelude.NFData BatchDetectDominantLanguage where
  rnf BatchDetectDominantLanguage' {..} =
    Prelude.rnf textList

instance Core.ToHeaders BatchDetectDominantLanguage where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Comprehend_20171127.BatchDetectDominantLanguage" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchDetectDominantLanguage where
  toJSON BatchDetectDominantLanguage' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("TextList" Core..= textList)]
      )

instance Core.ToPath BatchDetectDominantLanguage where
  toPath = Prelude.const "/"

instance Core.ToQuery BatchDetectDominantLanguage where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchDetectDominantLanguageResponse' smart constructor.
data BatchDetectDominantLanguageResponse = BatchDetectDominantLanguageResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of objects containing the results of the operation. The results
    -- are sorted in ascending order by the @Index@ field and match the order
    -- of the documents in the input list. If all of the documents contain an
    -- error, the @ResultList@ is empty.
    resultList :: [BatchDetectDominantLanguageItemResult],
    -- | A list containing one object for each document that contained an error.
    -- The results are sorted in ascending order by the @Index@ field and match
    -- the order of the documents in the input list. If there are no errors in
    -- the batch, the @ErrorList@ is empty.
    errorList :: [BatchItemError]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDetectDominantLanguageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'batchDetectDominantLanguageResponse_httpStatus' - The response's http status code.
--
-- 'resultList', 'batchDetectDominantLanguageResponse_resultList' - A list of objects containing the results of the operation. The results
-- are sorted in ascending order by the @Index@ field and match the order
-- of the documents in the input list. If all of the documents contain an
-- error, the @ResultList@ is empty.
--
-- 'errorList', 'batchDetectDominantLanguageResponse_errorList' - A list containing one object for each document that contained an error.
-- The results are sorted in ascending order by the @Index@ field and match
-- the order of the documents in the input list. If there are no errors in
-- the batch, the @ErrorList@ is empty.
newBatchDetectDominantLanguageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchDetectDominantLanguageResponse
newBatchDetectDominantLanguageResponse pHttpStatus_ =
  BatchDetectDominantLanguageResponse'
    { httpStatus =
        pHttpStatus_,
      resultList = Prelude.mempty,
      errorList = Prelude.mempty
    }

-- | The response's http status code.
batchDetectDominantLanguageResponse_httpStatus :: Lens.Lens' BatchDetectDominantLanguageResponse Prelude.Int
batchDetectDominantLanguageResponse_httpStatus = Lens.lens (\BatchDetectDominantLanguageResponse' {httpStatus} -> httpStatus) (\s@BatchDetectDominantLanguageResponse' {} a -> s {httpStatus = a} :: BatchDetectDominantLanguageResponse)

-- | A list of objects containing the results of the operation. The results
-- are sorted in ascending order by the @Index@ field and match the order
-- of the documents in the input list. If all of the documents contain an
-- error, the @ResultList@ is empty.
batchDetectDominantLanguageResponse_resultList :: Lens.Lens' BatchDetectDominantLanguageResponse [BatchDetectDominantLanguageItemResult]
batchDetectDominantLanguageResponse_resultList = Lens.lens (\BatchDetectDominantLanguageResponse' {resultList} -> resultList) (\s@BatchDetectDominantLanguageResponse' {} a -> s {resultList = a} :: BatchDetectDominantLanguageResponse) Prelude.. Lens.coerced

-- | A list containing one object for each document that contained an error.
-- The results are sorted in ascending order by the @Index@ field and match
-- the order of the documents in the input list. If there are no errors in
-- the batch, the @ErrorList@ is empty.
batchDetectDominantLanguageResponse_errorList :: Lens.Lens' BatchDetectDominantLanguageResponse [BatchItemError]
batchDetectDominantLanguageResponse_errorList = Lens.lens (\BatchDetectDominantLanguageResponse' {errorList} -> errorList) (\s@BatchDetectDominantLanguageResponse' {} a -> s {errorList = a} :: BatchDetectDominantLanguageResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    BatchDetectDominantLanguageResponse
  where
  rnf BatchDetectDominantLanguageResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf resultList
      `Prelude.seq` Prelude.rnf errorList
