package customer.service;

import customer.model.CustomerType;

import java.sql.SQLException;
import java.util.List;

public interface CustomerTypeService {
        List<CustomerType> getAllCustomerType() throws SQLException;
}
