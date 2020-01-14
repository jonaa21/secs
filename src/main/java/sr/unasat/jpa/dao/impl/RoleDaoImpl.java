package sr.unasat.jpa.dao.impl;

import sr.unasat.jpa.dao.RoleDao;
import sr.unasat.jpa.entity.Role;

import javax.persistence.EntityManager;

public class RoleDaoImpl extends BaseDaoImpl<Role> implements RoleDao {

    public RoleDaoImpl(EntityManager entityManager) {
        super(entityManager, Role.class);
    }

}
