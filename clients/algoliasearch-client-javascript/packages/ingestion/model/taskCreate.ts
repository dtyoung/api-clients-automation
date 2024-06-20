// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import type { ActionType } from './actionType';
import type { TaskCreateTrigger } from './taskCreateTrigger';
import type { TaskInput } from './taskInput';

/**
 * API request body for creating a task.
 */
export type TaskCreate = {
  /**
   * Universally uniqud identifier (UUID) of a source.
   */
  sourceID: string;

  /**
   * Universally unique identifier (UUID) of a destination resource.
   */
  destinationID: string;

  trigger: TaskCreateTrigger;

  action: ActionType;

  /**
   * Whether the task is enabled.
   */
  enabled?: boolean;

  /**
   * Maximum accepted percentage of failures for a task run to finish successfully.
   */
  failureThreshold?: number;

  input?: TaskInput;

  /**
   * Date of the last cursor in RFC 3339 format.
   */
  cursor?: string;
};
