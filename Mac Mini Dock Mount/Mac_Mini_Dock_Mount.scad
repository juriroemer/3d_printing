$fn=96;

height = 17.5;
radius = 29;


difference(){

union(){
translate([radius, radius, 0]){
difference(){
hull(){

    union(){
    cylinder(r=radius, h=height);
    translate([200-2*radius, 0, 0]) cylinder(r=radius, h=height);
    translate([0, 200-2*radius, 0]) cylinder(r=radius, h=height);
    translate([200-2*radius, 200-2*radius, 0]) cylinder(r=radius, h=height);
    }
}


hull(){
    //translate für schablone 0,0,3, sonst 0,0,0
    translate([0,0,0]){
    union(){
    translate([1.25, 1.25, 2]) cylinder(r=radius, h=height+5);
    translate([198.75-2*radius, 1.25, 2]) cylinder(r=radius, h=height+5);
    translate([1.25, 198.75-2*radius, 2]) cylinder(r=radius, h=height+5);
    translate([198.75-2*radius, 198.75-2*radius, 2]) cylinder(r=radius, h=height+5);
    }
    }
}

translate([-radius,198-radius,2]) cube([200,200,200]);
translate([-radius+19,180-radius,2]) cube([162,180,200]);

// Aussparung hinten
hull(){
    translate([-radius+70,-radius+10,10]) rotate([90,0,0]) cylinder(h=20, r=5);

    translate([-radius+105,-radius+10,10]) rotate([90,0,0]) cylinder(h=20, r=5);
}



union(){
    translate([1.25, 1.25, -1]) cylinder(r=15, h=height+5);
    translate([198.75-2*radius, 1.25, -1]) cylinder(r=15, h=height+5);
    translate([1.25, 198.75-2*radius, -1]) cylinder(r=15, h=height+5);
    translate([198.75-2*radius, 198.75-2*radius, -1]) cylinder(r=15, h=height+5);
    }
    

// mit Zugang
translate([70,70,0]) cube(14y0, center=true);

}}




difference(){
    translate([-5,-5,15.5]) color("lightblue") cube([210,203,2]);    
  
hull(){

    translate([radius, radius, 0])
    union(){
    translate([1.25, 1.25, 2]) cylinder(r=radius, h=height+5);
    translate([198.75-2*radius, 1.25, 2]) cylinder(r=radius, h=height+5);
    translate([1.25, 198.75-2*radius, 2]) cylinder(r=radius, h=height+5);
    translate([198.75-2*radius, 198.75-2*radius, 2]) cylinder(r=radius, h=height+5);
    }
}

    translate([+19,180,2]) cube([162,180,200]);
    translate([3,3,0]) cylinder(r=2,h=30);
    translate([-1,187,0]) cylinder(r=2,h=30);


    translate([197,3,0]) cylinder(r=2,h=30);
    translate([201,187,0]) cylinder(r=2,h=30);


}
}
translate([-10,191,-1]) cube([220,20,20]);


// Aussparungen
union(){
x=100;    
    
translate([-x,0,0]) color("green")
hull() {
translate([0,35,0]) cylinder(h=20, r=x);
translate([0,155,0]) cylinder(h=20, r=x);
}

translate([-x+400,0,0]) color("green")
hull() {
translate([0,35,0]) cylinder(h=20, r=x);
translate([0,155,0]) cylinder(h=20, r=x);
}

translate([-x+105,-100,0]) color("green") rotate(270)
hull() {
translate([0,35,0]) cylinder(h=20, r=x);
translate([0,155,0]) cylinder(h=20, r=x);
}}

}
