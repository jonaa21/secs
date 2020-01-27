package sr.unasat.jpa.dao;

import sr.unasat.jpa.entity.Customer;
import sr.unasat.jpa.entity.User;

public interface CustomerDao extends BaseDao<Customer> {

    Customer save(User user, String userName);

    Customer findCustomerByUserName(String userName);
}
