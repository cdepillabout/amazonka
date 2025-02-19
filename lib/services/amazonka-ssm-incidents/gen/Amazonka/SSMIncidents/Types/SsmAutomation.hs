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
-- Module      : Amazonka.SSMIncidents.Types.SsmAutomation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSMIncidents.Types.SsmAutomation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSMIncidents.Types.DynamicSsmParameterValue
import Amazonka.SSMIncidents.Types.SsmTargetAccount

-- | Details about the Systems Manager automation document that will be used
-- as a runbook during an incident.
--
-- /See:/ 'newSsmAutomation' smart constructor.
data SsmAutomation = SsmAutomation'
  { -- | The account that the automation document will be run in. This can be in
    -- either the management account or an application account.
    targetAccount :: Prelude.Maybe SsmTargetAccount,
    -- | The key-value pair parameters to use when running the automation
    -- document.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]),
    -- | The automation document\'s version to use when running.
    documentVersion :: Prelude.Maybe Prelude.Text,
    -- | The key-value pair to resolve dynamic parameter values when processing a
    -- Systems Manager Automation runbook.
    dynamicParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text DynamicSsmParameterValue),
    -- | The automation document\'s name.
    documentName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the role that the automation document
    -- will assume when running commands.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SsmAutomation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetAccount', 'ssmAutomation_targetAccount' - The account that the automation document will be run in. This can be in
-- either the management account or an application account.
--
-- 'parameters', 'ssmAutomation_parameters' - The key-value pair parameters to use when running the automation
-- document.
--
-- 'documentVersion', 'ssmAutomation_documentVersion' - The automation document\'s version to use when running.
--
-- 'dynamicParameters', 'ssmAutomation_dynamicParameters' - The key-value pair to resolve dynamic parameter values when processing a
-- Systems Manager Automation runbook.
--
-- 'documentName', 'ssmAutomation_documentName' - The automation document\'s name.
--
-- 'roleArn', 'ssmAutomation_roleArn' - The Amazon Resource Name (ARN) of the role that the automation document
-- will assume when running commands.
newSsmAutomation ::
  -- | 'documentName'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  SsmAutomation
newSsmAutomation pDocumentName_ pRoleArn_ =
  SsmAutomation'
    { targetAccount = Prelude.Nothing,
      parameters = Prelude.Nothing,
      documentVersion = Prelude.Nothing,
      dynamicParameters = Prelude.Nothing,
      documentName = pDocumentName_,
      roleArn = pRoleArn_
    }

-- | The account that the automation document will be run in. This can be in
-- either the management account or an application account.
ssmAutomation_targetAccount :: Lens.Lens' SsmAutomation (Prelude.Maybe SsmTargetAccount)
ssmAutomation_targetAccount = Lens.lens (\SsmAutomation' {targetAccount} -> targetAccount) (\s@SsmAutomation' {} a -> s {targetAccount = a} :: SsmAutomation)

-- | The key-value pair parameters to use when running the automation
-- document.
ssmAutomation_parameters :: Lens.Lens' SsmAutomation (Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]))
ssmAutomation_parameters = Lens.lens (\SsmAutomation' {parameters} -> parameters) (\s@SsmAutomation' {} a -> s {parameters = a} :: SsmAutomation) Prelude.. Lens.mapping Lens.coerced

-- | The automation document\'s version to use when running.
ssmAutomation_documentVersion :: Lens.Lens' SsmAutomation (Prelude.Maybe Prelude.Text)
ssmAutomation_documentVersion = Lens.lens (\SsmAutomation' {documentVersion} -> documentVersion) (\s@SsmAutomation' {} a -> s {documentVersion = a} :: SsmAutomation)

-- | The key-value pair to resolve dynamic parameter values when processing a
-- Systems Manager Automation runbook.
ssmAutomation_dynamicParameters :: Lens.Lens' SsmAutomation (Prelude.Maybe (Prelude.HashMap Prelude.Text DynamicSsmParameterValue))
ssmAutomation_dynamicParameters = Lens.lens (\SsmAutomation' {dynamicParameters} -> dynamicParameters) (\s@SsmAutomation' {} a -> s {dynamicParameters = a} :: SsmAutomation) Prelude.. Lens.mapping Lens.coerced

-- | The automation document\'s name.
ssmAutomation_documentName :: Lens.Lens' SsmAutomation Prelude.Text
ssmAutomation_documentName = Lens.lens (\SsmAutomation' {documentName} -> documentName) (\s@SsmAutomation' {} a -> s {documentName = a} :: SsmAutomation)

-- | The Amazon Resource Name (ARN) of the role that the automation document
-- will assume when running commands.
ssmAutomation_roleArn :: Lens.Lens' SsmAutomation Prelude.Text
ssmAutomation_roleArn = Lens.lens (\SsmAutomation' {roleArn} -> roleArn) (\s@SsmAutomation' {} a -> s {roleArn = a} :: SsmAutomation)

instance Core.FromJSON SsmAutomation where
  parseJSON =
    Core.withObject
      "SsmAutomation"
      ( \x ->
          SsmAutomation'
            Prelude.<$> (x Core..:? "targetAccount")
            Prelude.<*> (x Core..:? "parameters" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "documentVersion")
            Prelude.<*> ( x Core..:? "dynamicParameters"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..: "documentName")
            Prelude.<*> (x Core..: "roleArn")
      )

instance Prelude.Hashable SsmAutomation where
  hashWithSalt _salt SsmAutomation' {..} =
    _salt `Prelude.hashWithSalt` targetAccount
      `Prelude.hashWithSalt` parameters
      `Prelude.hashWithSalt` documentVersion
      `Prelude.hashWithSalt` dynamicParameters
      `Prelude.hashWithSalt` documentName
      `Prelude.hashWithSalt` roleArn

instance Prelude.NFData SsmAutomation where
  rnf SsmAutomation' {..} =
    Prelude.rnf targetAccount
      `Prelude.seq` Prelude.rnf parameters
      `Prelude.seq` Prelude.rnf documentVersion
      `Prelude.seq` Prelude.rnf dynamicParameters
      `Prelude.seq` Prelude.rnf documentName
      `Prelude.seq` Prelude.rnf roleArn

instance Core.ToJSON SsmAutomation where
  toJSON SsmAutomation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("targetAccount" Core..=) Prelude.<$> targetAccount,
            ("parameters" Core..=) Prelude.<$> parameters,
            ("documentVersion" Core..=)
              Prelude.<$> documentVersion,
            ("dynamicParameters" Core..=)
              Prelude.<$> dynamicParameters,
            Prelude.Just ("documentName" Core..= documentName),
            Prelude.Just ("roleArn" Core..= roleArn)
          ]
      )
