public class TemperatureConverter {
    
    // Takes a Fahrenheit temperature and returns the Celsius equivalent.
    public static Decimal FahrenheitToCelsius(Decimal hghgh) {
        Decimal cs = (hghgh - 32) * 5/9;
        return cs.setScale(2);
    }
}