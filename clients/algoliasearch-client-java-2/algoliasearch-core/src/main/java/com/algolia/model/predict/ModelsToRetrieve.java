// This file is generated, manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation.

package com.algolia.model.predict;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

/** Gets or Sets modelsToRetrieve */
public enum ModelsToRetrieve {
  FUNNEL_STAGE("funnel_stage"),

  ORDER_VALUE("order_value"),

  AFFINITIES("affinities");

  private final String value;

  ModelsToRetrieve(String value) {
    this.value = value;
  }

  @JsonValue
  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static ModelsToRetrieve fromValue(String value) {
    for (ModelsToRetrieve b : ModelsToRetrieve.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
}
