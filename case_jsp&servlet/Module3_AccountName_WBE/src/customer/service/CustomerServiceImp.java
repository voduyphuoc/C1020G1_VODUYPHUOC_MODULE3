package customer.service;

import customer.model.Customer;
import customer.repository.CustomerRepository;
import customer.repository.CustomerRepositoryImp;

import java.sql.SQLException;
import java.util.List;

public class CustomerServiceImp  implements CustomerService{
    CustomerRepository customerRepository = new CustomerRepositoryImp();
    @Override
    public List<Customer> getAllCustomers() throws SQLException {
        return customerRepository.getAllCustomers();
    }

    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        customerRepository.insertCustomer(customer);
    }

    @Override
    public boolean deleteCustomer(String id) throws SQLException {
        return customerRepository.deleteCustomer(id);
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return customerRepository.updateCustomer(customer);
    }

    @Override
    public Customer selectCustomer(String id) {
        return customerRepository.selectCustomer(id);
    }

    @Override
    public List<Customer> searchByName(String name) {
        return customerRepository.searchByName(name);
    }
}
