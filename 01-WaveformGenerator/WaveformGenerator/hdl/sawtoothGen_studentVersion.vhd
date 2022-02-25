ARCHITECTURE studentVersion OF sawtoothGen IS
    signal counter : unsigned(15 downto 0);
BEGIN

    count: process(reset, clock, en)
    begin
        if en = '1' then
            if reset = '1' then
                counter <= (others => '0');
            elsif rising_edge(clock) then
                counter <= counter + step;
            end if;
        else
            counter <= (others => '0');
        end if;
	end process count;
	
  sawtooth <= counter;

END ARCHITECTURE studentVersion;
