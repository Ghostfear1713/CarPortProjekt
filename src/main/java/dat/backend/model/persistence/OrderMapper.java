package dat.backend.model.persistence;

import dat.backend.model.entities.OrderForm;

import java.util.ArrayList;
import java.util.List;

class OrderMapper {

static OrderForm viewAllOrders(){
    List<OrderForm> listOfOrders = new ArrayList<>();
    OrderForm orderForm = new OrderForm();



    return orderForm;
}


static OrderForm createOrder(OrderForm orderForm, String username, ConnectionPool connectionPool){

    OrderForm newOrderForm = new OrderForm();


    return newOrderForm;
}



}
