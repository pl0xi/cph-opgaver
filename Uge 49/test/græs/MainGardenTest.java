package græs;

import græs.classes.MainGarden;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class MainGardenTest {
    @Test
    public void getDaysBeforeMowing() {
        MainGarden garden = new MainGarden();

        assertEquals(7.5, garden.whenToMoweTheLawn(2.0, 8.0), 1);
    }

    @Test
    public void getDaysBeforeMowing2() {
        MainGarden garden = new MainGarden();

        assertEquals(0, garden.whenToMoweTheLawn(9.0, 8.0), 1);
    }
}
