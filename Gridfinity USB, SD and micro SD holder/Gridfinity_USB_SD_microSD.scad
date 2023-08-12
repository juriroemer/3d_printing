$fn=95;

// // 
// IMPORT gridfinity-rebuilt-bins.scad HERE !
//
// https://github.com/kennetek/gridfinity-rebuilt-openscad
// //

use </PATH/TO/gridfinity-rebuilt-openscad/gridfinity-rebuilt-bins.scad>;


// You may want to adjust the measurements for the slots, so they work with your printer / slicer settings

usb=[5.3,12.8,20];
sd=[25,3,32];
micro_sd=[12,2,15.1];

inserts_z=7;




difference() {

// Corpus
union() {

color("green") gridfinityInit(2, 1, height(1.5, 0, 2, true), 0, 42);

gridfinityBase(2, 1, 42, 0, 0, 0);
}


// cut lip

translate([0,0,120/2+14+3.5]) cube(120, center=true);


//USB


translate([31,15,inserts_z+usb[2]/2]) rotate([0,0,90]) cube(usb, center=true);

translate([31,5,inserts_z+usb[2]/2]) rotate([0,0,90]) cube(usb, center=true);

translate([31,-5,inserts_z+usb[2]/2]) rotate([0,0,90]) cube(usb, center=true);

translate([31,-15,inserts_z+usb[2]/2]) rotate([0,0,90]) cube(usb, center=true);


translate([10.7,15,inserts_z+usb[2]/2]) rotate([0,0,90]) cube(usb, center=true);

translate([10.7,5,inserts_z+usb[2]/2]) rotate([0,0,90]) cube(usb, center=true);

translate([10.7,-5,inserts_z+usb[2]/2]) rotate([0,0,90]) cube(usb, center=true);

translate([10.7,-15,inserts_z+usb[2]/2]) rotate([0,0,90]) cube(usb, center=true);



translate([-10.7,-15,inserts_z+usb[2]/2]) rotate([0,0,90]) cube(usb, center=true);

translate([-31,-15,inserts_z+usb[2]/2]) rotate([0,0,90]) cube(usb, center=true);


// SD

translate([-1,17.2-sd[0]/2,inserts_z+sd[2]/2]) rotate([0,0,90]) cube(sd, center=true);

translate([-6,17.2-sd[0]/2,inserts_z+sd[2]/2]) rotate([0,0,90]) cube(sd, center=true);

translate([-11,17.2-sd[0]/2,inserts_z+sd[2]/2]) rotate([0,0,90]) cube(sd, center=true);

translate([-16,17.2-sd[0]/2,inserts_z+sd[2]/2]) rotate([0,0,90]) cube(sd, center=true);

translate([-21,17.2-sd[0]/2,inserts_z+sd[2]/2]) rotate([0,0,90]) cube(sd, center=true);


// micro SD

translate([-(31.6),16,inserts_z+micro_sd[2]/2]) cube(micro_sd, center=true);

translate([-(31.6),10.5,inserts_z+micro_sd[2]/2]) cube(micro_sd, center=true);

translate([-(31.6),5,inserts_z+micro_sd[2]/2]) cube(micro_sd, center=true);

translate([-(31.6),-0.5,inserts_z+micro_sd[2]/2]) cube(micro_sd, center=true);

translate([-(31.6),-6,inserts_z+micro_sd[2]/2]) cube(micro_sd, center=true);

}