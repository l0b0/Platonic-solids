module octahedron(size = 1, center = false) {
	size = len(size) == 3 ? size : [size, size, size];
	move = center ? [0, 0, 0] : [
		size[0] / 2,
		size[1] / 2,
		size[2] / 2
	];
	translate(move)
		polyhedron(
			points = [
				[1, 0, 0],
				[0, 1, 0],
				[-1, 0, 0],
				[0, -1, 0],
				[0, 0, 1],
				[0, 0, -1]
			],
			triangles = [
				[4, 1, 0],
				[4, 2, 1],
				[4, 3, 2],
				[4, 0, 3],
				[5, 0, 1],
				[5, 1, 2],
				[5, 2, 3],
				[5, 3, 0]
			]
		);
}

color("red") octahedron([1, 1, 1], true); // Centered
color("green") octahedron(1, false); //
