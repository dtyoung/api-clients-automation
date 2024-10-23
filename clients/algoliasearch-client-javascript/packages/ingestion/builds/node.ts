// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

export type IngestionClient = ReturnType<typeof createIngestionClient>;

import { createHttpRequester } from '@algolia/requester-node-http';

import {
  createMemoryCache,
  createNullCache,
  createNullLogger,
  DEFAULT_CONNECT_TIMEOUT_NODE,
  DEFAULT_READ_TIMEOUT_NODE,
  DEFAULT_WRITE_TIMEOUT_NODE,
} from '@algolia/client-common';

import type { ClientOptions } from '@algolia/client-common';

import { createIngestionClient } from '../src/ingestionClient';

import type { Region } from '../src/ingestionClient';
import { REGIONS } from '../src/ingestionClient';

export type { Region, RegionOptions } from '../src/ingestionClient';

export { apiClientVersion, isOnDemandTrigger, isScheduleTrigger, isSubscriptionTrigger } from '../src/ingestionClient';

export * from '../model';

export function ingestionClient(
  appId: string,
  apiKey: string,
  region: Region,
  options?: ClientOptions,
): IngestionClient {
  if (!appId || typeof appId !== 'string') {
    throw new Error('`appId` is missing.');
  }

  if (!apiKey || typeof apiKey !== 'string') {
    throw new Error('`apiKey` is missing.');
  }

  if (!region || (region && (typeof region !== 'string' || !REGIONS.includes(region)))) {
    throw new Error(`\`region\` is required and must be one of the following: ${REGIONS.join(', ')}`);
  }

  return {
    ...createIngestionClient({
      appId,
      apiKey,
      region,
      timeouts: {
        connect: DEFAULT_CONNECT_TIMEOUT_NODE,
        read: DEFAULT_READ_TIMEOUT_NODE,
        write: DEFAULT_WRITE_TIMEOUT_NODE,
      },
      logger: createNullLogger(),
      requester: createHttpRequester(),
      algoliaAgents: [{ segment: 'Node.js', version: process.versions.node }],
      responsesCache: createNullCache(),
      requestsCache: createNullCache(),
      hostsCache: createMemoryCache(),
      ...options,
    }),
  };
}
