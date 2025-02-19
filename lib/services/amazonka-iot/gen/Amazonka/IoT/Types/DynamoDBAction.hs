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
-- Module      : Amazonka.IoT.Types.DynamoDBAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.DynamoDBAction where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types.DynamoKeyType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes an action to write to a DynamoDB table.
--
-- The @tableName@, @hashKeyField@, and @rangeKeyField@ values must match
-- the values used when you created the table.
--
-- The @hashKeyValue@ and @rangeKeyvalue@ fields use a substitution
-- template syntax. These templates provide data at runtime. The syntax is
-- as follows: ${/sql-expression/}.
--
-- You can specify any valid expression in a WHERE or SELECT clause,
-- including JSON properties, comparisons, calculations, and functions. For
-- example, the following field uses the third level of the topic:
--
-- @\"hashKeyValue\": \"${topic(3)}\"@
--
-- The following field uses the timestamp:
--
-- @\"rangeKeyValue\": \"${timestamp()}\"@
--
-- /See:/ 'newDynamoDBAction' smart constructor.
data DynamoDBAction = DynamoDBAction'
  { -- | The range key type. Valid values are \"STRING\" or \"NUMBER\"
    rangeKeyType :: Prelude.Maybe DynamoKeyType,
    -- | The range key value.
    rangeKeyValue :: Prelude.Maybe Prelude.Text,
    -- | The hash key type. Valid values are \"STRING\" or \"NUMBER\"
    hashKeyType :: Prelude.Maybe DynamoKeyType,
    -- | The range key name.
    rangeKeyField :: Prelude.Maybe Prelude.Text,
    -- | The type of operation to be performed. This follows the substitution
    -- template, so it can be @${operation}@, but the substitution must result
    -- in one of the following: @INSERT@, @UPDATE@, or @DELETE@.
    operation :: Prelude.Maybe Prelude.Text,
    -- | The action payload. This name can be customized.
    payloadField :: Prelude.Maybe Prelude.Text,
    -- | The name of the DynamoDB table.
    tableName :: Prelude.Text,
    -- | The ARN of the IAM role that grants access to the DynamoDB table.
    roleArn :: Prelude.Text,
    -- | The hash key name.
    hashKeyField :: Prelude.Text,
    -- | The hash key value.
    hashKeyValue :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DynamoDBAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rangeKeyType', 'dynamoDBAction_rangeKeyType' - The range key type. Valid values are \"STRING\" or \"NUMBER\"
--
-- 'rangeKeyValue', 'dynamoDBAction_rangeKeyValue' - The range key value.
--
-- 'hashKeyType', 'dynamoDBAction_hashKeyType' - The hash key type. Valid values are \"STRING\" or \"NUMBER\"
--
-- 'rangeKeyField', 'dynamoDBAction_rangeKeyField' - The range key name.
--
-- 'operation', 'dynamoDBAction_operation' - The type of operation to be performed. This follows the substitution
-- template, so it can be @${operation}@, but the substitution must result
-- in one of the following: @INSERT@, @UPDATE@, or @DELETE@.
--
-- 'payloadField', 'dynamoDBAction_payloadField' - The action payload. This name can be customized.
--
-- 'tableName', 'dynamoDBAction_tableName' - The name of the DynamoDB table.
--
-- 'roleArn', 'dynamoDBAction_roleArn' - The ARN of the IAM role that grants access to the DynamoDB table.
--
-- 'hashKeyField', 'dynamoDBAction_hashKeyField' - The hash key name.
--
-- 'hashKeyValue', 'dynamoDBAction_hashKeyValue' - The hash key value.
newDynamoDBAction ::
  -- | 'tableName'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  -- | 'hashKeyField'
  Prelude.Text ->
  -- | 'hashKeyValue'
  Prelude.Text ->
  DynamoDBAction
newDynamoDBAction
  pTableName_
  pRoleArn_
  pHashKeyField_
  pHashKeyValue_ =
    DynamoDBAction'
      { rangeKeyType = Prelude.Nothing,
        rangeKeyValue = Prelude.Nothing,
        hashKeyType = Prelude.Nothing,
        rangeKeyField = Prelude.Nothing,
        operation = Prelude.Nothing,
        payloadField = Prelude.Nothing,
        tableName = pTableName_,
        roleArn = pRoleArn_,
        hashKeyField = pHashKeyField_,
        hashKeyValue = pHashKeyValue_
      }

-- | The range key type. Valid values are \"STRING\" or \"NUMBER\"
dynamoDBAction_rangeKeyType :: Lens.Lens' DynamoDBAction (Prelude.Maybe DynamoKeyType)
dynamoDBAction_rangeKeyType = Lens.lens (\DynamoDBAction' {rangeKeyType} -> rangeKeyType) (\s@DynamoDBAction' {} a -> s {rangeKeyType = a} :: DynamoDBAction)

-- | The range key value.
dynamoDBAction_rangeKeyValue :: Lens.Lens' DynamoDBAction (Prelude.Maybe Prelude.Text)
dynamoDBAction_rangeKeyValue = Lens.lens (\DynamoDBAction' {rangeKeyValue} -> rangeKeyValue) (\s@DynamoDBAction' {} a -> s {rangeKeyValue = a} :: DynamoDBAction)

-- | The hash key type. Valid values are \"STRING\" or \"NUMBER\"
dynamoDBAction_hashKeyType :: Lens.Lens' DynamoDBAction (Prelude.Maybe DynamoKeyType)
dynamoDBAction_hashKeyType = Lens.lens (\DynamoDBAction' {hashKeyType} -> hashKeyType) (\s@DynamoDBAction' {} a -> s {hashKeyType = a} :: DynamoDBAction)

-- | The range key name.
dynamoDBAction_rangeKeyField :: Lens.Lens' DynamoDBAction (Prelude.Maybe Prelude.Text)
dynamoDBAction_rangeKeyField = Lens.lens (\DynamoDBAction' {rangeKeyField} -> rangeKeyField) (\s@DynamoDBAction' {} a -> s {rangeKeyField = a} :: DynamoDBAction)

-- | The type of operation to be performed. This follows the substitution
-- template, so it can be @${operation}@, but the substitution must result
-- in one of the following: @INSERT@, @UPDATE@, or @DELETE@.
dynamoDBAction_operation :: Lens.Lens' DynamoDBAction (Prelude.Maybe Prelude.Text)
dynamoDBAction_operation = Lens.lens (\DynamoDBAction' {operation} -> operation) (\s@DynamoDBAction' {} a -> s {operation = a} :: DynamoDBAction)

-- | The action payload. This name can be customized.
dynamoDBAction_payloadField :: Lens.Lens' DynamoDBAction (Prelude.Maybe Prelude.Text)
dynamoDBAction_payloadField = Lens.lens (\DynamoDBAction' {payloadField} -> payloadField) (\s@DynamoDBAction' {} a -> s {payloadField = a} :: DynamoDBAction)

-- | The name of the DynamoDB table.
dynamoDBAction_tableName :: Lens.Lens' DynamoDBAction Prelude.Text
dynamoDBAction_tableName = Lens.lens (\DynamoDBAction' {tableName} -> tableName) (\s@DynamoDBAction' {} a -> s {tableName = a} :: DynamoDBAction)

-- | The ARN of the IAM role that grants access to the DynamoDB table.
dynamoDBAction_roleArn :: Lens.Lens' DynamoDBAction Prelude.Text
dynamoDBAction_roleArn = Lens.lens (\DynamoDBAction' {roleArn} -> roleArn) (\s@DynamoDBAction' {} a -> s {roleArn = a} :: DynamoDBAction)

-- | The hash key name.
dynamoDBAction_hashKeyField :: Lens.Lens' DynamoDBAction Prelude.Text
dynamoDBAction_hashKeyField = Lens.lens (\DynamoDBAction' {hashKeyField} -> hashKeyField) (\s@DynamoDBAction' {} a -> s {hashKeyField = a} :: DynamoDBAction)

-- | The hash key value.
dynamoDBAction_hashKeyValue :: Lens.Lens' DynamoDBAction Prelude.Text
dynamoDBAction_hashKeyValue = Lens.lens (\DynamoDBAction' {hashKeyValue} -> hashKeyValue) (\s@DynamoDBAction' {} a -> s {hashKeyValue = a} :: DynamoDBAction)

instance Core.FromJSON DynamoDBAction where
  parseJSON =
    Core.withObject
      "DynamoDBAction"
      ( \x ->
          DynamoDBAction'
            Prelude.<$> (x Core..:? "rangeKeyType")
            Prelude.<*> (x Core..:? "rangeKeyValue")
            Prelude.<*> (x Core..:? "hashKeyType")
            Prelude.<*> (x Core..:? "rangeKeyField")
            Prelude.<*> (x Core..:? "operation")
            Prelude.<*> (x Core..:? "payloadField")
            Prelude.<*> (x Core..: "tableName")
            Prelude.<*> (x Core..: "roleArn")
            Prelude.<*> (x Core..: "hashKeyField")
            Prelude.<*> (x Core..: "hashKeyValue")
      )

instance Prelude.Hashable DynamoDBAction where
  hashWithSalt _salt DynamoDBAction' {..} =
    _salt `Prelude.hashWithSalt` rangeKeyType
      `Prelude.hashWithSalt` rangeKeyValue
      `Prelude.hashWithSalt` hashKeyType
      `Prelude.hashWithSalt` rangeKeyField
      `Prelude.hashWithSalt` operation
      `Prelude.hashWithSalt` payloadField
      `Prelude.hashWithSalt` tableName
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` hashKeyField
      `Prelude.hashWithSalt` hashKeyValue

instance Prelude.NFData DynamoDBAction where
  rnf DynamoDBAction' {..} =
    Prelude.rnf rangeKeyType
      `Prelude.seq` Prelude.rnf rangeKeyValue
      `Prelude.seq` Prelude.rnf hashKeyType
      `Prelude.seq` Prelude.rnf rangeKeyField
      `Prelude.seq` Prelude.rnf operation
      `Prelude.seq` Prelude.rnf payloadField
      `Prelude.seq` Prelude.rnf tableName
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf hashKeyField
      `Prelude.seq` Prelude.rnf hashKeyValue

instance Core.ToJSON DynamoDBAction where
  toJSON DynamoDBAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("rangeKeyType" Core..=) Prelude.<$> rangeKeyType,
            ("rangeKeyValue" Core..=) Prelude.<$> rangeKeyValue,
            ("hashKeyType" Core..=) Prelude.<$> hashKeyType,
            ("rangeKeyField" Core..=) Prelude.<$> rangeKeyField,
            ("operation" Core..=) Prelude.<$> operation,
            ("payloadField" Core..=) Prelude.<$> payloadField,
            Prelude.Just ("tableName" Core..= tableName),
            Prelude.Just ("roleArn" Core..= roleArn),
            Prelude.Just ("hashKeyField" Core..= hashKeyField),
            Prelude.Just ("hashKeyValue" Core..= hashKeyValue)
          ]
      )
