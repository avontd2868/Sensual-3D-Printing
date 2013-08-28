//Diameter of head (widest part)
headWidth = 20;

//Height of head (determines taper)
headHeight = 25;

//Length of neck (thin part after head)
neckLength = 40;

//Diameter of neck (thin part after head)
neckWidth = 10;

//Don't edit below this line!


baseWidth = max(1.5*neckWidth, 1.2*headWidth);
baseHeight = 5;

headTop = min(7, headWidth/2);

hull()
{
	translate([0, 0, neckLength])
	{
		cylinder(h = headHeight, r1 = headWidth, r2 = headTop, center = false);
	}
	translate([0, 0, neckLength + headHeight-(headTop/2)])
	{
		sphere(headTop);
	}
	translate([0,0,neckLength - 3])
	{
		scale([1, 1, 0.4])
		{
			sphere(headWidth);
		}
	}
}

cylinder(h = neckLength, r1 = neckWidth, r2 = neckWidth, center = false);
cylinder(h = baseHeight, r1 = baseWidth, r2 = baseWidth, center = false);