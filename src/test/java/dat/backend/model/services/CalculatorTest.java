package dat.backend.model.services;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Item;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.ConnectionPool;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.sql.Connection;

import static org.junit.jupiter.api.Assertions.*;

class CalculatorTest {

    private Calculator calculator;
    private final static String USER = "dev";
    private final static String PASSWORD = "3r!DE32*/fDe";
    private final static String URL = "jdbc:mysql://64.226.64.92:3306/carport?serverTimezone=CET&allowPublicKeyRetrieval=true&useSSL=false";

    private static ConnectionPool connectionPool;



    @BeforeEach
    void setUp() {
        connectionPool = new ConnectionPool(USER, PASSWORD, URL);

        try {
            calculator = new Calculator(connectionPool);
        } catch (DatabaseException e) {
            e.printStackTrace();
        }
    }

    //Gør dette for de to andre calculate metoder(IntegrationsTEST)
    @Test
    void calcRafters() {
        Item expectedRafters = new Item();
        expectedRafters.setUnit("stk");
        expectedRafters.setQuantity(15);
        expectedRafters.setGuidanceDescription("Spær, monteres på rem");
        expectedRafters.setItemId(0);
        expectedRafters.setLength(600);
        expectedRafters.setPrice(315.0);
        expectedRafters.setMaterialDescription("45x195 mm. spærtræ ubh.");
        Item actualRafters = calculator.calcRafters(780, 600);
        assertEquals(expectedRafters, actualRafters);
    }

    @Test
    void calcBeams() {
        Item expectedBeams = new Item();
        expectedBeams.setUnit("stk");
        expectedBeams.setQuantity(3);
        expectedBeams.setGuidanceDescription("Remme i sider, sadles ned i stolper");
        expectedBeams.setItemId(1);
        expectedBeams.setLength(780);
        expectedBeams.setPrice(240.0);
        expectedBeams.setMaterialDescription("45x195 mm. spærtræ ubh.");
        Item actualBeams = calculator.calcBeams(780,600);
        assertEquals(expectedBeams, actualBeams);
    }

    @Test
    void calcPosts() {
        Item expectedPosts = new Item();
        expectedPosts.setUnit("stk");
        expectedPosts.setQuantity(8);
        expectedPosts.setGuidanceDescription("Stolper nedgraves 90 cm. i jord");
        expectedPosts.setItemId(0);
        expectedPosts.setLength(300);
        expectedPosts.setPrice(120.0);
        expectedPosts.setMaterialDescription("97x97 mm. trykimp. stolpe");
        Item actualPosts = calculator.calcPosts(780, 600);
        assertEquals(expectedPosts, actualPosts);
    }
}