package MYSQL;

import java.util.List;

public class Main {
    public static void main(String[] args) {
        MainController controller = new MainController();

        controller.sqlConnect();

        controller.getCities();

        System.out.println("\n-- Cities over 5M --");
        controller.getCitiesOver5M();

        List<City> cities = controller.getListCity();

        for(City city:cities) {
            System.out.println(city.toString());
        }
    }
}
