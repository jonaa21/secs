package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.RoleDaoImpl;
import sr.unasat.jpa.entity.Role;

import javax.persistence.EntityManager;

public class RoleService extends BaseServiceImpl<RoleDaoImpl, Role> {

    public RoleService(EntityManager entityManager) {
        super(new RoleDaoImpl(entityManager));
    }


}
