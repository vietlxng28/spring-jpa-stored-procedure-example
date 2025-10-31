package com.vietlong.sandbox.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.vietlong.sandbox.dto.MyEntityDto;

@Data
@Entity
@Table(name = "MY_ENTITY")
@AllArgsConstructor
@NoArgsConstructor
@SqlResultSetMapping(name = "MyEntityDtoMapping", classes = @ConstructorResult(targetClass = MyEntityDto.class, columns = {
    @ColumnResult(name = "ID", type = Long.class),
    @ColumnResult(name = "NAME", type = String.class),
    @ColumnResult(name = "extra_info", type = String.class)
}))
@NamedStoredProcedureQuery(name = "MyEntity.getExtra", procedureName = "SP_GET_MYENTITY_EXTRA", resultSetMappings = "MyEntityDtoMapping", parameters = {
    @StoredProcedureParameter(mode = ParameterMode.IN, name = "P_ID", type = Long.class)
})
public class MyEntity {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  private String name;
}
