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
-- Module      : Amazonka.DMS.Types.OracleSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DMS.Types.OracleSettings where

import qualified Amazonka.Core as Core
import Amazonka.DMS.Types.CharLengthSemantics
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information that defines an Oracle endpoint.
--
-- /See:/ 'newOracleSettings' smart constructor.
data OracleSettings = OracleSettings'
  { -- | Set this attribute to change the number of threads that DMS configures
    -- to perform a change data capture (CDC) load using Oracle Automatic
    -- Storage Management (ASM). You can specify an integer value between 2
    -- (the default) and 8 (the maximum). Use this attribute together with the
    -- @readAheadBlocks@ attribute.
    parallelAsmReadThreads :: Prelude.Maybe Prelude.Int,
    -- | Endpoint TCP port.
    port :: Prelude.Maybe Prelude.Int,
    -- | When set to @true@, this attribute supports tablespace replication.
    readTableSpaceName :: Prelude.Maybe Prelude.Bool,
    -- | For an Oracle source endpoint, your ASM server address. You can set this
    -- value from the @asm_server@ value. You set @asm_server@ as part of the
    -- extra connection attribute string to access an Oracle server with Binary
    -- Reader that uses ASM. For more information, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration Configuration for change data capture (CDC) on an Oracle source database>.
    asmServer :: Prelude.Maybe Prelude.Text,
    -- | Set this attribute to Y to have DMS use a direct path full load. Specify
    -- this value to use the direct path protocol in the Oracle Call Interface
    -- (OCI). By using this OCI protocol, you can bulk-load Oracle target
    -- tables during a full load.
    useDirectPathFullLoad :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the ID of the destination for the archived redo logs. This
    -- value should be the same as a number in the dest_id column of the
    -- v$archived_log view. If you work with an additional redo log
    -- destination, use the @AdditionalArchivedLogDestId@ option to specify the
    -- additional destination ID. Doing this improves performance by ensuring
    -- that the correct logs are accessed from the outset.
    archivedLogDestId :: Prelude.Maybe Prelude.Int,
    -- | Required only if your Oracle endpoint uses Advanced Storage Manager
    -- (ASM). The full ARN of the IAM role that specifies DMS as the trusted
    -- entity and grants the required permissions to access the
    -- @SecretsManagerOracleAsmSecret@. This @SecretsManagerOracleAsmSecret@
    -- has the secret value that allows access to the Oracle ASM of the
    -- endpoint.
    --
    -- You can specify one of two sets of values for these permissions. You can
    -- specify the values for this setting and
    -- @SecretsManagerOracleAsmSecretId@. Or you can specify clear-text values
    -- for @AsmUserName@, @AsmPassword@, and @AsmServerName@. You can\'t
    -- specify both. For more information on creating this
    -- @SecretsManagerOracleAsmSecret@ and the
    -- @SecretsManagerOracleAsmAccessRoleArn@ and
    -- @SecretsManagerOracleAsmSecretId@ required to access it, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager Using secrets to access Database Migration Service resources>
    -- in the /Database Migration Service User Guide/.
    secretsManagerOracleAsmAccessRoleArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the length of a character column is in bytes or in
    -- characters. To indicate that the character column length is in
    -- characters, set this attribute to @CHAR@. Otherwise, the character
    -- column length is in bytes.
    --
    -- Example: @charLengthSemantics=CHAR;@
    charLengthSemantics :: Prelude.Maybe CharLengthSemantics,
    -- | Use the @TrimSpaceInChar@ source endpoint setting to trim data on CHAR
    -- and NCHAR data types during migration. The default value is @true@.
    trimSpaceInChar :: Prelude.Maybe Prelude.Bool,
    -- | Set this attribute to change the number of read-ahead blocks that DMS
    -- configures to perform a change data capture (CDC) load using Oracle
    -- Automatic Storage Management (ASM). You can specify an integer value
    -- between 1000 (the default) and 200,000 (the maximum).
    readAheadBlocks :: Prelude.Maybe Prelude.Int,
    -- | The full Amazon Resource Name (ARN) of the IAM role that specifies DMS
    -- as the trusted entity and grants the required permissions to access the
    -- value in @SecretsManagerSecret@. The role must allow the @iam:PassRole@
    -- action. @SecretsManagerSecret@ has the value of the Amazon Web Services
    -- Secrets Manager secret that allows access to the Oracle endpoint.
    --
    -- You can specify one of two sets of values for these permissions. You can
    -- specify the values for this setting and @SecretsManagerSecretId@. Or you
    -- can specify clear-text values for @UserName@, @Password@, @ServerName@,
    -- and @Port@. You can\'t specify both. For more information on creating
    -- this @SecretsManagerSecret@ and the @SecretsManagerAccessRoleArn@ and
    -- @SecretsManagerSecretId@ required to access it, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager Using secrets to access Database Migration Service resources>
    -- in the /Database Migration Service User Guide/.
    secretsManagerAccessRoleArn :: Prelude.Maybe Prelude.Text,
    -- | Use this attribute to specify a time in minutes for the delay in standby
    -- sync. If the source is an Oracle Active Data Guard standby database, use
    -- this attribute to specify the time lag between primary and standby
    -- databases.
    --
    -- In DMS, you can create an Oracle CDC task that uses an Active Data Guard
    -- standby instance as a source for replicating ongoing changes. Doing this
    -- eliminates the need to connect to an active database that might be in
    -- production.
    standbyDelayTime :: Prelude.Maybe Prelude.Int,
    -- | Endpoint connection password.
    password :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Fully qualified domain name of the endpoint.
    serverName :: Prelude.Maybe Prelude.Text,
    -- | For an Oracle source endpoint, the name of a key used for the
    -- transparent data encryption (TDE) of the columns and tablespaces in an
    -- Oracle source database that is encrypted using TDE. The key value is the
    -- value of the @SecurityDbEncryption@ setting. For more information on
    -- setting the key name value of @SecurityDbEncryptionName@, see the
    -- information and example for setting the @securityDbEncryptionName@ extra
    -- connection attribute in
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption Supported encryption methods for using Oracle as a source for DMS>
    -- in the /Database Migration Service User Guide/.
    securityDbEncryptionName :: Prelude.Maybe Prelude.Text,
    -- | Specifies the IDs of one more destinations for one or more archived redo
    -- logs. These IDs are the values of the @dest_id@ column in the
    -- @v$archived_log@ view. Use this setting with the @archivedLogDestId@
    -- extra connection attribute in a primary-to-single setup or a
    -- primary-to-multiple-standby setup.
    --
    -- This setting is useful in a switchover when you use an Oracle Data Guard
    -- database as a source. In this case, DMS needs information about what
    -- destination to get archive redo logs from to read changes. DMS needs
    -- this because after the switchover the previous primary is a standby
    -- instance. For example, in a primary-to-single standby setup you might
    -- apply the following settings.
    --
    -- @archivedLogDestId=1; ExtraArchivedLogDestIds=[2]@
    --
    -- In a primary-to-multiple-standby setup, you might apply the following
    -- settings.
    --
    -- @archivedLogDestId=1; ExtraArchivedLogDestIds=[2,3,4]@
    --
    -- Although DMS supports the use of the Oracle @RESETLOGS@ option to open
    -- the database, never use @RESETLOGS@ unless it\'s necessary. For more
    -- information about @RESETLOGS@, see
    -- <https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B RMAN Data Repair Concepts>
    -- in the /Oracle Database Backup and Recovery User\'s Guide/.
    extraArchivedLogDestIds :: Prelude.Maybe [Prelude.Int],
    -- | Database name for the endpoint.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | Endpoint connection user name.
    username :: Prelude.Maybe Prelude.Text,
    -- | Set this string attribute to the required value in order to use the
    -- Binary Reader to capture change data for an Amazon RDS for Oracle as the
    -- source. This value specifies the default Oracle root used to access the
    -- redo logs.
    oraclePathPrefix :: Prelude.Maybe Prelude.Text,
    -- | Specifies the number of seconds that the system waits before resending a
    -- query.
    --
    -- Example: @retryInterval=6;@
    retryInterval :: Prelude.Maybe Prelude.Int,
    -- | For an Oracle source endpoint, your Oracle Automatic Storage Management
    -- (ASM) password. You can set this value from the @ asm_user_password @
    -- value. You set this value as part of the comma-separated value that you
    -- set to the @Password@ request parameter when you create the endpoint to
    -- access transaction logs using Binary Reader. For more information, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration Configuration for change data capture (CDC) on an Oracle source database>.
    asmPassword :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Set this attribute with @ArchivedLogDestId@ in a primary\/ standby
    -- setup. This attribute is useful in the case of a switchover. In this
    -- case, DMS needs to know which destination to get archive redo logs from
    -- to read changes. This need arises because the previous primary instance
    -- is now a standby instance after switchover.
    --
    -- Although DMS supports the use of the Oracle @RESETLOGS@ option to open
    -- the database, never use @RESETLOGS@ unless necessary. For additional
    -- information about @RESETLOGS@, see
    -- <https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B RMAN Data Repair Concepts>
    -- in the /Oracle Database Backup and Recovery User\'s Guide/.
    additionalArchivedLogDestId :: Prelude.Maybe Prelude.Int,
    -- | When set to @true@, this attribute causes a task to fail if the actual
    -- size of an LOB column is greater than the specified @LobMaxSize@.
    --
    -- If a task is set to limited LOB mode and this option is set to @true@,
    -- the task fails instead of truncating the LOB data.
    failTasksOnLobTruncation :: Prelude.Maybe Prelude.Bool,
    -- | When this field is set to @Y@, DMS only accesses the archived redo logs.
    -- If the archived redo logs are stored on Oracle ASM only, the DMS user
    -- account needs to be granted ASM privileges.
    archivedLogsOnly :: Prelude.Maybe Prelude.Bool,
    -- | Set this string attribute to the required value in order to use the
    -- Binary Reader to capture change data for an Amazon RDS for Oracle as the
    -- source. This value specifies the path prefix used to replace the default
    -- Oracle root to access the redo logs.
    usePathPrefix :: Prelude.Maybe Prelude.Text,
    -- | Set this attribute to true in order to use the Binary Reader to capture
    -- change data for an Amazon RDS for Oracle as the source. This setting
    -- tells DMS instance to replace the default Oracle root with the specified
    -- @usePathPrefix@ setting to access the redo logs.
    replacePathPrefix :: Prelude.Maybe Prelude.Bool,
    -- | For an Oracle source endpoint, the transparent data encryption (TDE)
    -- password required by AWM DMS to access Oracle redo logs encrypted by TDE
    -- using Binary Reader. It is also the @ TDE_Password @ part of the
    -- comma-separated value you set to the @Password@ request parameter when
    -- you create the endpoint. The @SecurityDbEncryptian@ setting is related
    -- to this @SecurityDbEncryptionName@ setting. For more information, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption Supported encryption methods for using Oracle as a source for DMS>
    -- in the /Database Migration Service User Guide/.
    securityDbEncryption :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | When set to @true@, this attribute specifies a parallel load when
    -- @useDirectPathFullLoad@ is set to @Y@. This attribute also only applies
    -- when you use the DMS parallel load feature. Note that the target table
    -- cannot have any constraints or indexes.
    directPathParallelLoad :: Prelude.Maybe Prelude.Bool,
    -- | The full ARN, partial ARN, or friendly name of the
    -- @SecretsManagerSecret@ that contains the Oracle endpoint connection
    -- details.
    secretsManagerSecretId :: Prelude.Maybe Prelude.Text,
    -- | Set this attribute to set up table-level supplemental logging for the
    -- Oracle database. This attribute enables PRIMARY KEY supplemental logging
    -- on all tables selected for a migration task.
    --
    -- If you use this option, you still need to enable database-level
    -- supplemental logging.
    addSupplementalLogging :: Prelude.Maybe Prelude.Bool,
    -- | Use this attribute to convert @SDO_GEOMETRY@ to @GEOJSON@ format. By
    -- default, DMS calls the @SDO2GEOJSON@ custom function if present and
    -- accessible. Or you can create your own custom function that mimics the
    -- operation of @SDOGEOJSON@ and set
    -- @SpatialDataOptionToGeoJsonFunctionName@ to call it instead.
    spatialDataOptionToGeoJsonFunctionName :: Prelude.Maybe Prelude.Text,
    -- | Set this attribute to @false@ in order to use the Binary Reader to
    -- capture change data for an Amazon RDS for Oracle as the source. This
    -- tells the DMS instance to not access redo logs through any specified
    -- path prefix replacement using direct file access.
    accessAlternateDirectly :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the number scale. You can select a scale up to 38, or you can
    -- select FLOAT. By default, the NUMBER data type is converted to precision
    -- 38, scale 10.
    --
    -- Example: @numberDataTypeScale=12@
    numberDatatypeScale :: Prelude.Maybe Prelude.Int,
    -- | When set to @true@, this attribute helps to increase the commit rate on
    -- the Oracle target database by writing directly to tables and not writing
    -- a trail to database logs.
    directPathNoLog :: Prelude.Maybe Prelude.Bool,
    -- | For an Oracle source endpoint, your ASM user name. You can set this
    -- value from the @asm_user@ value. You set @asm_user@ as part of the extra
    -- connection attribute string to access an Oracle server with Binary
    -- Reader that uses ASM. For more information, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration Configuration for change data capture (CDC) on an Oracle source database>.
    asmUser :: Prelude.Maybe Prelude.Text,
    -- | Set this attribute to @true@ to enable replication of Oracle tables
    -- containing columns that are nested tables or defined types.
    allowSelectNestedTables :: Prelude.Maybe Prelude.Bool,
    -- | Set this attribute to enable homogenous tablespace replication and
    -- create existing tables or indexes under the same tablespace on the
    -- target.
    enableHomogenousTablespace :: Prelude.Maybe Prelude.Bool,
    -- | Required only if your Oracle endpoint uses Advanced Storage Manager
    -- (ASM). The full ARN, partial ARN, or friendly name of the
    -- @SecretsManagerOracleAsmSecret@ that contains the Oracle ASM connection
    -- details for the Oracle endpoint.
    secretsManagerOracleAsmSecretId :: Prelude.Maybe Prelude.Text,
    -- | Set this attribute to Y to capture change data using the Binary Reader
    -- utility. Set @UseLogminerReader@ to N to set this attribute to Y. To use
    -- Binary Reader with Amazon RDS for Oracle as the source, you set
    -- additional attributes. For more information about using this setting
    -- with Oracle Automatic Storage Management (ASM), see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC Using Oracle LogMiner or DMS Binary Reader for CDC>.
    useBFile :: Prelude.Maybe Prelude.Bool,
    -- | Set this attribute to Y to capture change data using the Oracle LogMiner
    -- utility (the default). Set this attribute to N if you want to access the
    -- redo logs as a binary file. When you set @UseLogminerReader@ to N, also
    -- set @UseBfile@ to Y. For more information on this setting and using
    -- Oracle ASM, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC Using Oracle LogMiner or DMS Binary Reader for CDC>
    -- in the /DMS User Guide/.
    useLogminerReader :: Prelude.Maybe Prelude.Bool,
    -- | Set this attribute to @true@ in order to use the Binary Reader to
    -- capture change data for an Amazon RDS for Oracle as the source. This
    -- tells the DMS instance to use any specified prefix replacement to access
    -- all online redo logs.
    useAlternateFolderForOnline :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OracleSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parallelAsmReadThreads', 'oracleSettings_parallelAsmReadThreads' - Set this attribute to change the number of threads that DMS configures
-- to perform a change data capture (CDC) load using Oracle Automatic
-- Storage Management (ASM). You can specify an integer value between 2
-- (the default) and 8 (the maximum). Use this attribute together with the
-- @readAheadBlocks@ attribute.
--
-- 'port', 'oracleSettings_port' - Endpoint TCP port.
--
-- 'readTableSpaceName', 'oracleSettings_readTableSpaceName' - When set to @true@, this attribute supports tablespace replication.
--
-- 'asmServer', 'oracleSettings_asmServer' - For an Oracle source endpoint, your ASM server address. You can set this
-- value from the @asm_server@ value. You set @asm_server@ as part of the
-- extra connection attribute string to access an Oracle server with Binary
-- Reader that uses ASM. For more information, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration Configuration for change data capture (CDC) on an Oracle source database>.
--
-- 'useDirectPathFullLoad', 'oracleSettings_useDirectPathFullLoad' - Set this attribute to Y to have DMS use a direct path full load. Specify
-- this value to use the direct path protocol in the Oracle Call Interface
-- (OCI). By using this OCI protocol, you can bulk-load Oracle target
-- tables during a full load.
--
-- 'archivedLogDestId', 'oracleSettings_archivedLogDestId' - Specifies the ID of the destination for the archived redo logs. This
-- value should be the same as a number in the dest_id column of the
-- v$archived_log view. If you work with an additional redo log
-- destination, use the @AdditionalArchivedLogDestId@ option to specify the
-- additional destination ID. Doing this improves performance by ensuring
-- that the correct logs are accessed from the outset.
--
-- 'secretsManagerOracleAsmAccessRoleArn', 'oracleSettings_secretsManagerOracleAsmAccessRoleArn' - Required only if your Oracle endpoint uses Advanced Storage Manager
-- (ASM). The full ARN of the IAM role that specifies DMS as the trusted
-- entity and grants the required permissions to access the
-- @SecretsManagerOracleAsmSecret@. This @SecretsManagerOracleAsmSecret@
-- has the secret value that allows access to the Oracle ASM of the
-- endpoint.
--
-- You can specify one of two sets of values for these permissions. You can
-- specify the values for this setting and
-- @SecretsManagerOracleAsmSecretId@. Or you can specify clear-text values
-- for @AsmUserName@, @AsmPassword@, and @AsmServerName@. You can\'t
-- specify both. For more information on creating this
-- @SecretsManagerOracleAsmSecret@ and the
-- @SecretsManagerOracleAsmAccessRoleArn@ and
-- @SecretsManagerOracleAsmSecretId@ required to access it, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager Using secrets to access Database Migration Service resources>
-- in the /Database Migration Service User Guide/.
--
-- 'charLengthSemantics', 'oracleSettings_charLengthSemantics' - Specifies whether the length of a character column is in bytes or in
-- characters. To indicate that the character column length is in
-- characters, set this attribute to @CHAR@. Otherwise, the character
-- column length is in bytes.
--
-- Example: @charLengthSemantics=CHAR;@
--
-- 'trimSpaceInChar', 'oracleSettings_trimSpaceInChar' - Use the @TrimSpaceInChar@ source endpoint setting to trim data on CHAR
-- and NCHAR data types during migration. The default value is @true@.
--
-- 'readAheadBlocks', 'oracleSettings_readAheadBlocks' - Set this attribute to change the number of read-ahead blocks that DMS
-- configures to perform a change data capture (CDC) load using Oracle
-- Automatic Storage Management (ASM). You can specify an integer value
-- between 1000 (the default) and 200,000 (the maximum).
--
-- 'secretsManagerAccessRoleArn', 'oracleSettings_secretsManagerAccessRoleArn' - The full Amazon Resource Name (ARN) of the IAM role that specifies DMS
-- as the trusted entity and grants the required permissions to access the
-- value in @SecretsManagerSecret@. The role must allow the @iam:PassRole@
-- action. @SecretsManagerSecret@ has the value of the Amazon Web Services
-- Secrets Manager secret that allows access to the Oracle endpoint.
--
-- You can specify one of two sets of values for these permissions. You can
-- specify the values for this setting and @SecretsManagerSecretId@. Or you
-- can specify clear-text values for @UserName@, @Password@, @ServerName@,
-- and @Port@. You can\'t specify both. For more information on creating
-- this @SecretsManagerSecret@ and the @SecretsManagerAccessRoleArn@ and
-- @SecretsManagerSecretId@ required to access it, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager Using secrets to access Database Migration Service resources>
-- in the /Database Migration Service User Guide/.
--
-- 'standbyDelayTime', 'oracleSettings_standbyDelayTime' - Use this attribute to specify a time in minutes for the delay in standby
-- sync. If the source is an Oracle Active Data Guard standby database, use
-- this attribute to specify the time lag between primary and standby
-- databases.
--
-- In DMS, you can create an Oracle CDC task that uses an Active Data Guard
-- standby instance as a source for replicating ongoing changes. Doing this
-- eliminates the need to connect to an active database that might be in
-- production.
--
-- 'password', 'oracleSettings_password' - Endpoint connection password.
--
-- 'serverName', 'oracleSettings_serverName' - Fully qualified domain name of the endpoint.
--
-- 'securityDbEncryptionName', 'oracleSettings_securityDbEncryptionName' - For an Oracle source endpoint, the name of a key used for the
-- transparent data encryption (TDE) of the columns and tablespaces in an
-- Oracle source database that is encrypted using TDE. The key value is the
-- value of the @SecurityDbEncryption@ setting. For more information on
-- setting the key name value of @SecurityDbEncryptionName@, see the
-- information and example for setting the @securityDbEncryptionName@ extra
-- connection attribute in
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption Supported encryption methods for using Oracle as a source for DMS>
-- in the /Database Migration Service User Guide/.
--
-- 'extraArchivedLogDestIds', 'oracleSettings_extraArchivedLogDestIds' - Specifies the IDs of one more destinations for one or more archived redo
-- logs. These IDs are the values of the @dest_id@ column in the
-- @v$archived_log@ view. Use this setting with the @archivedLogDestId@
-- extra connection attribute in a primary-to-single setup or a
-- primary-to-multiple-standby setup.
--
-- This setting is useful in a switchover when you use an Oracle Data Guard
-- database as a source. In this case, DMS needs information about what
-- destination to get archive redo logs from to read changes. DMS needs
-- this because after the switchover the previous primary is a standby
-- instance. For example, in a primary-to-single standby setup you might
-- apply the following settings.
--
-- @archivedLogDestId=1; ExtraArchivedLogDestIds=[2]@
--
-- In a primary-to-multiple-standby setup, you might apply the following
-- settings.
--
-- @archivedLogDestId=1; ExtraArchivedLogDestIds=[2,3,4]@
--
-- Although DMS supports the use of the Oracle @RESETLOGS@ option to open
-- the database, never use @RESETLOGS@ unless it\'s necessary. For more
-- information about @RESETLOGS@, see
-- <https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B RMAN Data Repair Concepts>
-- in the /Oracle Database Backup and Recovery User\'s Guide/.
--
-- 'databaseName', 'oracleSettings_databaseName' - Database name for the endpoint.
--
-- 'username', 'oracleSettings_username' - Endpoint connection user name.
--
-- 'oraclePathPrefix', 'oracleSettings_oraclePathPrefix' - Set this string attribute to the required value in order to use the
-- Binary Reader to capture change data for an Amazon RDS for Oracle as the
-- source. This value specifies the default Oracle root used to access the
-- redo logs.
--
-- 'retryInterval', 'oracleSettings_retryInterval' - Specifies the number of seconds that the system waits before resending a
-- query.
--
-- Example: @retryInterval=6;@
--
-- 'asmPassword', 'oracleSettings_asmPassword' - For an Oracle source endpoint, your Oracle Automatic Storage Management
-- (ASM) password. You can set this value from the @ asm_user_password @
-- value. You set this value as part of the comma-separated value that you
-- set to the @Password@ request parameter when you create the endpoint to
-- access transaction logs using Binary Reader. For more information, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration Configuration for change data capture (CDC) on an Oracle source database>.
--
-- 'additionalArchivedLogDestId', 'oracleSettings_additionalArchivedLogDestId' - Set this attribute with @ArchivedLogDestId@ in a primary\/ standby
-- setup. This attribute is useful in the case of a switchover. In this
-- case, DMS needs to know which destination to get archive redo logs from
-- to read changes. This need arises because the previous primary instance
-- is now a standby instance after switchover.
--
-- Although DMS supports the use of the Oracle @RESETLOGS@ option to open
-- the database, never use @RESETLOGS@ unless necessary. For additional
-- information about @RESETLOGS@, see
-- <https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B RMAN Data Repair Concepts>
-- in the /Oracle Database Backup and Recovery User\'s Guide/.
--
-- 'failTasksOnLobTruncation', 'oracleSettings_failTasksOnLobTruncation' - When set to @true@, this attribute causes a task to fail if the actual
-- size of an LOB column is greater than the specified @LobMaxSize@.
--
-- If a task is set to limited LOB mode and this option is set to @true@,
-- the task fails instead of truncating the LOB data.
--
-- 'archivedLogsOnly', 'oracleSettings_archivedLogsOnly' - When this field is set to @Y@, DMS only accesses the archived redo logs.
-- If the archived redo logs are stored on Oracle ASM only, the DMS user
-- account needs to be granted ASM privileges.
--
-- 'usePathPrefix', 'oracleSettings_usePathPrefix' - Set this string attribute to the required value in order to use the
-- Binary Reader to capture change data for an Amazon RDS for Oracle as the
-- source. This value specifies the path prefix used to replace the default
-- Oracle root to access the redo logs.
--
-- 'replacePathPrefix', 'oracleSettings_replacePathPrefix' - Set this attribute to true in order to use the Binary Reader to capture
-- change data for an Amazon RDS for Oracle as the source. This setting
-- tells DMS instance to replace the default Oracle root with the specified
-- @usePathPrefix@ setting to access the redo logs.
--
-- 'securityDbEncryption', 'oracleSettings_securityDbEncryption' - For an Oracle source endpoint, the transparent data encryption (TDE)
-- password required by AWM DMS to access Oracle redo logs encrypted by TDE
-- using Binary Reader. It is also the @ TDE_Password @ part of the
-- comma-separated value you set to the @Password@ request parameter when
-- you create the endpoint. The @SecurityDbEncryptian@ setting is related
-- to this @SecurityDbEncryptionName@ setting. For more information, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption Supported encryption methods for using Oracle as a source for DMS>
-- in the /Database Migration Service User Guide/.
--
-- 'directPathParallelLoad', 'oracleSettings_directPathParallelLoad' - When set to @true@, this attribute specifies a parallel load when
-- @useDirectPathFullLoad@ is set to @Y@. This attribute also only applies
-- when you use the DMS parallel load feature. Note that the target table
-- cannot have any constraints or indexes.
--
-- 'secretsManagerSecretId', 'oracleSettings_secretsManagerSecretId' - The full ARN, partial ARN, or friendly name of the
-- @SecretsManagerSecret@ that contains the Oracle endpoint connection
-- details.
--
-- 'addSupplementalLogging', 'oracleSettings_addSupplementalLogging' - Set this attribute to set up table-level supplemental logging for the
-- Oracle database. This attribute enables PRIMARY KEY supplemental logging
-- on all tables selected for a migration task.
--
-- If you use this option, you still need to enable database-level
-- supplemental logging.
--
-- 'spatialDataOptionToGeoJsonFunctionName', 'oracleSettings_spatialDataOptionToGeoJsonFunctionName' - Use this attribute to convert @SDO_GEOMETRY@ to @GEOJSON@ format. By
-- default, DMS calls the @SDO2GEOJSON@ custom function if present and
-- accessible. Or you can create your own custom function that mimics the
-- operation of @SDOGEOJSON@ and set
-- @SpatialDataOptionToGeoJsonFunctionName@ to call it instead.
--
-- 'accessAlternateDirectly', 'oracleSettings_accessAlternateDirectly' - Set this attribute to @false@ in order to use the Binary Reader to
-- capture change data for an Amazon RDS for Oracle as the source. This
-- tells the DMS instance to not access redo logs through any specified
-- path prefix replacement using direct file access.
--
-- 'numberDatatypeScale', 'oracleSettings_numberDatatypeScale' - Specifies the number scale. You can select a scale up to 38, or you can
-- select FLOAT. By default, the NUMBER data type is converted to precision
-- 38, scale 10.
--
-- Example: @numberDataTypeScale=12@
--
-- 'directPathNoLog', 'oracleSettings_directPathNoLog' - When set to @true@, this attribute helps to increase the commit rate on
-- the Oracle target database by writing directly to tables and not writing
-- a trail to database logs.
--
-- 'asmUser', 'oracleSettings_asmUser' - For an Oracle source endpoint, your ASM user name. You can set this
-- value from the @asm_user@ value. You set @asm_user@ as part of the extra
-- connection attribute string to access an Oracle server with Binary
-- Reader that uses ASM. For more information, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration Configuration for change data capture (CDC) on an Oracle source database>.
--
-- 'allowSelectNestedTables', 'oracleSettings_allowSelectNestedTables' - Set this attribute to @true@ to enable replication of Oracle tables
-- containing columns that are nested tables or defined types.
--
-- 'enableHomogenousTablespace', 'oracleSettings_enableHomogenousTablespace' - Set this attribute to enable homogenous tablespace replication and
-- create existing tables or indexes under the same tablespace on the
-- target.
--
-- 'secretsManagerOracleAsmSecretId', 'oracleSettings_secretsManagerOracleAsmSecretId' - Required only if your Oracle endpoint uses Advanced Storage Manager
-- (ASM). The full ARN, partial ARN, or friendly name of the
-- @SecretsManagerOracleAsmSecret@ that contains the Oracle ASM connection
-- details for the Oracle endpoint.
--
-- 'useBFile', 'oracleSettings_useBFile' - Set this attribute to Y to capture change data using the Binary Reader
-- utility. Set @UseLogminerReader@ to N to set this attribute to Y. To use
-- Binary Reader with Amazon RDS for Oracle as the source, you set
-- additional attributes. For more information about using this setting
-- with Oracle Automatic Storage Management (ASM), see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC Using Oracle LogMiner or DMS Binary Reader for CDC>.
--
-- 'useLogminerReader', 'oracleSettings_useLogminerReader' - Set this attribute to Y to capture change data using the Oracle LogMiner
-- utility (the default). Set this attribute to N if you want to access the
-- redo logs as a binary file. When you set @UseLogminerReader@ to N, also
-- set @UseBfile@ to Y. For more information on this setting and using
-- Oracle ASM, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC Using Oracle LogMiner or DMS Binary Reader for CDC>
-- in the /DMS User Guide/.
--
-- 'useAlternateFolderForOnline', 'oracleSettings_useAlternateFolderForOnline' - Set this attribute to @true@ in order to use the Binary Reader to
-- capture change data for an Amazon RDS for Oracle as the source. This
-- tells the DMS instance to use any specified prefix replacement to access
-- all online redo logs.
newOracleSettings ::
  OracleSettings
newOracleSettings =
  OracleSettings'
    { parallelAsmReadThreads =
        Prelude.Nothing,
      port = Prelude.Nothing,
      readTableSpaceName = Prelude.Nothing,
      asmServer = Prelude.Nothing,
      useDirectPathFullLoad = Prelude.Nothing,
      archivedLogDestId = Prelude.Nothing,
      secretsManagerOracleAsmAccessRoleArn =
        Prelude.Nothing,
      charLengthSemantics = Prelude.Nothing,
      trimSpaceInChar = Prelude.Nothing,
      readAheadBlocks = Prelude.Nothing,
      secretsManagerAccessRoleArn = Prelude.Nothing,
      standbyDelayTime = Prelude.Nothing,
      password = Prelude.Nothing,
      serverName = Prelude.Nothing,
      securityDbEncryptionName = Prelude.Nothing,
      extraArchivedLogDestIds = Prelude.Nothing,
      databaseName = Prelude.Nothing,
      username = Prelude.Nothing,
      oraclePathPrefix = Prelude.Nothing,
      retryInterval = Prelude.Nothing,
      asmPassword = Prelude.Nothing,
      additionalArchivedLogDestId = Prelude.Nothing,
      failTasksOnLobTruncation = Prelude.Nothing,
      archivedLogsOnly = Prelude.Nothing,
      usePathPrefix = Prelude.Nothing,
      replacePathPrefix = Prelude.Nothing,
      securityDbEncryption = Prelude.Nothing,
      directPathParallelLoad = Prelude.Nothing,
      secretsManagerSecretId = Prelude.Nothing,
      addSupplementalLogging = Prelude.Nothing,
      spatialDataOptionToGeoJsonFunctionName =
        Prelude.Nothing,
      accessAlternateDirectly = Prelude.Nothing,
      numberDatatypeScale = Prelude.Nothing,
      directPathNoLog = Prelude.Nothing,
      asmUser = Prelude.Nothing,
      allowSelectNestedTables = Prelude.Nothing,
      enableHomogenousTablespace = Prelude.Nothing,
      secretsManagerOracleAsmSecretId = Prelude.Nothing,
      useBFile = Prelude.Nothing,
      useLogminerReader = Prelude.Nothing,
      useAlternateFolderForOnline = Prelude.Nothing
    }

-- | Set this attribute to change the number of threads that DMS configures
-- to perform a change data capture (CDC) load using Oracle Automatic
-- Storage Management (ASM). You can specify an integer value between 2
-- (the default) and 8 (the maximum). Use this attribute together with the
-- @readAheadBlocks@ attribute.
oracleSettings_parallelAsmReadThreads :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Int)
oracleSettings_parallelAsmReadThreads = Lens.lens (\OracleSettings' {parallelAsmReadThreads} -> parallelAsmReadThreads) (\s@OracleSettings' {} a -> s {parallelAsmReadThreads = a} :: OracleSettings)

-- | Endpoint TCP port.
oracleSettings_port :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Int)
oracleSettings_port = Lens.lens (\OracleSettings' {port} -> port) (\s@OracleSettings' {} a -> s {port = a} :: OracleSettings)

-- | When set to @true@, this attribute supports tablespace replication.
oracleSettings_readTableSpaceName :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_readTableSpaceName = Lens.lens (\OracleSettings' {readTableSpaceName} -> readTableSpaceName) (\s@OracleSettings' {} a -> s {readTableSpaceName = a} :: OracleSettings)

-- | For an Oracle source endpoint, your ASM server address. You can set this
-- value from the @asm_server@ value. You set @asm_server@ as part of the
-- extra connection attribute string to access an Oracle server with Binary
-- Reader that uses ASM. For more information, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration Configuration for change data capture (CDC) on an Oracle source database>.
oracleSettings_asmServer :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_asmServer = Lens.lens (\OracleSettings' {asmServer} -> asmServer) (\s@OracleSettings' {} a -> s {asmServer = a} :: OracleSettings)

-- | Set this attribute to Y to have DMS use a direct path full load. Specify
-- this value to use the direct path protocol in the Oracle Call Interface
-- (OCI). By using this OCI protocol, you can bulk-load Oracle target
-- tables during a full load.
oracleSettings_useDirectPathFullLoad :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_useDirectPathFullLoad = Lens.lens (\OracleSettings' {useDirectPathFullLoad} -> useDirectPathFullLoad) (\s@OracleSettings' {} a -> s {useDirectPathFullLoad = a} :: OracleSettings)

-- | Specifies the ID of the destination for the archived redo logs. This
-- value should be the same as a number in the dest_id column of the
-- v$archived_log view. If you work with an additional redo log
-- destination, use the @AdditionalArchivedLogDestId@ option to specify the
-- additional destination ID. Doing this improves performance by ensuring
-- that the correct logs are accessed from the outset.
oracleSettings_archivedLogDestId :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Int)
oracleSettings_archivedLogDestId = Lens.lens (\OracleSettings' {archivedLogDestId} -> archivedLogDestId) (\s@OracleSettings' {} a -> s {archivedLogDestId = a} :: OracleSettings)

-- | Required only if your Oracle endpoint uses Advanced Storage Manager
-- (ASM). The full ARN of the IAM role that specifies DMS as the trusted
-- entity and grants the required permissions to access the
-- @SecretsManagerOracleAsmSecret@. This @SecretsManagerOracleAsmSecret@
-- has the secret value that allows access to the Oracle ASM of the
-- endpoint.
--
-- You can specify one of two sets of values for these permissions. You can
-- specify the values for this setting and
-- @SecretsManagerOracleAsmSecretId@. Or you can specify clear-text values
-- for @AsmUserName@, @AsmPassword@, and @AsmServerName@. You can\'t
-- specify both. For more information on creating this
-- @SecretsManagerOracleAsmSecret@ and the
-- @SecretsManagerOracleAsmAccessRoleArn@ and
-- @SecretsManagerOracleAsmSecretId@ required to access it, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager Using secrets to access Database Migration Service resources>
-- in the /Database Migration Service User Guide/.
oracleSettings_secretsManagerOracleAsmAccessRoleArn :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_secretsManagerOracleAsmAccessRoleArn = Lens.lens (\OracleSettings' {secretsManagerOracleAsmAccessRoleArn} -> secretsManagerOracleAsmAccessRoleArn) (\s@OracleSettings' {} a -> s {secretsManagerOracleAsmAccessRoleArn = a} :: OracleSettings)

-- | Specifies whether the length of a character column is in bytes or in
-- characters. To indicate that the character column length is in
-- characters, set this attribute to @CHAR@. Otherwise, the character
-- column length is in bytes.
--
-- Example: @charLengthSemantics=CHAR;@
oracleSettings_charLengthSemantics :: Lens.Lens' OracleSettings (Prelude.Maybe CharLengthSemantics)
oracleSettings_charLengthSemantics = Lens.lens (\OracleSettings' {charLengthSemantics} -> charLengthSemantics) (\s@OracleSettings' {} a -> s {charLengthSemantics = a} :: OracleSettings)

-- | Use the @TrimSpaceInChar@ source endpoint setting to trim data on CHAR
-- and NCHAR data types during migration. The default value is @true@.
oracleSettings_trimSpaceInChar :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_trimSpaceInChar = Lens.lens (\OracleSettings' {trimSpaceInChar} -> trimSpaceInChar) (\s@OracleSettings' {} a -> s {trimSpaceInChar = a} :: OracleSettings)

-- | Set this attribute to change the number of read-ahead blocks that DMS
-- configures to perform a change data capture (CDC) load using Oracle
-- Automatic Storage Management (ASM). You can specify an integer value
-- between 1000 (the default) and 200,000 (the maximum).
oracleSettings_readAheadBlocks :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Int)
oracleSettings_readAheadBlocks = Lens.lens (\OracleSettings' {readAheadBlocks} -> readAheadBlocks) (\s@OracleSettings' {} a -> s {readAheadBlocks = a} :: OracleSettings)

-- | The full Amazon Resource Name (ARN) of the IAM role that specifies DMS
-- as the trusted entity and grants the required permissions to access the
-- value in @SecretsManagerSecret@. The role must allow the @iam:PassRole@
-- action. @SecretsManagerSecret@ has the value of the Amazon Web Services
-- Secrets Manager secret that allows access to the Oracle endpoint.
--
-- You can specify one of two sets of values for these permissions. You can
-- specify the values for this setting and @SecretsManagerSecretId@. Or you
-- can specify clear-text values for @UserName@, @Password@, @ServerName@,
-- and @Port@. You can\'t specify both. For more information on creating
-- this @SecretsManagerSecret@ and the @SecretsManagerAccessRoleArn@ and
-- @SecretsManagerSecretId@ required to access it, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager Using secrets to access Database Migration Service resources>
-- in the /Database Migration Service User Guide/.
oracleSettings_secretsManagerAccessRoleArn :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_secretsManagerAccessRoleArn = Lens.lens (\OracleSettings' {secretsManagerAccessRoleArn} -> secretsManagerAccessRoleArn) (\s@OracleSettings' {} a -> s {secretsManagerAccessRoleArn = a} :: OracleSettings)

-- | Use this attribute to specify a time in minutes for the delay in standby
-- sync. If the source is an Oracle Active Data Guard standby database, use
-- this attribute to specify the time lag between primary and standby
-- databases.
--
-- In DMS, you can create an Oracle CDC task that uses an Active Data Guard
-- standby instance as a source for replicating ongoing changes. Doing this
-- eliminates the need to connect to an active database that might be in
-- production.
oracleSettings_standbyDelayTime :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Int)
oracleSettings_standbyDelayTime = Lens.lens (\OracleSettings' {standbyDelayTime} -> standbyDelayTime) (\s@OracleSettings' {} a -> s {standbyDelayTime = a} :: OracleSettings)

-- | Endpoint connection password.
oracleSettings_password :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_password = Lens.lens (\OracleSettings' {password} -> password) (\s@OracleSettings' {} a -> s {password = a} :: OracleSettings) Prelude.. Lens.mapping Core._Sensitive

-- | Fully qualified domain name of the endpoint.
oracleSettings_serverName :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_serverName = Lens.lens (\OracleSettings' {serverName} -> serverName) (\s@OracleSettings' {} a -> s {serverName = a} :: OracleSettings)

-- | For an Oracle source endpoint, the name of a key used for the
-- transparent data encryption (TDE) of the columns and tablespaces in an
-- Oracle source database that is encrypted using TDE. The key value is the
-- value of the @SecurityDbEncryption@ setting. For more information on
-- setting the key name value of @SecurityDbEncryptionName@, see the
-- information and example for setting the @securityDbEncryptionName@ extra
-- connection attribute in
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption Supported encryption methods for using Oracle as a source for DMS>
-- in the /Database Migration Service User Guide/.
oracleSettings_securityDbEncryptionName :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_securityDbEncryptionName = Lens.lens (\OracleSettings' {securityDbEncryptionName} -> securityDbEncryptionName) (\s@OracleSettings' {} a -> s {securityDbEncryptionName = a} :: OracleSettings)

-- | Specifies the IDs of one more destinations for one or more archived redo
-- logs. These IDs are the values of the @dest_id@ column in the
-- @v$archived_log@ view. Use this setting with the @archivedLogDestId@
-- extra connection attribute in a primary-to-single setup or a
-- primary-to-multiple-standby setup.
--
-- This setting is useful in a switchover when you use an Oracle Data Guard
-- database as a source. In this case, DMS needs information about what
-- destination to get archive redo logs from to read changes. DMS needs
-- this because after the switchover the previous primary is a standby
-- instance. For example, in a primary-to-single standby setup you might
-- apply the following settings.
--
-- @archivedLogDestId=1; ExtraArchivedLogDestIds=[2]@
--
-- In a primary-to-multiple-standby setup, you might apply the following
-- settings.
--
-- @archivedLogDestId=1; ExtraArchivedLogDestIds=[2,3,4]@
--
-- Although DMS supports the use of the Oracle @RESETLOGS@ option to open
-- the database, never use @RESETLOGS@ unless it\'s necessary. For more
-- information about @RESETLOGS@, see
-- <https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B RMAN Data Repair Concepts>
-- in the /Oracle Database Backup and Recovery User\'s Guide/.
oracleSettings_extraArchivedLogDestIds :: Lens.Lens' OracleSettings (Prelude.Maybe [Prelude.Int])
oracleSettings_extraArchivedLogDestIds = Lens.lens (\OracleSettings' {extraArchivedLogDestIds} -> extraArchivedLogDestIds) (\s@OracleSettings' {} a -> s {extraArchivedLogDestIds = a} :: OracleSettings) Prelude.. Lens.mapping Lens.coerced

-- | Database name for the endpoint.
oracleSettings_databaseName :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_databaseName = Lens.lens (\OracleSettings' {databaseName} -> databaseName) (\s@OracleSettings' {} a -> s {databaseName = a} :: OracleSettings)

-- | Endpoint connection user name.
oracleSettings_username :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_username = Lens.lens (\OracleSettings' {username} -> username) (\s@OracleSettings' {} a -> s {username = a} :: OracleSettings)

-- | Set this string attribute to the required value in order to use the
-- Binary Reader to capture change data for an Amazon RDS for Oracle as the
-- source. This value specifies the default Oracle root used to access the
-- redo logs.
oracleSettings_oraclePathPrefix :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_oraclePathPrefix = Lens.lens (\OracleSettings' {oraclePathPrefix} -> oraclePathPrefix) (\s@OracleSettings' {} a -> s {oraclePathPrefix = a} :: OracleSettings)

-- | Specifies the number of seconds that the system waits before resending a
-- query.
--
-- Example: @retryInterval=6;@
oracleSettings_retryInterval :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Int)
oracleSettings_retryInterval = Lens.lens (\OracleSettings' {retryInterval} -> retryInterval) (\s@OracleSettings' {} a -> s {retryInterval = a} :: OracleSettings)

-- | For an Oracle source endpoint, your Oracle Automatic Storage Management
-- (ASM) password. You can set this value from the @ asm_user_password @
-- value. You set this value as part of the comma-separated value that you
-- set to the @Password@ request parameter when you create the endpoint to
-- access transaction logs using Binary Reader. For more information, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration Configuration for change data capture (CDC) on an Oracle source database>.
oracleSettings_asmPassword :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_asmPassword = Lens.lens (\OracleSettings' {asmPassword} -> asmPassword) (\s@OracleSettings' {} a -> s {asmPassword = a} :: OracleSettings) Prelude.. Lens.mapping Core._Sensitive

-- | Set this attribute with @ArchivedLogDestId@ in a primary\/ standby
-- setup. This attribute is useful in the case of a switchover. In this
-- case, DMS needs to know which destination to get archive redo logs from
-- to read changes. This need arises because the previous primary instance
-- is now a standby instance after switchover.
--
-- Although DMS supports the use of the Oracle @RESETLOGS@ option to open
-- the database, never use @RESETLOGS@ unless necessary. For additional
-- information about @RESETLOGS@, see
-- <https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B RMAN Data Repair Concepts>
-- in the /Oracle Database Backup and Recovery User\'s Guide/.
oracleSettings_additionalArchivedLogDestId :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Int)
oracleSettings_additionalArchivedLogDestId = Lens.lens (\OracleSettings' {additionalArchivedLogDestId} -> additionalArchivedLogDestId) (\s@OracleSettings' {} a -> s {additionalArchivedLogDestId = a} :: OracleSettings)

-- | When set to @true@, this attribute causes a task to fail if the actual
-- size of an LOB column is greater than the specified @LobMaxSize@.
--
-- If a task is set to limited LOB mode and this option is set to @true@,
-- the task fails instead of truncating the LOB data.
oracleSettings_failTasksOnLobTruncation :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_failTasksOnLobTruncation = Lens.lens (\OracleSettings' {failTasksOnLobTruncation} -> failTasksOnLobTruncation) (\s@OracleSettings' {} a -> s {failTasksOnLobTruncation = a} :: OracleSettings)

-- | When this field is set to @Y@, DMS only accesses the archived redo logs.
-- If the archived redo logs are stored on Oracle ASM only, the DMS user
-- account needs to be granted ASM privileges.
oracleSettings_archivedLogsOnly :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_archivedLogsOnly = Lens.lens (\OracleSettings' {archivedLogsOnly} -> archivedLogsOnly) (\s@OracleSettings' {} a -> s {archivedLogsOnly = a} :: OracleSettings)

-- | Set this string attribute to the required value in order to use the
-- Binary Reader to capture change data for an Amazon RDS for Oracle as the
-- source. This value specifies the path prefix used to replace the default
-- Oracle root to access the redo logs.
oracleSettings_usePathPrefix :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_usePathPrefix = Lens.lens (\OracleSettings' {usePathPrefix} -> usePathPrefix) (\s@OracleSettings' {} a -> s {usePathPrefix = a} :: OracleSettings)

-- | Set this attribute to true in order to use the Binary Reader to capture
-- change data for an Amazon RDS for Oracle as the source. This setting
-- tells DMS instance to replace the default Oracle root with the specified
-- @usePathPrefix@ setting to access the redo logs.
oracleSettings_replacePathPrefix :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_replacePathPrefix = Lens.lens (\OracleSettings' {replacePathPrefix} -> replacePathPrefix) (\s@OracleSettings' {} a -> s {replacePathPrefix = a} :: OracleSettings)

-- | For an Oracle source endpoint, the transparent data encryption (TDE)
-- password required by AWM DMS to access Oracle redo logs encrypted by TDE
-- using Binary Reader. It is also the @ TDE_Password @ part of the
-- comma-separated value you set to the @Password@ request parameter when
-- you create the endpoint. The @SecurityDbEncryptian@ setting is related
-- to this @SecurityDbEncryptionName@ setting. For more information, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption Supported encryption methods for using Oracle as a source for DMS>
-- in the /Database Migration Service User Guide/.
oracleSettings_securityDbEncryption :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_securityDbEncryption = Lens.lens (\OracleSettings' {securityDbEncryption} -> securityDbEncryption) (\s@OracleSettings' {} a -> s {securityDbEncryption = a} :: OracleSettings) Prelude.. Lens.mapping Core._Sensitive

-- | When set to @true@, this attribute specifies a parallel load when
-- @useDirectPathFullLoad@ is set to @Y@. This attribute also only applies
-- when you use the DMS parallel load feature. Note that the target table
-- cannot have any constraints or indexes.
oracleSettings_directPathParallelLoad :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_directPathParallelLoad = Lens.lens (\OracleSettings' {directPathParallelLoad} -> directPathParallelLoad) (\s@OracleSettings' {} a -> s {directPathParallelLoad = a} :: OracleSettings)

-- | The full ARN, partial ARN, or friendly name of the
-- @SecretsManagerSecret@ that contains the Oracle endpoint connection
-- details.
oracleSettings_secretsManagerSecretId :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_secretsManagerSecretId = Lens.lens (\OracleSettings' {secretsManagerSecretId} -> secretsManagerSecretId) (\s@OracleSettings' {} a -> s {secretsManagerSecretId = a} :: OracleSettings)

-- | Set this attribute to set up table-level supplemental logging for the
-- Oracle database. This attribute enables PRIMARY KEY supplemental logging
-- on all tables selected for a migration task.
--
-- If you use this option, you still need to enable database-level
-- supplemental logging.
oracleSettings_addSupplementalLogging :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_addSupplementalLogging = Lens.lens (\OracleSettings' {addSupplementalLogging} -> addSupplementalLogging) (\s@OracleSettings' {} a -> s {addSupplementalLogging = a} :: OracleSettings)

-- | Use this attribute to convert @SDO_GEOMETRY@ to @GEOJSON@ format. By
-- default, DMS calls the @SDO2GEOJSON@ custom function if present and
-- accessible. Or you can create your own custom function that mimics the
-- operation of @SDOGEOJSON@ and set
-- @SpatialDataOptionToGeoJsonFunctionName@ to call it instead.
oracleSettings_spatialDataOptionToGeoJsonFunctionName :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_spatialDataOptionToGeoJsonFunctionName = Lens.lens (\OracleSettings' {spatialDataOptionToGeoJsonFunctionName} -> spatialDataOptionToGeoJsonFunctionName) (\s@OracleSettings' {} a -> s {spatialDataOptionToGeoJsonFunctionName = a} :: OracleSettings)

-- | Set this attribute to @false@ in order to use the Binary Reader to
-- capture change data for an Amazon RDS for Oracle as the source. This
-- tells the DMS instance to not access redo logs through any specified
-- path prefix replacement using direct file access.
oracleSettings_accessAlternateDirectly :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_accessAlternateDirectly = Lens.lens (\OracleSettings' {accessAlternateDirectly} -> accessAlternateDirectly) (\s@OracleSettings' {} a -> s {accessAlternateDirectly = a} :: OracleSettings)

-- | Specifies the number scale. You can select a scale up to 38, or you can
-- select FLOAT. By default, the NUMBER data type is converted to precision
-- 38, scale 10.
--
-- Example: @numberDataTypeScale=12@
oracleSettings_numberDatatypeScale :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Int)
oracleSettings_numberDatatypeScale = Lens.lens (\OracleSettings' {numberDatatypeScale} -> numberDatatypeScale) (\s@OracleSettings' {} a -> s {numberDatatypeScale = a} :: OracleSettings)

-- | When set to @true@, this attribute helps to increase the commit rate on
-- the Oracle target database by writing directly to tables and not writing
-- a trail to database logs.
oracleSettings_directPathNoLog :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_directPathNoLog = Lens.lens (\OracleSettings' {directPathNoLog} -> directPathNoLog) (\s@OracleSettings' {} a -> s {directPathNoLog = a} :: OracleSettings)

-- | For an Oracle source endpoint, your ASM user name. You can set this
-- value from the @asm_user@ value. You set @asm_user@ as part of the extra
-- connection attribute string to access an Oracle server with Binary
-- Reader that uses ASM. For more information, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration Configuration for change data capture (CDC) on an Oracle source database>.
oracleSettings_asmUser :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_asmUser = Lens.lens (\OracleSettings' {asmUser} -> asmUser) (\s@OracleSettings' {} a -> s {asmUser = a} :: OracleSettings)

-- | Set this attribute to @true@ to enable replication of Oracle tables
-- containing columns that are nested tables or defined types.
oracleSettings_allowSelectNestedTables :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_allowSelectNestedTables = Lens.lens (\OracleSettings' {allowSelectNestedTables} -> allowSelectNestedTables) (\s@OracleSettings' {} a -> s {allowSelectNestedTables = a} :: OracleSettings)

-- | Set this attribute to enable homogenous tablespace replication and
-- create existing tables or indexes under the same tablespace on the
-- target.
oracleSettings_enableHomogenousTablespace :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_enableHomogenousTablespace = Lens.lens (\OracleSettings' {enableHomogenousTablespace} -> enableHomogenousTablespace) (\s@OracleSettings' {} a -> s {enableHomogenousTablespace = a} :: OracleSettings)

-- | Required only if your Oracle endpoint uses Advanced Storage Manager
-- (ASM). The full ARN, partial ARN, or friendly name of the
-- @SecretsManagerOracleAsmSecret@ that contains the Oracle ASM connection
-- details for the Oracle endpoint.
oracleSettings_secretsManagerOracleAsmSecretId :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Text)
oracleSettings_secretsManagerOracleAsmSecretId = Lens.lens (\OracleSettings' {secretsManagerOracleAsmSecretId} -> secretsManagerOracleAsmSecretId) (\s@OracleSettings' {} a -> s {secretsManagerOracleAsmSecretId = a} :: OracleSettings)

-- | Set this attribute to Y to capture change data using the Binary Reader
-- utility. Set @UseLogminerReader@ to N to set this attribute to Y. To use
-- Binary Reader with Amazon RDS for Oracle as the source, you set
-- additional attributes. For more information about using this setting
-- with Oracle Automatic Storage Management (ASM), see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC Using Oracle LogMiner or DMS Binary Reader for CDC>.
oracleSettings_useBFile :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_useBFile = Lens.lens (\OracleSettings' {useBFile} -> useBFile) (\s@OracleSettings' {} a -> s {useBFile = a} :: OracleSettings)

-- | Set this attribute to Y to capture change data using the Oracle LogMiner
-- utility (the default). Set this attribute to N if you want to access the
-- redo logs as a binary file. When you set @UseLogminerReader@ to N, also
-- set @UseBfile@ to Y. For more information on this setting and using
-- Oracle ASM, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC Using Oracle LogMiner or DMS Binary Reader for CDC>
-- in the /DMS User Guide/.
oracleSettings_useLogminerReader :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_useLogminerReader = Lens.lens (\OracleSettings' {useLogminerReader} -> useLogminerReader) (\s@OracleSettings' {} a -> s {useLogminerReader = a} :: OracleSettings)

-- | Set this attribute to @true@ in order to use the Binary Reader to
-- capture change data for an Amazon RDS for Oracle as the source. This
-- tells the DMS instance to use any specified prefix replacement to access
-- all online redo logs.
oracleSettings_useAlternateFolderForOnline :: Lens.Lens' OracleSettings (Prelude.Maybe Prelude.Bool)
oracleSettings_useAlternateFolderForOnline = Lens.lens (\OracleSettings' {useAlternateFolderForOnline} -> useAlternateFolderForOnline) (\s@OracleSettings' {} a -> s {useAlternateFolderForOnline = a} :: OracleSettings)

instance Core.FromJSON OracleSettings where
  parseJSON =
    Core.withObject
      "OracleSettings"
      ( \x ->
          OracleSettings'
            Prelude.<$> (x Core..:? "ParallelAsmReadThreads")
            Prelude.<*> (x Core..:? "Port")
            Prelude.<*> (x Core..:? "ReadTableSpaceName")
            Prelude.<*> (x Core..:? "AsmServer")
            Prelude.<*> (x Core..:? "UseDirectPathFullLoad")
            Prelude.<*> (x Core..:? "ArchivedLogDestId")
            Prelude.<*> (x Core..:? "SecretsManagerOracleAsmAccessRoleArn")
            Prelude.<*> (x Core..:? "CharLengthSemantics")
            Prelude.<*> (x Core..:? "TrimSpaceInChar")
            Prelude.<*> (x Core..:? "ReadAheadBlocks")
            Prelude.<*> (x Core..:? "SecretsManagerAccessRoleArn")
            Prelude.<*> (x Core..:? "StandbyDelayTime")
            Prelude.<*> (x Core..:? "Password")
            Prelude.<*> (x Core..:? "ServerName")
            Prelude.<*> (x Core..:? "SecurityDbEncryptionName")
            Prelude.<*> ( x Core..:? "ExtraArchivedLogDestIds"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "DatabaseName")
            Prelude.<*> (x Core..:? "Username")
            Prelude.<*> (x Core..:? "OraclePathPrefix")
            Prelude.<*> (x Core..:? "RetryInterval")
            Prelude.<*> (x Core..:? "AsmPassword")
            Prelude.<*> (x Core..:? "AdditionalArchivedLogDestId")
            Prelude.<*> (x Core..:? "FailTasksOnLobTruncation")
            Prelude.<*> (x Core..:? "ArchivedLogsOnly")
            Prelude.<*> (x Core..:? "UsePathPrefix")
            Prelude.<*> (x Core..:? "ReplacePathPrefix")
            Prelude.<*> (x Core..:? "SecurityDbEncryption")
            Prelude.<*> (x Core..:? "DirectPathParallelLoad")
            Prelude.<*> (x Core..:? "SecretsManagerSecretId")
            Prelude.<*> (x Core..:? "AddSupplementalLogging")
            Prelude.<*> (x Core..:? "SpatialDataOptionToGeoJsonFunctionName")
            Prelude.<*> (x Core..:? "AccessAlternateDirectly")
            Prelude.<*> (x Core..:? "NumberDatatypeScale")
            Prelude.<*> (x Core..:? "DirectPathNoLog")
            Prelude.<*> (x Core..:? "AsmUser")
            Prelude.<*> (x Core..:? "AllowSelectNestedTables")
            Prelude.<*> (x Core..:? "EnableHomogenousTablespace")
            Prelude.<*> (x Core..:? "SecretsManagerOracleAsmSecretId")
            Prelude.<*> (x Core..:? "UseBFile")
            Prelude.<*> (x Core..:? "UseLogminerReader")
            Prelude.<*> (x Core..:? "UseAlternateFolderForOnline")
      )

instance Prelude.Hashable OracleSettings where
  hashWithSalt _salt OracleSettings' {..} =
    _salt `Prelude.hashWithSalt` parallelAsmReadThreads
      `Prelude.hashWithSalt` port
      `Prelude.hashWithSalt` readTableSpaceName
      `Prelude.hashWithSalt` asmServer
      `Prelude.hashWithSalt` useDirectPathFullLoad
      `Prelude.hashWithSalt` archivedLogDestId
      `Prelude.hashWithSalt` secretsManagerOracleAsmAccessRoleArn
      `Prelude.hashWithSalt` charLengthSemantics
      `Prelude.hashWithSalt` trimSpaceInChar
      `Prelude.hashWithSalt` readAheadBlocks
      `Prelude.hashWithSalt` secretsManagerAccessRoleArn
      `Prelude.hashWithSalt` standbyDelayTime
      `Prelude.hashWithSalt` password
      `Prelude.hashWithSalt` serverName
      `Prelude.hashWithSalt` securityDbEncryptionName
      `Prelude.hashWithSalt` extraArchivedLogDestIds
      `Prelude.hashWithSalt` databaseName
      `Prelude.hashWithSalt` username
      `Prelude.hashWithSalt` oraclePathPrefix
      `Prelude.hashWithSalt` retryInterval
      `Prelude.hashWithSalt` asmPassword
      `Prelude.hashWithSalt` additionalArchivedLogDestId
      `Prelude.hashWithSalt` failTasksOnLobTruncation
      `Prelude.hashWithSalt` archivedLogsOnly
      `Prelude.hashWithSalt` usePathPrefix
      `Prelude.hashWithSalt` replacePathPrefix
      `Prelude.hashWithSalt` securityDbEncryption
      `Prelude.hashWithSalt` directPathParallelLoad
      `Prelude.hashWithSalt` secretsManagerSecretId
      `Prelude.hashWithSalt` addSupplementalLogging
      `Prelude.hashWithSalt` spatialDataOptionToGeoJsonFunctionName
      `Prelude.hashWithSalt` accessAlternateDirectly
      `Prelude.hashWithSalt` numberDatatypeScale
      `Prelude.hashWithSalt` directPathNoLog
      `Prelude.hashWithSalt` asmUser
      `Prelude.hashWithSalt` allowSelectNestedTables
      `Prelude.hashWithSalt` enableHomogenousTablespace
      `Prelude.hashWithSalt` secretsManagerOracleAsmSecretId
      `Prelude.hashWithSalt` useBFile
      `Prelude.hashWithSalt` useLogminerReader
      `Prelude.hashWithSalt` useAlternateFolderForOnline

instance Prelude.NFData OracleSettings where
  rnf OracleSettings' {..} =
    Prelude.rnf parallelAsmReadThreads
      `Prelude.seq` Prelude.rnf port
      `Prelude.seq` Prelude.rnf readTableSpaceName
      `Prelude.seq` Prelude.rnf asmServer
      `Prelude.seq` Prelude.rnf useDirectPathFullLoad
      `Prelude.seq` Prelude.rnf archivedLogDestId
      `Prelude.seq` Prelude.rnf secretsManagerOracleAsmAccessRoleArn
      `Prelude.seq` Prelude.rnf charLengthSemantics
      `Prelude.seq` Prelude.rnf trimSpaceInChar
      `Prelude.seq` Prelude.rnf readAheadBlocks
      `Prelude.seq` Prelude.rnf secretsManagerAccessRoleArn
      `Prelude.seq` Prelude.rnf standbyDelayTime
      `Prelude.seq` Prelude.rnf password
      `Prelude.seq` Prelude.rnf serverName
      `Prelude.seq` Prelude.rnf securityDbEncryptionName
      `Prelude.seq` Prelude.rnf extraArchivedLogDestIds
      `Prelude.seq` Prelude.rnf databaseName
      `Prelude.seq` Prelude.rnf username
      `Prelude.seq` Prelude.rnf oraclePathPrefix
      `Prelude.seq` Prelude.rnf retryInterval
      `Prelude.seq` Prelude.rnf asmPassword
      `Prelude.seq` Prelude.rnf
        additionalArchivedLogDestId
      `Prelude.seq` Prelude.rnf
        failTasksOnLobTruncation
      `Prelude.seq` Prelude.rnf
        archivedLogsOnly
      `Prelude.seq` Prelude.rnf
        usePathPrefix
      `Prelude.seq` Prelude.rnf
        replacePathPrefix
      `Prelude.seq` Prelude.rnf
        securityDbEncryption
      `Prelude.seq` Prelude.rnf
        directPathParallelLoad
      `Prelude.seq` Prelude.rnf
        secretsManagerSecretId
      `Prelude.seq` Prelude.rnf
        addSupplementalLogging
      `Prelude.seq` Prelude.rnf
        spatialDataOptionToGeoJsonFunctionName
      `Prelude.seq` Prelude.rnf
        accessAlternateDirectly
      `Prelude.seq` Prelude.rnf
        numberDatatypeScale
      `Prelude.seq` Prelude.rnf
        directPathNoLog
      `Prelude.seq` Prelude.rnf
        asmUser
      `Prelude.seq` Prelude.rnf
        allowSelectNestedTables
      `Prelude.seq` Prelude.rnf
        enableHomogenousTablespace
      `Prelude.seq` Prelude.rnf
        secretsManagerOracleAsmSecretId
      `Prelude.seq` Prelude.rnf
        useBFile
      `Prelude.seq` Prelude.rnf
        useLogminerReader
      `Prelude.seq` Prelude.rnf
        useAlternateFolderForOnline

instance Core.ToJSON OracleSettings where
  toJSON OracleSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ParallelAsmReadThreads" Core..=)
              Prelude.<$> parallelAsmReadThreads,
            ("Port" Core..=) Prelude.<$> port,
            ("ReadTableSpaceName" Core..=)
              Prelude.<$> readTableSpaceName,
            ("AsmServer" Core..=) Prelude.<$> asmServer,
            ("UseDirectPathFullLoad" Core..=)
              Prelude.<$> useDirectPathFullLoad,
            ("ArchivedLogDestId" Core..=)
              Prelude.<$> archivedLogDestId,
            ("SecretsManagerOracleAsmAccessRoleArn" Core..=)
              Prelude.<$> secretsManagerOracleAsmAccessRoleArn,
            ("CharLengthSemantics" Core..=)
              Prelude.<$> charLengthSemantics,
            ("TrimSpaceInChar" Core..=)
              Prelude.<$> trimSpaceInChar,
            ("ReadAheadBlocks" Core..=)
              Prelude.<$> readAheadBlocks,
            ("SecretsManagerAccessRoleArn" Core..=)
              Prelude.<$> secretsManagerAccessRoleArn,
            ("StandbyDelayTime" Core..=)
              Prelude.<$> standbyDelayTime,
            ("Password" Core..=) Prelude.<$> password,
            ("ServerName" Core..=) Prelude.<$> serverName,
            ("SecurityDbEncryptionName" Core..=)
              Prelude.<$> securityDbEncryptionName,
            ("ExtraArchivedLogDestIds" Core..=)
              Prelude.<$> extraArchivedLogDestIds,
            ("DatabaseName" Core..=) Prelude.<$> databaseName,
            ("Username" Core..=) Prelude.<$> username,
            ("OraclePathPrefix" Core..=)
              Prelude.<$> oraclePathPrefix,
            ("RetryInterval" Core..=) Prelude.<$> retryInterval,
            ("AsmPassword" Core..=) Prelude.<$> asmPassword,
            ("AdditionalArchivedLogDestId" Core..=)
              Prelude.<$> additionalArchivedLogDestId,
            ("FailTasksOnLobTruncation" Core..=)
              Prelude.<$> failTasksOnLobTruncation,
            ("ArchivedLogsOnly" Core..=)
              Prelude.<$> archivedLogsOnly,
            ("UsePathPrefix" Core..=) Prelude.<$> usePathPrefix,
            ("ReplacePathPrefix" Core..=)
              Prelude.<$> replacePathPrefix,
            ("SecurityDbEncryption" Core..=)
              Prelude.<$> securityDbEncryption,
            ("DirectPathParallelLoad" Core..=)
              Prelude.<$> directPathParallelLoad,
            ("SecretsManagerSecretId" Core..=)
              Prelude.<$> secretsManagerSecretId,
            ("AddSupplementalLogging" Core..=)
              Prelude.<$> addSupplementalLogging,
            ("SpatialDataOptionToGeoJsonFunctionName" Core..=)
              Prelude.<$> spatialDataOptionToGeoJsonFunctionName,
            ("AccessAlternateDirectly" Core..=)
              Prelude.<$> accessAlternateDirectly,
            ("NumberDatatypeScale" Core..=)
              Prelude.<$> numberDatatypeScale,
            ("DirectPathNoLog" Core..=)
              Prelude.<$> directPathNoLog,
            ("AsmUser" Core..=) Prelude.<$> asmUser,
            ("AllowSelectNestedTables" Core..=)
              Prelude.<$> allowSelectNestedTables,
            ("EnableHomogenousTablespace" Core..=)
              Prelude.<$> enableHomogenousTablespace,
            ("SecretsManagerOracleAsmSecretId" Core..=)
              Prelude.<$> secretsManagerOracleAsmSecretId,
            ("UseBFile" Core..=) Prelude.<$> useBFile,
            ("UseLogminerReader" Core..=)
              Prelude.<$> useLogminerReader,
            ("UseAlternateFolderForOnline" Core..=)
              Prelude.<$> useAlternateFolderForOnline
          ]
      )
