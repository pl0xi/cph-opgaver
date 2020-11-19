package MYSQL;

public class City {
    private String cityName, countryCode, District;
    private int population;

    public City(String cityName, String countryCode, String district, int population) {
        this.cityName = cityName;
        this.countryCode = countryCode;
        District = district;
        this.population = population;
    }

    @Override
    public String toString() {
        return cityName + ", " + countryCode + ", " + District + ", " + population;
    }
}
