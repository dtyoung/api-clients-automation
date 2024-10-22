// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
import { describe, expect, test } from 'vitest';

import { union } from '../helpers.js';

import { algoliasearch } from 'algoliasearch';
import * as dotenv from 'dotenv';

dotenv.config({ path: '../../.env' });

if (!process.env.ALGOLIA_APPLICATION_ID) {
  throw new Error('please provide an `ALGOLIA_APPLICATION_ID` env var for e2e tests');
}

if (!process.env.ALGOLIA_ADMIN_KEY) {
  throw new Error('please provide an `ALGOLIA_ADMIN_KEY` env var for e2e tests');
}

const client = algoliasearch(process.env.ALGOLIA_APPLICATION_ID, process.env.ALGOLIA_ADMIN_KEY).initQuerySuggestions({
  region: 'us',
});

describe('getConfig', () => {
  test('Retrieve QS config e2e', async () => {
    const resp = await client.getConfig({ indexName: 'cts_e2e_browse_query_suggestions' });

    const expectedBody = {
      appID: 'T8JK9S7I7X',
      allowSpecialCharacters: true,
      enablePersonalization: false,
      exclude: ['^cocaines$'],
      indexName: 'cts_e2e_browse_query_suggestions',
      languages: [],
      sourceIndices: [
        {
          facets: [{ amount: 1, attribute: 'title' }],
          generate: [['year']],
          indexName: 'cts_e2e_browse',
          minHits: 5,
          minLetters: 4,
          replicas: false,
        },
      ],
    };

    expect(expectedBody).toEqual(union(expectedBody, resp));
  });
});
