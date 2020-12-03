package bog.classes;

import java.util.Objects;

public class BogAssignment {
    private String title;
    private int releaseYear;
    private long ISBN;

    public BogAssignment(String title, long ISBN, int releaseYear) {
        this.title = title;
        this.ISBN = ISBN;
        this.releaseYear = releaseYear;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getISBN() {
        return ISBN;
    }

    public void setISBN(long ISBN) {
        this.ISBN = ISBN;
    }

    public int getReleaseYear() {
        return releaseYear;
    }

    public void setReleaseYear(int releaseYear) {
        this.releaseYear = releaseYear;
    }

    @Override
    public String toString() {
        return "Book:\n" +
                "Title: " + title + "\n" +
                "ISBN: " + ISBN + "\n" +
                "Release year: " + releaseYear;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BogAssignment that = (BogAssignment) o;
        return ISBN == that.ISBN;
    }

    @Override
    public int hashCode() {
        return Objects.hash(ISBN);
    }
}
