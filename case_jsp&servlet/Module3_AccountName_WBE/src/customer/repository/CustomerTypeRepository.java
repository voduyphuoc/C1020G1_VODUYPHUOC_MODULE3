package customer.repository;

import customer.model.CustomerType;

import java.sql.SQLException;
import java.util.List;

public interface CustomerTypeRepository {
    List<CustomerType> getAllCustomerType() throws SQLException;
}
