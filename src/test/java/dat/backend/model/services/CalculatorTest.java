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
        Item expectedCalcBeams = new Item();
        expectedCalcBeams.setUnit("stk");
        expectedCalcBeams.setQuantity(2);
        expectedCalcBeams.setGuidanceDescription("Remme i sider, sadles ned i stolper");
        expectedCalcBeams.setItemId(0);
        expectedCalcBeams.setLength(480);
        expectedCalcBeams.setPrice(261.0);
        expectedCalcBeams.setMaterialDescription("45x195 mm. spærtræ ubh.");
        Item actualCalcBeams = calculator.calcBeams(540, 480);
        assertEquals(expectedCalcBeams, actualCalcBeams);

    }

    @Test
    void calcPosts() {
    }
}