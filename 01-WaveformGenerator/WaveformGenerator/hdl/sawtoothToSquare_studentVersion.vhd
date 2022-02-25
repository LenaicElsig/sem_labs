ARCHITECTURE studentVersion OF sawtoothToSquare IS
    --signal square : unsigned(15 downto 0);
    signal msb : std_ulogic;
BEGIN
    msb <= sawtooth(sawtooth'high);

    squareToggle: process(msb)
    begin
        if msb = '1' then 
            square <= (others => '1');
        elsif msb = '0' then
            square <= (others => '0');
        end if;
    end process squareToggle;
    --
    --square <= (others => '0');
END ARCHITECTURE studentVersion;
