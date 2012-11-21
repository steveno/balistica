/* Copyright 2012 Steven Oliver <oliver.steven@gmail.com> 
 *
 * This file is part of balistica.
 *
 * balistica is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * balistica is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with balistica.  If not, see <http://www.gnu.org/licenses/>.
 */

using GLib;

public class Conversion.Temperature : GLib.Object {
        /**
        * CelsiusToFahrenheit
        *
        * @param cel Degress in Celsius
        *
        * @return Degress in Fahrenheit
        */
        public static double CelsiusToFahrenheit (double cel) {
                return cel * 9/5 + 32;
        }

        /**
        * CelisusToKelvin
        *
        * @param cel Degrees in Celisus
        *
        * @return Degress in Kelvin
        */
        public static double CelisusToKelvin (double cel) {
                return cel + 273.15;
        }

        /**
        * CelisusToRankine
        *
        * @param cel Degrees in Celisus
        *
        * @return Degress in Rankine
        */
        public static double CelisusToRankine (double cel) {
                return (cel + 273.15) * 9/5;
        }

        /**
        * FahrenheitToCelsius
        *
        * @param fahr Degrees in Fahrenheit
        *
        * @return Degress in Celsius
        */
        public static double FahrenheitToCelsius (double fahr) {
                return (fahr - 32) * 5/9;
        }

        /**
        * FahrenheitToKelvin
        *
        * @param fahr Degrees in Fahrenheit
        *
        * @return Degress in Kelvin
        */
        public static double FahrenheitToKelvin (double fahr) {
                return (fahr + 459.67) * 5/9;
        }

        /**
        * FahrenheitToRankine
        *
        * @param fahr Degrees in Fahrenheit
        *
        * @return Degress in Rankine
        */
        public static double FahrenheitToRankine (double fahr) {
                return fahr + 459.67;
        }

        /**
        * KelvinToCelsius
        *
        * @param kel Degrees in Kelvin
        *
        * @return Degress in Celsius
        */
        public static double KelvinToCelsius (double kel) {
                return kel - 273.15;
        }

        /**
        * KelvinToFahrenheit
        *
        * @param kel Degrees in Kelvin
        *
        * @return Degress in Fahrenheit
        */
        public static double KelvinToFahrenheit (double kel) {
                return kel * 9/5 - 459.67;
        }

        /**
        * KelvinToRankine
        *
        * @param kel Degrees in Kelvin
        *
        * @return Degress in Rankine
        */
        public static double KelvinToRankine (double kel) {
                return kel * 9/5;
        }

        /**
        * RankineToCelsius
        *
        * @param kel Degrees in Rankine
        *
        * @return Degress in Celsius
        */
        public static double RankineToCelsius (double ran) {
                return (ran - 491.67) * 5/9;
        }

        /**
        * RankineToFahrenheit
        *
        * @param kel Degrees in Rankine
        *
        * @return Degress in Fahrenheit
        */
        public static double RankineToFahrenheit (double ran) {
                return ran - 459.67;
        }

        /**
        * RankineToKelvin
        *
        * @param kel Degrees in Rankine
        *
        * @return Degress in Kelvin
        */
        public static double RankineToKelvin (double ran) {
                return ran * 5/9;
        }
}