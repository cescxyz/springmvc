package test;


import static org.junit.Assert.assertEquals;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:datasource-test.xml"})
public class TestJdbc {

    
    
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Test
    public void testJdbc() {
        System.out.println("Inicio del test Jdbc");
        String sql = "select count(*) from persona";
        int noPersonas = jdbcTemplate.queryForObject(sql, Integer.class);

        System.out.println("nopersonas "+noPersonas);

        assertEquals(3, noPersonas);

        System.out.println("Fin del test Jdbc");

    }
}
