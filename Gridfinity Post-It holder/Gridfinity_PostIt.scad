$fn=95;

// // 
// IMPORT gridfinity-rebuilt-bins.scad HERE !
//
// https://github.com/kennetek/gridfinity-rebuilt-openscad
// //

use </PATH/TO/gridfinity-rebuilt-bins.scad>;


postit_x=77;
postit_y=77;
fancy=true;
bare=true;
mid_support=true;



intersection() {

    difference() {

        // Corpus
        union() {

            color("green") gridfinityInit(2, 2, height(8, 0, 0, true), 0, 42);

            gridfinityBase(2, 2, 42, 0, 0, 0);
        }

        // Post-Its
        translate([-postit_x/2,-postit_y/2,7]){ cube([postit_x,postit_y,49.1]);}


    }


    if (bare) {
   
        //fancy
        if (fancy) {
            union() {
                translate([-50,-50,0]) cube([100,100,7]);

                translate([40,40,0]) cylinder(d=10, h=100);
                translate([40,-40,0]) cylinder(d=10, h=100);
                translate([-40,40,0]) cylinder(d=10, h=100);
                translate([-40,-40,0]) cylinder(d=10, h=100);

                if (mid_support) {
                    scale ([0.7,0.7]) translate([0,59,0]) cylinder(d=15, h=100);
                    scale ([0.7,0.7]) translate([59,0,0]) cylinder(d=15, h=100);
                    scale ([0.7,0.7]) translate([-59,0,0]) cylinder(d=15, h=100);
                    scale ([0.7,0.7]) translate([0,-59,0]) cylinder(d=15, h=100);
                    }
                }
        }
        else {
            union() {
                translate([-50,-50,0]) cube([100,100,7]);

                translate([30,30,0]) cube([15,15,100]);
                translate([30,-45,0]) cube([15,15,100]);
                translate([-45,30,0]) cube([15,15,100]);
                translate([-45,-45,0]) cube([15,15,100]);

                if (mid_support) {
                    translate([-7.5,30,0]) cube([15,15,100]);
                    translate([30,-7.5,0]) cube([15,15,100]);
                    translate([-45,-7.5,0]) cube([15,15,100]);
                    translate([-7.5,-45,0]) cube([15,15,100]);
                    }

                }

        }
    }
}





