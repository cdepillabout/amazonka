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
-- Module      : Amazonka.DMS.DescribeFleetAdvisorSchemas
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of schemas detected by Fleet Advisor Collectors in your
-- account.
module Amazonka.DMS.DescribeFleetAdvisorSchemas
  ( -- * Creating a Request
    DescribeFleetAdvisorSchemas (..),
    newDescribeFleetAdvisorSchemas,

    -- * Request Lenses
    describeFleetAdvisorSchemas_nextToken,
    describeFleetAdvisorSchemas_filters,
    describeFleetAdvisorSchemas_maxRecords,

    -- * Destructuring the Response
    DescribeFleetAdvisorSchemasResponse (..),
    newDescribeFleetAdvisorSchemasResponse,

    -- * Response Lenses
    describeFleetAdvisorSchemasResponse_nextToken,
    describeFleetAdvisorSchemasResponse_fleetAdvisorSchemas,
    describeFleetAdvisorSchemasResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DMS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeFleetAdvisorSchemas' smart constructor.
data DescribeFleetAdvisorSchemas = DescribeFleetAdvisorSchemas'
  { -- | If @NextToken@ is returned by a previous response, there are more
    -- results available. The value of @NextToken@ is a unique pagination token
    -- for each page. Make the call again using the returned token to retrieve
    -- the next page. Keep all other arguments unchanged.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | If you specify any of the following filters, the output includes
    -- information for only those schemas that meet the filter criteria:
    --
    -- -   @complexity@ – The schema\'s complexity, for example @Simple@.
    --
    -- -   @database-id@ – The ID of the schema\'s database.
    --
    -- -   @database-ip-address@ – The IP address of the schema\'s database.
    --
    -- -   @database-name@ – The name of the schema\'s database.
    --
    -- -   @database-engine@ – The name of the schema database\'s engine.
    --
    -- -   @original-schema-name@ – The name of the schema\'s database\'s main
    --     schema.
    --
    -- -   @schema-id@ – The ID of the schema, for example @15@.
    --
    -- -   @schema-name@ – The name of the schema.
    --
    -- -   @server-ip-address@ – The IP address of the schema database\'s
    --     server.
    --
    -- An example is:
    -- @describe-fleet-advisor-schemas --filter Name=\"schema-id\",Values=\"50\"@
    filters :: Prelude.Maybe [Filter],
    -- | Sets the maximum number of records returned in the response.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFleetAdvisorSchemas' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFleetAdvisorSchemas_nextToken' - If @NextToken@ is returned by a previous response, there are more
-- results available. The value of @NextToken@ is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
--
-- 'filters', 'describeFleetAdvisorSchemas_filters' - If you specify any of the following filters, the output includes
-- information for only those schemas that meet the filter criteria:
--
-- -   @complexity@ – The schema\'s complexity, for example @Simple@.
--
-- -   @database-id@ – The ID of the schema\'s database.
--
-- -   @database-ip-address@ – The IP address of the schema\'s database.
--
-- -   @database-name@ – The name of the schema\'s database.
--
-- -   @database-engine@ – The name of the schema database\'s engine.
--
-- -   @original-schema-name@ – The name of the schema\'s database\'s main
--     schema.
--
-- -   @schema-id@ – The ID of the schema, for example @15@.
--
-- -   @schema-name@ – The name of the schema.
--
-- -   @server-ip-address@ – The IP address of the schema database\'s
--     server.
--
-- An example is:
-- @describe-fleet-advisor-schemas --filter Name=\"schema-id\",Values=\"50\"@
--
-- 'maxRecords', 'describeFleetAdvisorSchemas_maxRecords' - Sets the maximum number of records returned in the response.
newDescribeFleetAdvisorSchemas ::
  DescribeFleetAdvisorSchemas
newDescribeFleetAdvisorSchemas =
  DescribeFleetAdvisorSchemas'
    { nextToken =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | If @NextToken@ is returned by a previous response, there are more
-- results available. The value of @NextToken@ is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
describeFleetAdvisorSchemas_nextToken :: Lens.Lens' DescribeFleetAdvisorSchemas (Prelude.Maybe Prelude.Text)
describeFleetAdvisorSchemas_nextToken = Lens.lens (\DescribeFleetAdvisorSchemas' {nextToken} -> nextToken) (\s@DescribeFleetAdvisorSchemas' {} a -> s {nextToken = a} :: DescribeFleetAdvisorSchemas)

-- | If you specify any of the following filters, the output includes
-- information for only those schemas that meet the filter criteria:
--
-- -   @complexity@ – The schema\'s complexity, for example @Simple@.
--
-- -   @database-id@ – The ID of the schema\'s database.
--
-- -   @database-ip-address@ – The IP address of the schema\'s database.
--
-- -   @database-name@ – The name of the schema\'s database.
--
-- -   @database-engine@ – The name of the schema database\'s engine.
--
-- -   @original-schema-name@ – The name of the schema\'s database\'s main
--     schema.
--
-- -   @schema-id@ – The ID of the schema, for example @15@.
--
-- -   @schema-name@ – The name of the schema.
--
-- -   @server-ip-address@ – The IP address of the schema database\'s
--     server.
--
-- An example is:
-- @describe-fleet-advisor-schemas --filter Name=\"schema-id\",Values=\"50\"@
describeFleetAdvisorSchemas_filters :: Lens.Lens' DescribeFleetAdvisorSchemas (Prelude.Maybe [Filter])
describeFleetAdvisorSchemas_filters = Lens.lens (\DescribeFleetAdvisorSchemas' {filters} -> filters) (\s@DescribeFleetAdvisorSchemas' {} a -> s {filters = a} :: DescribeFleetAdvisorSchemas) Prelude.. Lens.mapping Lens.coerced

-- | Sets the maximum number of records returned in the response.
describeFleetAdvisorSchemas_maxRecords :: Lens.Lens' DescribeFleetAdvisorSchemas (Prelude.Maybe Prelude.Int)
describeFleetAdvisorSchemas_maxRecords = Lens.lens (\DescribeFleetAdvisorSchemas' {maxRecords} -> maxRecords) (\s@DescribeFleetAdvisorSchemas' {} a -> s {maxRecords = a} :: DescribeFleetAdvisorSchemas)

instance Core.AWSRequest DescribeFleetAdvisorSchemas where
  type
    AWSResponse DescribeFleetAdvisorSchemas =
      DescribeFleetAdvisorSchemasResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFleetAdvisorSchemasResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "FleetAdvisorSchemas"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeFleetAdvisorSchemas where
  hashWithSalt _salt DescribeFleetAdvisorSchemas' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxRecords

instance Prelude.NFData DescribeFleetAdvisorSchemas where
  rnf DescribeFleetAdvisorSchemas' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxRecords

instance Core.ToHeaders DescribeFleetAdvisorSchemas where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonDMSv20160101.DescribeFleetAdvisorSchemas" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeFleetAdvisorSchemas where
  toJSON DescribeFleetAdvisorSchemas' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxRecords" Core..=) Prelude.<$> maxRecords
          ]
      )

instance Core.ToPath DescribeFleetAdvisorSchemas where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeFleetAdvisorSchemas where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeFleetAdvisorSchemasResponse' smart constructor.
data DescribeFleetAdvisorSchemasResponse = DescribeFleetAdvisorSchemasResponse'
  { -- | If @NextToken@ is returned, there are more results available. The value
    -- of @NextToken@ is a unique pagination token for each page. Make the call
    -- again using the returned token to retrieve the next page. Keep all other
    -- arguments unchanged.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A collection of @SchemaResponse@ objects.
    fleetAdvisorSchemas :: Prelude.Maybe [SchemaResponse],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFleetAdvisorSchemasResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFleetAdvisorSchemasResponse_nextToken' - If @NextToken@ is returned, there are more results available. The value
-- of @NextToken@ is a unique pagination token for each page. Make the call
-- again using the returned token to retrieve the next page. Keep all other
-- arguments unchanged.
--
-- 'fleetAdvisorSchemas', 'describeFleetAdvisorSchemasResponse_fleetAdvisorSchemas' - A collection of @SchemaResponse@ objects.
--
-- 'httpStatus', 'describeFleetAdvisorSchemasResponse_httpStatus' - The response's http status code.
newDescribeFleetAdvisorSchemasResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeFleetAdvisorSchemasResponse
newDescribeFleetAdvisorSchemasResponse pHttpStatus_ =
  DescribeFleetAdvisorSchemasResponse'
    { nextToken =
        Prelude.Nothing,
      fleetAdvisorSchemas = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If @NextToken@ is returned, there are more results available. The value
-- of @NextToken@ is a unique pagination token for each page. Make the call
-- again using the returned token to retrieve the next page. Keep all other
-- arguments unchanged.
describeFleetAdvisorSchemasResponse_nextToken :: Lens.Lens' DescribeFleetAdvisorSchemasResponse (Prelude.Maybe Prelude.Text)
describeFleetAdvisorSchemasResponse_nextToken = Lens.lens (\DescribeFleetAdvisorSchemasResponse' {nextToken} -> nextToken) (\s@DescribeFleetAdvisorSchemasResponse' {} a -> s {nextToken = a} :: DescribeFleetAdvisorSchemasResponse)

-- | A collection of @SchemaResponse@ objects.
describeFleetAdvisorSchemasResponse_fleetAdvisorSchemas :: Lens.Lens' DescribeFleetAdvisorSchemasResponse (Prelude.Maybe [SchemaResponse])
describeFleetAdvisorSchemasResponse_fleetAdvisorSchemas = Lens.lens (\DescribeFleetAdvisorSchemasResponse' {fleetAdvisorSchemas} -> fleetAdvisorSchemas) (\s@DescribeFleetAdvisorSchemasResponse' {} a -> s {fleetAdvisorSchemas = a} :: DescribeFleetAdvisorSchemasResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeFleetAdvisorSchemasResponse_httpStatus :: Lens.Lens' DescribeFleetAdvisorSchemasResponse Prelude.Int
describeFleetAdvisorSchemasResponse_httpStatus = Lens.lens (\DescribeFleetAdvisorSchemasResponse' {httpStatus} -> httpStatus) (\s@DescribeFleetAdvisorSchemasResponse' {} a -> s {httpStatus = a} :: DescribeFleetAdvisorSchemasResponse)

instance
  Prelude.NFData
    DescribeFleetAdvisorSchemasResponse
  where
  rnf DescribeFleetAdvisorSchemasResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf fleetAdvisorSchemas
      `Prelude.seq` Prelude.rnf httpStatus
