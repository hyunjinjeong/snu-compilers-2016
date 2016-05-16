//
// Additional test for advanced folding of integer constants, a.k.a. RELAXED scheme.
//

module int_const_relaxed_custom;

procedure relaxed_custom();
var i: integer;
    j: integer;
    b: boolean;
    c: char;

begin
  i := -2147483648;                             // pass
	i := -2147483648 + 12345;                     // pass
	i := -2147483648 + 2147483647;                // pass
	i := -2147483648 + (-(-2147483647));          // pass
	i := -(-2147483648) - 2147483647;             // pass
	i := -(-(2147483647)) - (-(-2147483648));     // pass
	i := -(-(2147483647)) * 2147483647;           // pass
	i := -(-(-2147483648)) / (-(-2147483648));    // pass
	i := -(-(2147483647 * (-2147483648)) + 2147483647) * (2147483647 - (-2147483648) * (-2147483648)); // pass
	i := -j + (-i * 2147483647);                  // pass
	i := (-i * (-(-j)) / 2147483647) - (-j + 2147483647 * (-2147483648)); // pass
	i := -(-(2147483647 * (-(-j)) / (-i) + 2147483647 - (-2147483648)) * (-i + j)) * (-(-2147483648 * (-i + j * (-j)))); // pass
	i := -(-(2147483647 * (-(-((j)))) / (-(i)) + ((-(-2147483648)))) * (-i / (i) + j)) / ((-2147483648 *(-j * ((-i + 2147383647) * (-2147483648)) + (-j)))); // pass
	i := +i + j;                                  // pass
	i := +(+i) * (-j + i);                        // pass
	i := +i + (+j * ((+i / (-((-(j + (+(-(+(((+i - ((+(-((((+(((+(j)))))))))))))))))))))))); // pass

//	i := -2147483648 + 2147483648;                // fail
//	i := -2147483648 + (-(2147483648));           // fail
//	i := -(-(2147483648) * (-2147483648 + ((2147483648)))); // fail
//	i := (2147483647 - (-(2147483648)));          // fail
//	i := -(-2147483648) * -(2147483648);          // fail
//	i := ((2147483648));                          // fail
//	i := -(-(2147483648));                        // fail
//	i := -2147483648 * (-(2147483647 * (i - (-2147483648)))); // fail
//	i := -i * -j;                                 // fail
	i := +(-(+2147483648));                       // fail
	i := +(2147483647) + (-2147483648 * (-((+2147483648)))); // fail
	i := -(+(-2147483647) - (+2147483647)) * (-(+((-i))) + (-(+(+((2147483648)))))); // fail
	i := -(+((-(+2147483648))));                  // fail
	i := +i + +j;                                 // fail
	i := +i - (+j * (-2147483648) / (+(+2147483648))); // fail
	i := +(2147483647) - (-i * (+i + (+j - (-j - 2147483648)))); // fail
	i := +2147483648 + 2147483647;                // fail
	i := +((+2147483647)) * (-2147483648) + +i;   // fail
	i := -i + (+j) * (+2147483647) - (-(+2147483649)); // fail
	i := +i + (+j * ((+i * (((-j / ((+(+((i * 2147483648))))))))))); // fail

	i := i + j                                    // pass
end relaxed_custom;

begin
end int_const_relaxed_custom.
