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
-- Module      : Amazonka.SageMaker.Types.DataProcessing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.DataProcessing where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.JoinSource

-- | The data structure used to specify the data to be used for inference in
-- a batch transform job and to associate the data that is relevant to the
-- prediction results in the output. The input filter provided allows you
-- to exclude input data that is not needed for inference in a batch
-- transform job. The output filter provided allows you to include input
-- data relevant to interpreting the predictions in the output from the
-- job. For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html Associate Prediction Results with their Corresponding Input Records>.
--
-- /See:/ 'newDataProcessing' smart constructor.
data DataProcessing = DataProcessing'
  { -- | A
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath>
    -- expression used to select a portion of the joined dataset to save in the
    -- output file for a batch transform job. If you want SageMaker to store
    -- the entire input dataset in the output file, leave the default value,
    -- @$@. If you specify indexes that aren\'t within the dimension size of
    -- the joined dataset, you get an error.
    --
    -- Examples: @\"$\"@, @\"$[0,5:]\"@, @\"$[\'id\',\'SageMakerOutput\']\"@
    outputFilter :: Prelude.Maybe Prelude.Text,
    -- | A
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath>
    -- expression used to select a portion of the input data to pass to the
    -- algorithm. Use the @InputFilter@ parameter to exclude fields, such as an
    -- ID column, from the input. If you want SageMaker to pass the entire
    -- input dataset to the algorithm, accept the default value @$@.
    --
    -- Examples: @\"$\"@, @\"$[1:]\"@, @\"$.features\"@
    inputFilter :: Prelude.Maybe Prelude.Text,
    -- | Specifies the source of the data to join with the transformed data. The
    -- valid values are @None@ and @Input@. The default value is @None@, which
    -- specifies not to join the input with the transformed data. If you want
    -- the batch transform job to join the original input data with the
    -- transformed data, set @JoinSource@ to @Input@. You can specify
    -- @OutputFilter@ as an additional filter to select a portion of the joined
    -- dataset and store it in the output file.
    --
    -- For JSON or JSONLines objects, such as a JSON array, SageMaker adds the
    -- transformed data to the input JSON object in an attribute called
    -- @SageMakerOutput@. The joined result for JSON must be a key-value pair
    -- object. If the input is not a key-value pair object, SageMaker creates a
    -- new JSON file. In the new JSON file, and the input data is stored under
    -- the @SageMakerInput@ key and the results are stored in
    -- @SageMakerOutput@.
    --
    -- For CSV data, SageMaker takes each row as a JSON array and joins the
    -- transformed data with the input by appending each transformed row to the
    -- end of the input. The joined data has the original input data followed
    -- by the transformed data and the output is a CSV file.
    --
    -- For information on how joining in applied, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#batch-transform-data-processing-workflow Workflow for Associating Inferences with Input Records>.
    joinSource :: Prelude.Maybe JoinSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataProcessing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'outputFilter', 'dataProcessing_outputFilter' - A
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath>
-- expression used to select a portion of the joined dataset to save in the
-- output file for a batch transform job. If you want SageMaker to store
-- the entire input dataset in the output file, leave the default value,
-- @$@. If you specify indexes that aren\'t within the dimension size of
-- the joined dataset, you get an error.
--
-- Examples: @\"$\"@, @\"$[0,5:]\"@, @\"$[\'id\',\'SageMakerOutput\']\"@
--
-- 'inputFilter', 'dataProcessing_inputFilter' - A
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath>
-- expression used to select a portion of the input data to pass to the
-- algorithm. Use the @InputFilter@ parameter to exclude fields, such as an
-- ID column, from the input. If you want SageMaker to pass the entire
-- input dataset to the algorithm, accept the default value @$@.
--
-- Examples: @\"$\"@, @\"$[1:]\"@, @\"$.features\"@
--
-- 'joinSource', 'dataProcessing_joinSource' - Specifies the source of the data to join with the transformed data. The
-- valid values are @None@ and @Input@. The default value is @None@, which
-- specifies not to join the input with the transformed data. If you want
-- the batch transform job to join the original input data with the
-- transformed data, set @JoinSource@ to @Input@. You can specify
-- @OutputFilter@ as an additional filter to select a portion of the joined
-- dataset and store it in the output file.
--
-- For JSON or JSONLines objects, such as a JSON array, SageMaker adds the
-- transformed data to the input JSON object in an attribute called
-- @SageMakerOutput@. The joined result for JSON must be a key-value pair
-- object. If the input is not a key-value pair object, SageMaker creates a
-- new JSON file. In the new JSON file, and the input data is stored under
-- the @SageMakerInput@ key and the results are stored in
-- @SageMakerOutput@.
--
-- For CSV data, SageMaker takes each row as a JSON array and joins the
-- transformed data with the input by appending each transformed row to the
-- end of the input. The joined data has the original input data followed
-- by the transformed data and the output is a CSV file.
--
-- For information on how joining in applied, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#batch-transform-data-processing-workflow Workflow for Associating Inferences with Input Records>.
newDataProcessing ::
  DataProcessing
newDataProcessing =
  DataProcessing'
    { outputFilter = Prelude.Nothing,
      inputFilter = Prelude.Nothing,
      joinSource = Prelude.Nothing
    }

-- | A
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath>
-- expression used to select a portion of the joined dataset to save in the
-- output file for a batch transform job. If you want SageMaker to store
-- the entire input dataset in the output file, leave the default value,
-- @$@. If you specify indexes that aren\'t within the dimension size of
-- the joined dataset, you get an error.
--
-- Examples: @\"$\"@, @\"$[0,5:]\"@, @\"$[\'id\',\'SageMakerOutput\']\"@
dataProcessing_outputFilter :: Lens.Lens' DataProcessing (Prelude.Maybe Prelude.Text)
dataProcessing_outputFilter = Lens.lens (\DataProcessing' {outputFilter} -> outputFilter) (\s@DataProcessing' {} a -> s {outputFilter = a} :: DataProcessing)

-- | A
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath>
-- expression used to select a portion of the input data to pass to the
-- algorithm. Use the @InputFilter@ parameter to exclude fields, such as an
-- ID column, from the input. If you want SageMaker to pass the entire
-- input dataset to the algorithm, accept the default value @$@.
--
-- Examples: @\"$\"@, @\"$[1:]\"@, @\"$.features\"@
dataProcessing_inputFilter :: Lens.Lens' DataProcessing (Prelude.Maybe Prelude.Text)
dataProcessing_inputFilter = Lens.lens (\DataProcessing' {inputFilter} -> inputFilter) (\s@DataProcessing' {} a -> s {inputFilter = a} :: DataProcessing)

-- | Specifies the source of the data to join with the transformed data. The
-- valid values are @None@ and @Input@. The default value is @None@, which
-- specifies not to join the input with the transformed data. If you want
-- the batch transform job to join the original input data with the
-- transformed data, set @JoinSource@ to @Input@. You can specify
-- @OutputFilter@ as an additional filter to select a portion of the joined
-- dataset and store it in the output file.
--
-- For JSON or JSONLines objects, such as a JSON array, SageMaker adds the
-- transformed data to the input JSON object in an attribute called
-- @SageMakerOutput@. The joined result for JSON must be a key-value pair
-- object. If the input is not a key-value pair object, SageMaker creates a
-- new JSON file. In the new JSON file, and the input data is stored under
-- the @SageMakerInput@ key and the results are stored in
-- @SageMakerOutput@.
--
-- For CSV data, SageMaker takes each row as a JSON array and joins the
-- transformed data with the input by appending each transformed row to the
-- end of the input. The joined data has the original input data followed
-- by the transformed data and the output is a CSV file.
--
-- For information on how joining in applied, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#batch-transform-data-processing-workflow Workflow for Associating Inferences with Input Records>.
dataProcessing_joinSource :: Lens.Lens' DataProcessing (Prelude.Maybe JoinSource)
dataProcessing_joinSource = Lens.lens (\DataProcessing' {joinSource} -> joinSource) (\s@DataProcessing' {} a -> s {joinSource = a} :: DataProcessing)

instance Core.FromJSON DataProcessing where
  parseJSON =
    Core.withObject
      "DataProcessing"
      ( \x ->
          DataProcessing'
            Prelude.<$> (x Core..:? "OutputFilter")
            Prelude.<*> (x Core..:? "InputFilter")
            Prelude.<*> (x Core..:? "JoinSource")
      )

instance Prelude.Hashable DataProcessing where
  hashWithSalt _salt DataProcessing' {..} =
    _salt `Prelude.hashWithSalt` outputFilter
      `Prelude.hashWithSalt` inputFilter
      `Prelude.hashWithSalt` joinSource

instance Prelude.NFData DataProcessing where
  rnf DataProcessing' {..} =
    Prelude.rnf outputFilter
      `Prelude.seq` Prelude.rnf inputFilter
      `Prelude.seq` Prelude.rnf joinSource

instance Core.ToJSON DataProcessing where
  toJSON DataProcessing' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("OutputFilter" Core..=) Prelude.<$> outputFilter,
            ("InputFilter" Core..=) Prelude.<$> inputFilter,
            ("JoinSource" Core..=) Prelude.<$> joinSource
          ]
      )
