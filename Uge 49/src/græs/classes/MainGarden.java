package græs.classes;

public class MainGarden implements græs.interfaces.MainGarden {

    @Override
    public double whenToMoweTheLawn(double grassHeight, double maxGrassHeight) {
        if(grassHeight > maxGrassHeight) {
            return 0;
        } else {
            double missingGrassHeight = maxGrassHeight - grassHeight;
            return missingGrassHeight/0.8;
        }
    }
}
