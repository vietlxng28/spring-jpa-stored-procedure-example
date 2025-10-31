package com.vietlong.sandbox.repository;

import com.vietlong.sandbox.entity.MyEntity;
import com.vietlong.sandbox.dto.MyEntityDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import java.util.List;

public interface MyEntityRepository extends JpaRepository<MyEntity, Long> {

  @Procedure(name = "MyEntity.getExtra")
  List<MyEntityDto> getExtra(@Param("P_ID") Long pId);
}
