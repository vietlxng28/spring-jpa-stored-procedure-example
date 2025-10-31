package com.vietlong.sandbox.dto;

import lombok.Data;

@Data
public class MyEntityDto {
  private Long id;
  private String name;
  private String extraInfo;

  public MyEntityDto(Long id, String name, String extraInfo) {
    this.id = id;
    this.name = name;
    this.extraInfo = extraInfo;
  }
}
