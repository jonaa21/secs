package sr.unasat.jpa.service.impl;

import sr.unasat.jpa.dao.impl.RoleDao;
import sr.unasat.jpa.entity.Role;

import javax.persistence.EntityManager;

public class RoleService extends BaseServiceImpl<RoleDao, Role> {

    public RoleService(EntityManager entityManager) {
        super(new RoleDao(entityManager));
    }


}
