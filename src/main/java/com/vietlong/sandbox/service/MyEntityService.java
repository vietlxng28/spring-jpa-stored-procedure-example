package com.vietlong.sandbox.service;

import com.vietlong.sandbox.repository.MyEntityRepository;
import com.vietlong.sandbox.dto.MyEntityDto;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
public class MyEntityService {

  private final MyEntityRepository repository;

  public MyEntityService(MyEntityRepository repository) {
    this.repository = repository;
  }

  @Transactional(readOnly = true)
  public List<MyEntityDto> getExtra(Long id) {
    return repository.getExtra(id);
  }
}
