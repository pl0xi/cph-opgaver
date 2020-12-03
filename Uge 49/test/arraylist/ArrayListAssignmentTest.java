package arraylist;

import arraylist.classes.ArrayListAssignment;
import org.junit.Test;
import java.util.ArrayList;

import static org.junit.Assert.*;

public class ArrayListAssignmentTest {

    @Test
    public void addStringToArrayList() {
        ArrayListAssignment listClass = new ArrayListAssignment();
        ArrayList<String> list = new ArrayList<>();

        list.add("Dog");
        list.add("Cat");
        list.add("Mouse");

        assertTrue(listClass.addToArrayList("Eagle", list));
    }

    @Test
    public void addDuplicateStringToArrayList() {
        ArrayListAssignment listClass = new ArrayListAssignment();
        ArrayList<String> list = new ArrayList<>();

        list.add("Dog");
        list.add("Cat");
        list.add("Mouse");

        assertFalse(listClass.addToArrayList("Dog", list));
    }

    @Test
    public void addNullToArrayList() {
        ArrayListAssignment listClass = new ArrayListAssignment();
        ArrayList<String> list = new ArrayList<>();

        list.add("Dog");
        list.add("Cat");
        list.add("Mouse");

        assertFalse(listClass.addToArrayList(null, list));
    }
}
