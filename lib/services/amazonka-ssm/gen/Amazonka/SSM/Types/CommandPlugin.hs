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
-- Module      : Amazonka.SSM.Types.CommandPlugin
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.CommandPlugin where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSM.Types.CommandPluginStatus

-- | Describes plugin details.
--
-- /See:/ 'newCommandPlugin' smart constructor.
data CommandPlugin = CommandPlugin'
  { -- | The name of the plugin. Must be one of the following: @aws:updateAgent@,
    -- @aws:domainjoin@, @aws:applications@, @aws:runPowerShellScript@,
    -- @aws:psmodule@, @aws:cloudWatch@, @aws:runShellScript@, or
    -- @aws:updateSSMAgent@.
    name :: Prelude.Maybe Prelude.Text,
    -- | A detailed status of the plugin execution. @StatusDetails@ includes more
    -- information than Status because it includes states resulting from error
    -- and concurrency control parameters. StatusDetails can show different
    -- results than Status. For more information about these statuses, see
    -- <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html Understanding command statuses>
    -- in the /Amazon Web Services Systems Manager User Guide/. StatusDetails
    -- can be one of the following values:
    --
    -- -   Pending: The command hasn\'t been sent to the managed node.
    --
    -- -   In Progress: The command has been sent to the managed node but
    --     hasn\'t reached a terminal state.
    --
    -- -   Success: The execution of the command or plugin was successfully
    --     completed. This is a terminal state.
    --
    -- -   Delivery Timed Out: The command wasn\'t delivered to the managed
    --     node before the delivery timeout expired. Delivery timeouts don\'t
    --     count against the parent command\'s @MaxErrors@ limit, but they do
    --     contribute to whether the parent command status is Success or
    --     Incomplete. This is a terminal state.
    --
    -- -   Execution Timed Out: Command execution started on the managed node,
    --     but the execution wasn\'t complete before the execution timeout
    --     expired. Execution timeouts count against the @MaxErrors@ limit of
    --     the parent command. This is a terminal state.
    --
    -- -   Failed: The command wasn\'t successful on the managed node. For a
    --     plugin, this indicates that the result code wasn\'t zero. For a
    --     command invocation, this indicates that the result code for one or
    --     more plugins wasn\'t zero. Invocation failures count against the
    --     MaxErrors limit of the parent command. This is a terminal state.
    --
    -- -   Cancelled: The command was terminated before it was completed. This
    --     is a terminal state.
    --
    -- -   Undeliverable: The command can\'t be delivered to the managed node.
    --     The managed node might not exist, or it might not be responding.
    --     Undeliverable invocations don\'t count against the parent command\'s
    --     MaxErrors limit, and they don\'t contribute to whether the parent
    --     command status is Success or Incomplete. This is a terminal state.
    --
    -- -   Terminated: The parent command exceeded its MaxErrors limit and
    --     subsequent command invocations were canceled by the system. This is
    --     a terminal state.
    statusDetails :: Prelude.Maybe Prelude.Text,
    -- | The time the plugin started running.
    responseStartDateTime :: Prelude.Maybe Core.POSIX,
    -- | (Deprecated) You can no longer specify this parameter. The system
    -- ignores it. Instead, Amazon Web Services Systems Manager automatically
    -- determines the S3 bucket region.
    outputS3Region :: Prelude.Maybe Prelude.Text,
    -- | The status of this plugin. You can run a document with multiple plugins.
    status :: Prelude.Maybe CommandPluginStatus,
    -- | The time the plugin stopped running. Could stop prematurely if, for
    -- example, a cancel command was sent.
    responseFinishDateTime :: Prelude.Maybe Core.POSIX,
    -- | The URL for the complete text written by the plugin to stderr. If
    -- execution isn\'t yet complete, then this string is empty.
    standardErrorUrl :: Prelude.Maybe Prelude.Text,
    -- | Output of the plugin execution.
    output :: Prelude.Maybe Prelude.Text,
    -- | The S3 bucket where the responses to the command executions should be
    -- stored. This was requested when issuing the command. For example, in the
    -- following response:
    --
    -- @doc-example-bucket\/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix\/i-02573cafcfEXAMPLE\/awsrunShellScript@
    --
    -- @doc-example-bucket@ is the name of the S3 bucket;
    --
    -- @ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix@ is the name of the S3 prefix;
    --
    -- @i-02573cafcfEXAMPLE@ is the managed node ID;
    --
    -- @awsrunShellScript@ is the name of the plugin.
    outputS3BucketName :: Prelude.Maybe Prelude.Text,
    -- | A numeric response code generated after running the plugin.
    responseCode :: Prelude.Maybe Prelude.Int,
    -- | The S3 directory path inside the bucket where the responses to the
    -- command executions should be stored. This was requested when issuing the
    -- command. For example, in the following response:
    --
    -- @doc-example-bucket\/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix\/i-02573cafcfEXAMPLE\/awsrunShellScript@
    --
    -- @doc-example-bucket@ is the name of the S3 bucket;
    --
    -- @ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix@ is the name of the S3 prefix;
    --
    -- @i-02573cafcfEXAMPLE@ is the managed node ID;
    --
    -- @awsrunShellScript@ is the name of the plugin.
    outputS3KeyPrefix :: Prelude.Maybe Prelude.Text,
    -- | The URL for the complete text written by the plugin to stdout in Amazon
    -- S3. If the S3 bucket for the command wasn\'t specified, then this string
    -- is empty.
    standardOutputUrl :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CommandPlugin' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'commandPlugin_name' - The name of the plugin. Must be one of the following: @aws:updateAgent@,
-- @aws:domainjoin@, @aws:applications@, @aws:runPowerShellScript@,
-- @aws:psmodule@, @aws:cloudWatch@, @aws:runShellScript@, or
-- @aws:updateSSMAgent@.
--
-- 'statusDetails', 'commandPlugin_statusDetails' - A detailed status of the plugin execution. @StatusDetails@ includes more
-- information than Status because it includes states resulting from error
-- and concurrency control parameters. StatusDetails can show different
-- results than Status. For more information about these statuses, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html Understanding command statuses>
-- in the /Amazon Web Services Systems Manager User Guide/. StatusDetails
-- can be one of the following values:
--
-- -   Pending: The command hasn\'t been sent to the managed node.
--
-- -   In Progress: The command has been sent to the managed node but
--     hasn\'t reached a terminal state.
--
-- -   Success: The execution of the command or plugin was successfully
--     completed. This is a terminal state.
--
-- -   Delivery Timed Out: The command wasn\'t delivered to the managed
--     node before the delivery timeout expired. Delivery timeouts don\'t
--     count against the parent command\'s @MaxErrors@ limit, but they do
--     contribute to whether the parent command status is Success or
--     Incomplete. This is a terminal state.
--
-- -   Execution Timed Out: Command execution started on the managed node,
--     but the execution wasn\'t complete before the execution timeout
--     expired. Execution timeouts count against the @MaxErrors@ limit of
--     the parent command. This is a terminal state.
--
-- -   Failed: The command wasn\'t successful on the managed node. For a
--     plugin, this indicates that the result code wasn\'t zero. For a
--     command invocation, this indicates that the result code for one or
--     more plugins wasn\'t zero. Invocation failures count against the
--     MaxErrors limit of the parent command. This is a terminal state.
--
-- -   Cancelled: The command was terminated before it was completed. This
--     is a terminal state.
--
-- -   Undeliverable: The command can\'t be delivered to the managed node.
--     The managed node might not exist, or it might not be responding.
--     Undeliverable invocations don\'t count against the parent command\'s
--     MaxErrors limit, and they don\'t contribute to whether the parent
--     command status is Success or Incomplete. This is a terminal state.
--
-- -   Terminated: The parent command exceeded its MaxErrors limit and
--     subsequent command invocations were canceled by the system. This is
--     a terminal state.
--
-- 'responseStartDateTime', 'commandPlugin_responseStartDateTime' - The time the plugin started running.
--
-- 'outputS3Region', 'commandPlugin_outputS3Region' - (Deprecated) You can no longer specify this parameter. The system
-- ignores it. Instead, Amazon Web Services Systems Manager automatically
-- determines the S3 bucket region.
--
-- 'status', 'commandPlugin_status' - The status of this plugin. You can run a document with multiple plugins.
--
-- 'responseFinishDateTime', 'commandPlugin_responseFinishDateTime' - The time the plugin stopped running. Could stop prematurely if, for
-- example, a cancel command was sent.
--
-- 'standardErrorUrl', 'commandPlugin_standardErrorUrl' - The URL for the complete text written by the plugin to stderr. If
-- execution isn\'t yet complete, then this string is empty.
--
-- 'output', 'commandPlugin_output' - Output of the plugin execution.
--
-- 'outputS3BucketName', 'commandPlugin_outputS3BucketName' - The S3 bucket where the responses to the command executions should be
-- stored. This was requested when issuing the command. For example, in the
-- following response:
--
-- @doc-example-bucket\/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix\/i-02573cafcfEXAMPLE\/awsrunShellScript@
--
-- @doc-example-bucket@ is the name of the S3 bucket;
--
-- @ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix@ is the name of the S3 prefix;
--
-- @i-02573cafcfEXAMPLE@ is the managed node ID;
--
-- @awsrunShellScript@ is the name of the plugin.
--
-- 'responseCode', 'commandPlugin_responseCode' - A numeric response code generated after running the plugin.
--
-- 'outputS3KeyPrefix', 'commandPlugin_outputS3KeyPrefix' - The S3 directory path inside the bucket where the responses to the
-- command executions should be stored. This was requested when issuing the
-- command. For example, in the following response:
--
-- @doc-example-bucket\/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix\/i-02573cafcfEXAMPLE\/awsrunShellScript@
--
-- @doc-example-bucket@ is the name of the S3 bucket;
--
-- @ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix@ is the name of the S3 prefix;
--
-- @i-02573cafcfEXAMPLE@ is the managed node ID;
--
-- @awsrunShellScript@ is the name of the plugin.
--
-- 'standardOutputUrl', 'commandPlugin_standardOutputUrl' - The URL for the complete text written by the plugin to stdout in Amazon
-- S3. If the S3 bucket for the command wasn\'t specified, then this string
-- is empty.
newCommandPlugin ::
  CommandPlugin
newCommandPlugin =
  CommandPlugin'
    { name = Prelude.Nothing,
      statusDetails = Prelude.Nothing,
      responseStartDateTime = Prelude.Nothing,
      outputS3Region = Prelude.Nothing,
      status = Prelude.Nothing,
      responseFinishDateTime = Prelude.Nothing,
      standardErrorUrl = Prelude.Nothing,
      output = Prelude.Nothing,
      outputS3BucketName = Prelude.Nothing,
      responseCode = Prelude.Nothing,
      outputS3KeyPrefix = Prelude.Nothing,
      standardOutputUrl = Prelude.Nothing
    }

-- | The name of the plugin. Must be one of the following: @aws:updateAgent@,
-- @aws:domainjoin@, @aws:applications@, @aws:runPowerShellScript@,
-- @aws:psmodule@, @aws:cloudWatch@, @aws:runShellScript@, or
-- @aws:updateSSMAgent@.
commandPlugin_name :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.Text)
commandPlugin_name = Lens.lens (\CommandPlugin' {name} -> name) (\s@CommandPlugin' {} a -> s {name = a} :: CommandPlugin)

-- | A detailed status of the plugin execution. @StatusDetails@ includes more
-- information than Status because it includes states resulting from error
-- and concurrency control parameters. StatusDetails can show different
-- results than Status. For more information about these statuses, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html Understanding command statuses>
-- in the /Amazon Web Services Systems Manager User Guide/. StatusDetails
-- can be one of the following values:
--
-- -   Pending: The command hasn\'t been sent to the managed node.
--
-- -   In Progress: The command has been sent to the managed node but
--     hasn\'t reached a terminal state.
--
-- -   Success: The execution of the command or plugin was successfully
--     completed. This is a terminal state.
--
-- -   Delivery Timed Out: The command wasn\'t delivered to the managed
--     node before the delivery timeout expired. Delivery timeouts don\'t
--     count against the parent command\'s @MaxErrors@ limit, but they do
--     contribute to whether the parent command status is Success or
--     Incomplete. This is a terminal state.
--
-- -   Execution Timed Out: Command execution started on the managed node,
--     but the execution wasn\'t complete before the execution timeout
--     expired. Execution timeouts count against the @MaxErrors@ limit of
--     the parent command. This is a terminal state.
--
-- -   Failed: The command wasn\'t successful on the managed node. For a
--     plugin, this indicates that the result code wasn\'t zero. For a
--     command invocation, this indicates that the result code for one or
--     more plugins wasn\'t zero. Invocation failures count against the
--     MaxErrors limit of the parent command. This is a terminal state.
--
-- -   Cancelled: The command was terminated before it was completed. This
--     is a terminal state.
--
-- -   Undeliverable: The command can\'t be delivered to the managed node.
--     The managed node might not exist, or it might not be responding.
--     Undeliverable invocations don\'t count against the parent command\'s
--     MaxErrors limit, and they don\'t contribute to whether the parent
--     command status is Success or Incomplete. This is a terminal state.
--
-- -   Terminated: The parent command exceeded its MaxErrors limit and
--     subsequent command invocations were canceled by the system. This is
--     a terminal state.
commandPlugin_statusDetails :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.Text)
commandPlugin_statusDetails = Lens.lens (\CommandPlugin' {statusDetails} -> statusDetails) (\s@CommandPlugin' {} a -> s {statusDetails = a} :: CommandPlugin)

-- | The time the plugin started running.
commandPlugin_responseStartDateTime :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.UTCTime)
commandPlugin_responseStartDateTime = Lens.lens (\CommandPlugin' {responseStartDateTime} -> responseStartDateTime) (\s@CommandPlugin' {} a -> s {responseStartDateTime = a} :: CommandPlugin) Prelude.. Lens.mapping Core._Time

-- | (Deprecated) You can no longer specify this parameter. The system
-- ignores it. Instead, Amazon Web Services Systems Manager automatically
-- determines the S3 bucket region.
commandPlugin_outputS3Region :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.Text)
commandPlugin_outputS3Region = Lens.lens (\CommandPlugin' {outputS3Region} -> outputS3Region) (\s@CommandPlugin' {} a -> s {outputS3Region = a} :: CommandPlugin)

-- | The status of this plugin. You can run a document with multiple plugins.
commandPlugin_status :: Lens.Lens' CommandPlugin (Prelude.Maybe CommandPluginStatus)
commandPlugin_status = Lens.lens (\CommandPlugin' {status} -> status) (\s@CommandPlugin' {} a -> s {status = a} :: CommandPlugin)

-- | The time the plugin stopped running. Could stop prematurely if, for
-- example, a cancel command was sent.
commandPlugin_responseFinishDateTime :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.UTCTime)
commandPlugin_responseFinishDateTime = Lens.lens (\CommandPlugin' {responseFinishDateTime} -> responseFinishDateTime) (\s@CommandPlugin' {} a -> s {responseFinishDateTime = a} :: CommandPlugin) Prelude.. Lens.mapping Core._Time

-- | The URL for the complete text written by the plugin to stderr. If
-- execution isn\'t yet complete, then this string is empty.
commandPlugin_standardErrorUrl :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.Text)
commandPlugin_standardErrorUrl = Lens.lens (\CommandPlugin' {standardErrorUrl} -> standardErrorUrl) (\s@CommandPlugin' {} a -> s {standardErrorUrl = a} :: CommandPlugin)

-- | Output of the plugin execution.
commandPlugin_output :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.Text)
commandPlugin_output = Lens.lens (\CommandPlugin' {output} -> output) (\s@CommandPlugin' {} a -> s {output = a} :: CommandPlugin)

-- | The S3 bucket where the responses to the command executions should be
-- stored. This was requested when issuing the command. For example, in the
-- following response:
--
-- @doc-example-bucket\/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix\/i-02573cafcfEXAMPLE\/awsrunShellScript@
--
-- @doc-example-bucket@ is the name of the S3 bucket;
--
-- @ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix@ is the name of the S3 prefix;
--
-- @i-02573cafcfEXAMPLE@ is the managed node ID;
--
-- @awsrunShellScript@ is the name of the plugin.
commandPlugin_outputS3BucketName :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.Text)
commandPlugin_outputS3BucketName = Lens.lens (\CommandPlugin' {outputS3BucketName} -> outputS3BucketName) (\s@CommandPlugin' {} a -> s {outputS3BucketName = a} :: CommandPlugin)

-- | A numeric response code generated after running the plugin.
commandPlugin_responseCode :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.Int)
commandPlugin_responseCode = Lens.lens (\CommandPlugin' {responseCode} -> responseCode) (\s@CommandPlugin' {} a -> s {responseCode = a} :: CommandPlugin)

-- | The S3 directory path inside the bucket where the responses to the
-- command executions should be stored. This was requested when issuing the
-- command. For example, in the following response:
--
-- @doc-example-bucket\/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix\/i-02573cafcfEXAMPLE\/awsrunShellScript@
--
-- @doc-example-bucket@ is the name of the S3 bucket;
--
-- @ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix@ is the name of the S3 prefix;
--
-- @i-02573cafcfEXAMPLE@ is the managed node ID;
--
-- @awsrunShellScript@ is the name of the plugin.
commandPlugin_outputS3KeyPrefix :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.Text)
commandPlugin_outputS3KeyPrefix = Lens.lens (\CommandPlugin' {outputS3KeyPrefix} -> outputS3KeyPrefix) (\s@CommandPlugin' {} a -> s {outputS3KeyPrefix = a} :: CommandPlugin)

-- | The URL for the complete text written by the plugin to stdout in Amazon
-- S3. If the S3 bucket for the command wasn\'t specified, then this string
-- is empty.
commandPlugin_standardOutputUrl :: Lens.Lens' CommandPlugin (Prelude.Maybe Prelude.Text)
commandPlugin_standardOutputUrl = Lens.lens (\CommandPlugin' {standardOutputUrl} -> standardOutputUrl) (\s@CommandPlugin' {} a -> s {standardOutputUrl = a} :: CommandPlugin)

instance Core.FromJSON CommandPlugin where
  parseJSON =
    Core.withObject
      "CommandPlugin"
      ( \x ->
          CommandPlugin'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "StatusDetails")
            Prelude.<*> (x Core..:? "ResponseStartDateTime")
            Prelude.<*> (x Core..:? "OutputS3Region")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "ResponseFinishDateTime")
            Prelude.<*> (x Core..:? "StandardErrorUrl")
            Prelude.<*> (x Core..:? "Output")
            Prelude.<*> (x Core..:? "OutputS3BucketName")
            Prelude.<*> (x Core..:? "ResponseCode")
            Prelude.<*> (x Core..:? "OutputS3KeyPrefix")
            Prelude.<*> (x Core..:? "StandardOutputUrl")
      )

instance Prelude.Hashable CommandPlugin where
  hashWithSalt _salt CommandPlugin' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` statusDetails
      `Prelude.hashWithSalt` responseStartDateTime
      `Prelude.hashWithSalt` outputS3Region
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` responseFinishDateTime
      `Prelude.hashWithSalt` standardErrorUrl
      `Prelude.hashWithSalt` output
      `Prelude.hashWithSalt` outputS3BucketName
      `Prelude.hashWithSalt` responseCode
      `Prelude.hashWithSalt` outputS3KeyPrefix
      `Prelude.hashWithSalt` standardOutputUrl

instance Prelude.NFData CommandPlugin where
  rnf CommandPlugin' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf statusDetails
      `Prelude.seq` Prelude.rnf responseStartDateTime
      `Prelude.seq` Prelude.rnf outputS3Region
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf responseFinishDateTime
      `Prelude.seq` Prelude.rnf standardErrorUrl
      `Prelude.seq` Prelude.rnf output
      `Prelude.seq` Prelude.rnf outputS3BucketName
      `Prelude.seq` Prelude.rnf responseCode
      `Prelude.seq` Prelude.rnf outputS3KeyPrefix
      `Prelude.seq` Prelude.rnf standardOutputUrl
