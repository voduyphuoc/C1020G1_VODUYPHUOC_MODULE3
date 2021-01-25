package controller;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class ListCustomer {
    static List<Customer> customerList = new ArrayList<>();

    static {
        customerList.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "image/anh1.jpg"));
        customerList.add(new Customer("Mai Văn Hoàn 1", "1983-08-20", "Hà Nội", "image/anh2.jpg"));
        customerList.add(new Customer("Mai Văn Hoàn 2", "1983-08-20", "Hà Nội", "image/anh3.jpg"));
        customerList.add(new Customer("Mai Văn Hoàn 3", "1983-08-20", "Hà Nội", "image/anh4.jpg"));
    }

    public static List<Customer> getCustomerList() {
        return customerList;
    }
}
