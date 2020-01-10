package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.entity.Role;

import javax.persistence.EntityManager;

public class RoleDao extends BaseDaoImpl<Role> {

    public RoleDao(EntityManager entityManager) {
        super(entityManager, Role.class);
    }

}
