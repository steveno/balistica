/* Copyright 2012-2014 Steven Oliver <oliver.steven@gmail.com>
 *
 * This file is part of balística.
 *
 * balística is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * balística is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with balística.  If not, see <http://www.gnu.org/licenses/>.
 */

using GLib;

namespace Balistica.LibBalistica {

        public class Miller : GLib.Object {
                public double diameter { get; set; }
                public double length { get; set; }
                public double mass { get; set; }
                public int safe_value { get; set; }
                public double twist { get; set; }

                /**
                 * Default constructor
                 */
                public Miller() {
                        this.diameter = 0.0;
                        this.length = 0.0;
                        this.mass = 0.0;
                        this.safe_value = 2;
                }

                /**
                 * Full constructor
                 *
                 * @param d The bullet's diameter as a double
                 * @param l The bullet's length as a double
                 * @param m The bullet's mass as a double
                 * @param sv The "safe value". Generally 2.
                 */
                public Miller.full(double d, double l, double m, int sv) {
                        this.diameter = d;
                        this.length = l;
                        this.mass = m;
                        this.safe_value = sv;
                }

                /**
                 * Calculate bullet twist rate
                 */
                public double calc_twist() {
                        double temp1 = Math.sqrt(30.0 * this.mass);
                        double temp2 = this.safe_value * Math.pow(this.diameter, 3) * this.length * (1.0 + Math.pow(this.length, 2));
                        return temp1 / temp2;
                }

                /**
                 * Calculate bullet stability
                 */
                public double calc_stability() {
                        double temp1 = 30.0 * this.mass;
                        double temp2 = Math.pow(this.twist, 2) * Math.pow(this.diameter, 3) * this.length * (1.0 + Math.pow(this.length, 2));
                        return temp1 / temp2;
                }
        }

}
