ARCHITECTURE studentVersion OF sawtoothToTriangle IS
    signal msb : std_ulogic;
    signal sawtoothinverted : unsigned(sawtooth'high downto 0);
    signal output : unsigned(sawtooth'high downto 0);
    constant const: positive := 2**sawtooth'length-1;

BEGIN

  msb <= sawtooth(sawtooth'high);
  
    swth: process(sawtooth)
    begin
        sawtoothinverted <= const - sawtooth;
    end process swth;

  triangleToggle: process(sawtoothinverted)
    begin
        if msb = '1' then 
            output <= sawtoothinverted;
        elsif msb = '0' then
            output <= sawtooth;
        end if;
        
        --triangle <= resize(output * 2, triangle'length);
    end process triangleToggle;
    triangle <= shift_left(output, 1);
END ARCHITECTURE studentVersion;
