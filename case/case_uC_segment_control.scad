//=========================================================================================
//project: 	case uC segment control
//			description: Case with pcb-mounting option, case screws and sealing.
//						 For sealing add sealing compound to both sides (lid and wall) 
//						 of the sealing slot and in the edge between "tongue" and slot 
//						 on the lid.
//version:	V0.1.1
//date: 	2016-05-17
//author:	Christian Schmitz
//license:	see license.md
//=========================================================================================
//general options:
n_segments=14;					//number of segments of digits (max 2x7=14)
                                //=number of holes for cable glands
make_hole_dot1=true;            //make additional hole for dots on +x-side
make_hole_dot2=true;            
make_hole_PWR_I2C=true;			//make additional hole for power supply and control
//=========================================================================================
//config:
t_wall=3;					//thickness of all walls
r_edge=2;					//radius for cutting the edges
d_screw_core=2.5;			//core diameter of box-screws
d_screw=4;					//diameter of box-screws
d_cable_gland=15.2;			//diameter of cable gland, tolerance +/-0.35
d_cable_gland_out=24.1;		//diameter of cable gland nut, outside
l_cable_gland=8.2;			//length of cable gland from outer nut on
clearance=0.8;				//clearance 'cause of printing tolerances, 
							//tolerance of cable gland...
space_pcb=10;				//space around pcb (space between pcb and cable gland)

x_pcb=139;					//dimension of pcb
y_pcb=94;
z_pcb=13;

x_diff_mount_pcb=x_pcb-8;	//difference between mounting holes 
y_diff_mount_pcb=y_pcb-8;
d_screw_core_pcb=2.2;		//pcb mounting screw core
h_mount_pcb=8;			    //height of pcb mounting socket

x_box=x_pcb+l_cable_gland*2-t_wall*2+space_pcb*2;   //outer dimension of the whole case
y_box=y_pcb+l_cable_gland*2-t_wall*2+space_pcb*2;
z_box=max(d_cable_gland_out+clearance*2,   			//box height depends on cable glands
          z_pcb+h_mount_pcb)+t_wall*3;     			//or pcb height
        
$fs=0.5;$fa=3;			//fine grid
//=========================================================================================
module box(){
	difference(){
		union(){
			//box:
			difference(){
				//round corners:
				minkowski(){
					cube([x_box-2*r_edge, y_box-2*r_edge, z_box-1], center=true);
					cylinder(h=1,r=r_edge, center=true);
				}	
				union(){
					//lid:
					translate([0,0,(z_box-t_wall+0.1)/2])
						cube([x_box, y_box, t_wall+0.1], center=true);
					//space inside:
					translate([0,0,0.05])
						cube([x_box-(t_wall*2), y_box-(t_wall*2), 
							  z_box-(t_wall*2)+0.1], center=true);
					//hole cable gland: power
					if(make_hole_PWR_I2C==true){
						translate([-x_box/2+t_wall/2,0,-t_wall/2])
							rotate([0,90,0])
								cylinder(d=d_cable_gland+clearance,h=t_wall+0.1,
										 center=true);
					}

					//first hole:
					if (n_segments>=1){
						translate([-x_box/2+t_wall/2,
									  -y_box/2+2*t_wall+d_screw_core+1.5
									  +d_cable_gland_out/2+clearance,-t_wall/2])
							rotate([0,90,0])
								cylinder(d=d_cable_gland,h=t_wall+0.1, center=true);
					}
					//cable gland holes -y-side:
					if (n_segments>=2){
						n_temp= (n_segments>=7) ? 7 : n_segments;
						for(n=[1:1:n_temp-1]){
							translate([-x_box/2+2*t_wall+d_screw_core+1.5+
									   d_cable_gland_out/2+clearance+
									   (d_cable_gland_out+clearance)*(n-1),
									   -y_box/2+t_wall/2,-t_wall/2])
								rotate([90,0,0])
									cylinder(d=d_cable_gland,h=t_wall+0.1, 
											 center=true);			
						}
					}
					//cable gland holes +y-side:
					if (n_segments>=7){
						n_temp= (n_segments>=13) ? 6 : n_segments-7;
						for(n=[1:1:n_temp]){
							translate([x_box/2-(2*t_wall+d_screw_core+1.5+
									   d_cable_gland_out/2+clearance+
									   (d_cable_gland_out+clearance)*(n-1)),
									   y_box/2-t_wall/2,-t_wall/2])
								rotate([90,0,0])
									cylinder(d=d_cable_gland,h=t_wall+0.1,
											 center=true);			
						}
						
					}
					//cable gland holes -x-side:
					if (n_segments>=14){
						translate([-x_box/2+t_wall/2,
									  y_box/2-(2*t_wall+d_screw_core+1.5
									  +d_cable_gland_out/2+clearance),-t_wall/2])
							rotate([0,90,0])
								cylinder(d=d_cable_gland,h=t_wall+0.1, center=true);
					}
					//cable gland holes on +x-side:
					if (make_hole_dot1){
						translate([x_box/2-t_wall/2,
									  -y_box/2+(2*t_wall+d_screw_core+1.5
									  +d_cable_gland_out/2+clearance),-t_wall/2])
							rotate([0,90,0])
								cylinder(d=d_cable_gland,h=t_wall+0.1, center=true);
					}
					if (make_hole_dot2){
						translate([x_box/2-t_wall/2,
									  y_box/2-(2*t_wall+d_screw_core+1.5
									  +d_cable_gland_out/2+clearance),-t_wall/2])
							rotate([0,90,0])
								cylinder(d=d_cable_gland,h=t_wall+0.1, center=true);
					}
				}	
			}	
	
			//box screws:
			for(i=[-1:2:1]){
				for(k=[-1:2:1]){
					translate([i*(x_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)),
								  k*(y_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)),0]) 
						difference(){
							//cylinder for box screws:
							cylinder(h=z_box-(t_wall*2), r=(d_screw_core/2)+t_wall,
									 center=true);
							//holes for box screws: 
							cylinder(h=z_box-(t_wall*2)+0.1, r=(d_screw_core/2),
									 center=true);
						}	
				}	
			}
		}
		union(){
			//sealing slot: h=t_wall/3, w=t_wall/3
			translate([0,0,0.05+z_box/2-t_wall-t_wall/3/2])
				difference(){
					minkowski(){
						cube([x_box-2*r_edge-t_wall/3*2, y_box-2*r_edge-t_wall/3*2,
							  t_wall/6], center=true);
						cylinder(h=t_wall/6+0.1,r=r_edge, center=true);
					}
					minkowski(){
						cube([x_box-2*r_edge-2*t_wall/3*2, y_box-2*r_edge-2*t_wall/3*2,
							  t_wall/6], center=true);
						cylinder(h=t_wall/6+0.1,r=r_edge, center=true);
					}
				}
			//box screws sealing slot:
			for(i=[-1:2:1]){
				for(k=[-1:2:1]){
					translate([i*(x_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)),
								  k*(y_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)),
							   z_box/2-t_wall-t_wall/2+0.05]) 
						difference(){
							cylinder(h=(t_wall+0.1), r=(d_screw_core/2)+t_wall-t_wall/3,
									 center=true);
							cylinder(h=t_wall+0.2, r=(d_screw_core/2)+t_wall-t_wall/3*2,
									 center=true);
						}	
				}	
			}
		}
	}
	//screws pcb mount
	for(i=[-1:2:1]){
		for(k=[-1:2:1]){
			translate([k*x_diff_mount_pcb/2,
						  i*y_diff_mount_pcb/2,-z_box/2+t_wall+h_mount_pcb/2]) 
				difference(){
					//cylinder: wall must be strong enough to avoid 
					//tearing off from the bottom
					cylinder(h=h_mount_pcb, r=(d_screw_core_pcb/2)+t_wall, center=true);
					//holes for screws:
					cylinder(h=h_mount_pcb+0.1, r=(d_screw_core_pcb/2), center=true);
				}
		}
	}

	//box mounting screws:
	for(i=[-1:2:1]){
		for(k=[-1:2:1]){
			translate([i*(x_box/2+t_wall+d_screw/2),
						  k*(y_box/2-t_wall-d_screw/2),-z_box/2+t_wall/2]) 
				difference(){
					union(){
						//cylinder for box mounting screws:
						cylinder(h=(t_wall), r=(d_screw/2)+t_wall, center=true);
						translate([i*(-t_wall-d_screw/2-r_edge/2)/2,0,0])
							cube([d_screw/2+t_wall+r_edge,t_wall*2+d_screw,t_wall],
								  center=true);
					}
					//holes for box mounting screws: 
					cylinder(h=(t_wall)+0.1, r=(d_screw/2), center=true);
				}	
		}	
	}
}
//=========================================================================================
module lid(){
	difference(){
		//lid:
		translate([0,0,(z_box-t_wall)/2]) 
			//round corners:
			minkowski(){
				cube([x_box-2*r_edge, y_box-2*r_edge, t_wall-1], center=true);
				cylinder(h=1,r=r_edge, center=true);
			}
		//holes for box screws:
		for(i=[-1:2:1]){
			for(k=[-1:2:1]){
				translate([i*(x_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)+0.1),
							  k*(y_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)+0.1),
							  (z_box-t_wall)/2]) 
					//holes for box screws: 
					cylinder(h=(t_wall+0.1), r=(d_screw/2), center=true);
			}	
		}
			
		//sealing slot: h=t_wall/3, w=t_wall/3
		translate([0,0,-0.05+z_box/2-t_wall+t_wall/3/2])
			union(){
				difference(){
					minkowski(){
						cube([x_box-2*r_edge-t_wall/3*2, y_box-2*r_edge-t_wall/3*2,
							  t_wall/6], center=true);
						cylinder(h=t_wall/6+0.1,r=r_edge, center=true);
					}
					minkowski(){
						cube([x_box-2*r_edge-2*t_wall/3*2, y_box-2*r_edge-2*t_wall/3*2,
							  t_wall/6], center=true);
						cylinder(h=t_wall/6+0.1,r=r_edge, center=true);
					}
				}	
				//box screws sealing slot:
				for(i=[-1:2:1]){
					for(k=[-1:2:1]){
						translate([i*(x_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)),
									  k*(y_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)),0]) 
							cylinder(h=(t_wall+0.1), r=(d_screw_core/2)+t_wall-t_wall/3,
									 center=true);
					}	
				}
		}
	}	
	//avoid deflection for proper sealing: reinforcement:
	translate([0,0,z_box/2-t_wall-t_wall/2])
		difference(){
			difference(){
				cube([x_box-(t_wall*2)-clearance, y_box-(t_wall*2)-clearance, 
					  t_wall], center=true);
				//cylinder of box screws:	
				for(i=[-1:2:1]){
					for(k=[-1:2:1]){
						translate([i*(x_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)),
									  k*(y_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)),0]) 
							//cylinder for box screws:
							cylinder(h=(t_wall+0.1), r=(d_screw_core/2)+t_wall+clearance/2,
									 center=true);
					}	
				}
			}
			difference(){
				cube([x_box-(t_wall*4)-clearance, y_box-(t_wall*4)-clearance, 
					  t_wall+0.1], center=true);
				//cylinder of box screws:	
				for(i=[-1:2:1]){
					for(k=[-1:2:1]){
						translate([i*(x_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)),
									  k*(y_box/2-t_wall-((d_screw_core/2)+t_wall-1.5)),0]) 
							//cylinder for box screws:
							cylinder(h=(t_wall+0.2), r=(d_screw_core/2)+t_wall*2+
									 clearance/2,center=true);
					}	
				}
			}
		}		
}
//=========================================================================================
//adjust position of box and lid:
translate([0,0,+z_box/2])
	box();
rotate([180,0,0])
translate([x_box+20,0,-(z_box/2)])
	lid();

//=========================================================================================

