package com.vietlong.sandbox.controller;

import com.vietlong.sandbox.service.MyEntityService;
import com.vietlong.sandbox.dto.MyEntityDto;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/my-entity")
public class MyEntityController {

  private final MyEntityService service;

  public MyEntityController(MyEntityService service) {
    this.service = service;
  }

  @GetMapping("/extra/{id}")
  public List<MyEntityDto> getExtraData(@PathVariable(name = "id") Long id) {
    return service.getExtra(id);
  }

}
