package br.com.oliveira.controleloja.DAO;

import java.util.List;

public interface DAOService<EntityType, PKType> {

    void store(EntityType object);

    void remove(EntityType object);

    EntityType findByPrimaryKey(PKType pk);

    List<EntityType> loadAll();
}
