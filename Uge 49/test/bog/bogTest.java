package bog;

import bog.classes.Bibliotek;
import bog.classes.BogAssignment;
import org.junit.Test;

import static org.junit.Assert.*;

public class bogTest {
    @Test
    public void compareBook() {
        Bibliotek bibliotek = new Bibliotek();
        BogAssignment book = new BogAssignment("Otto er et næsehorn", 9788702027839L,1983);

        bibliotek.addToStock(book);
        assertTrue(bibliotek.checkIfInStock(book));
    }

    @Test
    public void compareWrongBook() {
        Bibliotek bibliotek = new Bibliotek();
        BogAssignment book = new BogAssignment("Otto er et næsehorn", 9788702027839L,1983);
        BogAssignment book2 = new BogAssignment("Alletiders Pippi Langstrømpe", 9788702294354L,2020);

        bibliotek.addToStock(book);
        assertFalse(bibliotek.checkIfInStock(book2));
    }
}
