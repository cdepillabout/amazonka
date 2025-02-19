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
-- Module      : Amazonka.Transcribe.DeleteVocabularyFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a vocabulary filter. To use this operation, specify the name of
-- the vocabulary filter you want to delete using @VocabularyFilterName@.
-- Vocabulary filter names are case sensitive.
module Amazonka.Transcribe.DeleteVocabularyFilter
  ( -- * Creating a Request
    DeleteVocabularyFilter (..),
    newDeleteVocabularyFilter,

    -- * Request Lenses
    deleteVocabularyFilter_vocabularyFilterName,

    -- * Destructuring the Response
    DeleteVocabularyFilterResponse (..),
    newDeleteVocabularyFilterResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transcribe.Types

-- | /See:/ 'newDeleteVocabularyFilter' smart constructor.
data DeleteVocabularyFilter = DeleteVocabularyFilter'
  { -- | The name of the custom vocabulary filter you want to delete. Vocabulary
    -- filter names are case sensitive.
    vocabularyFilterName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteVocabularyFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vocabularyFilterName', 'deleteVocabularyFilter_vocabularyFilterName' - The name of the custom vocabulary filter you want to delete. Vocabulary
-- filter names are case sensitive.
newDeleteVocabularyFilter ::
  -- | 'vocabularyFilterName'
  Prelude.Text ->
  DeleteVocabularyFilter
newDeleteVocabularyFilter pVocabularyFilterName_ =
  DeleteVocabularyFilter'
    { vocabularyFilterName =
        pVocabularyFilterName_
    }

-- | The name of the custom vocabulary filter you want to delete. Vocabulary
-- filter names are case sensitive.
deleteVocabularyFilter_vocabularyFilterName :: Lens.Lens' DeleteVocabularyFilter Prelude.Text
deleteVocabularyFilter_vocabularyFilterName = Lens.lens (\DeleteVocabularyFilter' {vocabularyFilterName} -> vocabularyFilterName) (\s@DeleteVocabularyFilter' {} a -> s {vocabularyFilterName = a} :: DeleteVocabularyFilter)

instance Core.AWSRequest DeleteVocabularyFilter where
  type
    AWSResponse DeleteVocabularyFilter =
      DeleteVocabularyFilterResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      DeleteVocabularyFilterResponse'

instance Prelude.Hashable DeleteVocabularyFilter where
  hashWithSalt _salt DeleteVocabularyFilter' {..} =
    _salt `Prelude.hashWithSalt` vocabularyFilterName

instance Prelude.NFData DeleteVocabularyFilter where
  rnf DeleteVocabularyFilter' {..} =
    Prelude.rnf vocabularyFilterName

instance Core.ToHeaders DeleteVocabularyFilter where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Transcribe.DeleteVocabularyFilter" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteVocabularyFilter where
  toJSON DeleteVocabularyFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "VocabularyFilterName"
                  Core..= vocabularyFilterName
              )
          ]
      )

instance Core.ToPath DeleteVocabularyFilter where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteVocabularyFilter where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteVocabularyFilterResponse' smart constructor.
data DeleteVocabularyFilterResponse = DeleteVocabularyFilterResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteVocabularyFilterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteVocabularyFilterResponse ::
  DeleteVocabularyFilterResponse
newDeleteVocabularyFilterResponse =
  DeleteVocabularyFilterResponse'

instance
  Prelude.NFData
    DeleteVocabularyFilterResponse
  where
  rnf _ = ()
