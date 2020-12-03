package bog.classes;

import java.util.ArrayList;

public class Bibliotek implements bog.interfaces.Bibliotek {
    private ArrayList<BogAssignment> books = new ArrayList<>();

    @Override
    public boolean checkIfInStock(BogAssignment bookCompare) {
        for(BogAssignment book: books) {
            if(bookCompare.equals(book)) {
                return true;
            }
        }
        return false;
    }

    public void addToStock(BogAssignment book) {
        books.add(book);
    }
}
