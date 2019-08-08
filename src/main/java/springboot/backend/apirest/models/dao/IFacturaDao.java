package springboot.backend.apirest.models.dao;

import org.springframework.data.repository.CrudRepository;

import springboot.backend.apirest.models.entity.Factura;

public interface IFacturaDao extends CrudRepository<Factura, Long>{

}
