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
-- Module      : Amazonka.Rekognition.UpdateStreamProcessor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows you to update a stream processor. You can change some settings
-- and regions of interest and delete certain parameters.
module Amazonka.Rekognition.UpdateStreamProcessor
  ( -- * Creating a Request
    UpdateStreamProcessor (..),
    newUpdateStreamProcessor,

    -- * Request Lenses
    updateStreamProcessor_dataSharingPreferenceForUpdate,
    updateStreamProcessor_settingsForUpdate,
    updateStreamProcessor_regionsOfInterestForUpdate,
    updateStreamProcessor_parametersToDelete,
    updateStreamProcessor_name,

    -- * Destructuring the Response
    UpdateStreamProcessorResponse (..),
    newUpdateStreamProcessorResponse,

    -- * Response Lenses
    updateStreamProcessorResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Rekognition.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateStreamProcessor' smart constructor.
data UpdateStreamProcessor = UpdateStreamProcessor'
  { -- | Shows whether you are sharing data with Rekognition to improve model
    -- performance. You can choose this option at the account level or on a
    -- per-stream basis. Note that if you opt out at the account level this
    -- setting is ignored on individual streams.
    dataSharingPreferenceForUpdate :: Prelude.Maybe StreamProcessorDataSharingPreference,
    -- | The stream processor settings that you want to update. Label detection
    -- settings can be updated to detect different labels with a different
    -- minimum confidence.
    settingsForUpdate :: Prelude.Maybe StreamProcessorSettingsForUpdate,
    -- | Specifies locations in the frames where Amazon Rekognition checks for
    -- objects or people. This is an optional parameter for label detection
    -- stream processors.
    regionsOfInterestForUpdate :: Prelude.Maybe [RegionOfInterest],
    -- | A list of parameters you want to delete from the stream processor.
    parametersToDelete :: Prelude.Maybe [StreamProcessorParameterToDelete],
    -- | Name of the stream processor that you want to update.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateStreamProcessor' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSharingPreferenceForUpdate', 'updateStreamProcessor_dataSharingPreferenceForUpdate' - Shows whether you are sharing data with Rekognition to improve model
-- performance. You can choose this option at the account level or on a
-- per-stream basis. Note that if you opt out at the account level this
-- setting is ignored on individual streams.
--
-- 'settingsForUpdate', 'updateStreamProcessor_settingsForUpdate' - The stream processor settings that you want to update. Label detection
-- settings can be updated to detect different labels with a different
-- minimum confidence.
--
-- 'regionsOfInterestForUpdate', 'updateStreamProcessor_regionsOfInterestForUpdate' - Specifies locations in the frames where Amazon Rekognition checks for
-- objects or people. This is an optional parameter for label detection
-- stream processors.
--
-- 'parametersToDelete', 'updateStreamProcessor_parametersToDelete' - A list of parameters you want to delete from the stream processor.
--
-- 'name', 'updateStreamProcessor_name' - Name of the stream processor that you want to update.
newUpdateStreamProcessor ::
  -- | 'name'
  Prelude.Text ->
  UpdateStreamProcessor
newUpdateStreamProcessor pName_ =
  UpdateStreamProcessor'
    { dataSharingPreferenceForUpdate =
        Prelude.Nothing,
      settingsForUpdate = Prelude.Nothing,
      regionsOfInterestForUpdate = Prelude.Nothing,
      parametersToDelete = Prelude.Nothing,
      name = pName_
    }

-- | Shows whether you are sharing data with Rekognition to improve model
-- performance. You can choose this option at the account level or on a
-- per-stream basis. Note that if you opt out at the account level this
-- setting is ignored on individual streams.
updateStreamProcessor_dataSharingPreferenceForUpdate :: Lens.Lens' UpdateStreamProcessor (Prelude.Maybe StreamProcessorDataSharingPreference)
updateStreamProcessor_dataSharingPreferenceForUpdate = Lens.lens (\UpdateStreamProcessor' {dataSharingPreferenceForUpdate} -> dataSharingPreferenceForUpdate) (\s@UpdateStreamProcessor' {} a -> s {dataSharingPreferenceForUpdate = a} :: UpdateStreamProcessor)

-- | The stream processor settings that you want to update. Label detection
-- settings can be updated to detect different labels with a different
-- minimum confidence.
updateStreamProcessor_settingsForUpdate :: Lens.Lens' UpdateStreamProcessor (Prelude.Maybe StreamProcessorSettingsForUpdate)
updateStreamProcessor_settingsForUpdate = Lens.lens (\UpdateStreamProcessor' {settingsForUpdate} -> settingsForUpdate) (\s@UpdateStreamProcessor' {} a -> s {settingsForUpdate = a} :: UpdateStreamProcessor)

-- | Specifies locations in the frames where Amazon Rekognition checks for
-- objects or people. This is an optional parameter for label detection
-- stream processors.
updateStreamProcessor_regionsOfInterestForUpdate :: Lens.Lens' UpdateStreamProcessor (Prelude.Maybe [RegionOfInterest])
updateStreamProcessor_regionsOfInterestForUpdate = Lens.lens (\UpdateStreamProcessor' {regionsOfInterestForUpdate} -> regionsOfInterestForUpdate) (\s@UpdateStreamProcessor' {} a -> s {regionsOfInterestForUpdate = a} :: UpdateStreamProcessor) Prelude.. Lens.mapping Lens.coerced

-- | A list of parameters you want to delete from the stream processor.
updateStreamProcessor_parametersToDelete :: Lens.Lens' UpdateStreamProcessor (Prelude.Maybe [StreamProcessorParameterToDelete])
updateStreamProcessor_parametersToDelete = Lens.lens (\UpdateStreamProcessor' {parametersToDelete} -> parametersToDelete) (\s@UpdateStreamProcessor' {} a -> s {parametersToDelete = a} :: UpdateStreamProcessor) Prelude.. Lens.mapping Lens.coerced

-- | Name of the stream processor that you want to update.
updateStreamProcessor_name :: Lens.Lens' UpdateStreamProcessor Prelude.Text
updateStreamProcessor_name = Lens.lens (\UpdateStreamProcessor' {name} -> name) (\s@UpdateStreamProcessor' {} a -> s {name = a} :: UpdateStreamProcessor)

instance Core.AWSRequest UpdateStreamProcessor where
  type
    AWSResponse UpdateStreamProcessor =
      UpdateStreamProcessorResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateStreamProcessorResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateStreamProcessor where
  hashWithSalt _salt UpdateStreamProcessor' {..} =
    _salt
      `Prelude.hashWithSalt` dataSharingPreferenceForUpdate
      `Prelude.hashWithSalt` settingsForUpdate
      `Prelude.hashWithSalt` regionsOfInterestForUpdate
      `Prelude.hashWithSalt` parametersToDelete
      `Prelude.hashWithSalt` name

instance Prelude.NFData UpdateStreamProcessor where
  rnf UpdateStreamProcessor' {..} =
    Prelude.rnf dataSharingPreferenceForUpdate
      `Prelude.seq` Prelude.rnf settingsForUpdate
      `Prelude.seq` Prelude.rnf regionsOfInterestForUpdate
      `Prelude.seq` Prelude.rnf parametersToDelete
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders UpdateStreamProcessor where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "RekognitionService.UpdateStreamProcessor" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateStreamProcessor where
  toJSON UpdateStreamProcessor' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DataSharingPreferenceForUpdate" Core..=)
              Prelude.<$> dataSharingPreferenceForUpdate,
            ("SettingsForUpdate" Core..=)
              Prelude.<$> settingsForUpdate,
            ("RegionsOfInterestForUpdate" Core..=)
              Prelude.<$> regionsOfInterestForUpdate,
            ("ParametersToDelete" Core..=)
              Prelude.<$> parametersToDelete,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath UpdateStreamProcessor where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateStreamProcessor where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateStreamProcessorResponse' smart constructor.
data UpdateStreamProcessorResponse = UpdateStreamProcessorResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateStreamProcessorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateStreamProcessorResponse_httpStatus' - The response's http status code.
newUpdateStreamProcessorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateStreamProcessorResponse
newUpdateStreamProcessorResponse pHttpStatus_ =
  UpdateStreamProcessorResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateStreamProcessorResponse_httpStatus :: Lens.Lens' UpdateStreamProcessorResponse Prelude.Int
updateStreamProcessorResponse_httpStatus = Lens.lens (\UpdateStreamProcessorResponse' {httpStatus} -> httpStatus) (\s@UpdateStreamProcessorResponse' {} a -> s {httpStatus = a} :: UpdateStreamProcessorResponse)

instance Prelude.NFData UpdateStreamProcessorResponse where
  rnf UpdateStreamProcessorResponse' {..} =
    Prelude.rnf httpStatus
