package arraylist.classes;

import java.util.ArrayList;
import java.util.Collections;

public class ArrayListAssignment implements arraylist.interfaces.ArrayListAssignment {

    @Override
    public boolean addToArrayList(String txtToAdd, ArrayList<String> list) {
        if (txtToAdd == null) return false;

        for (String s: list) {
            if(s == txtToAdd) return false;
        }

        Collections.sort(list);

        return true;
    }
}
