library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axilab_master_v1_0_M00_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- The master will start generating data from the C_M_START_DATA_VALUE value
		C_M_BUTTON_BASE_ADDR	: std_logic_vector	:= x"40000000";
		-- The master requires a target slave base address.
    -- The master will initiate read and write transactions on the slave with base address specified here as a parameter.
		C_M_LED_BASE_ADDR	: std_logic_vector	:= x"40010000";
		-- Width of M_AXI address bus. 
    -- The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		-- Width of M_AXI data bus. 
    -- The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		-- Transaction number is the number of write 
    -- and read transactions the master will perform as a part of this example memory test.
		C_M_TRANSACTIONS_NUM	: integer	:= 4
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Initiate AXI transactions
--		INIT_AXI_TXN	: in std_logic;
--		-- Asserts when ERROR is detected
--		ERROR	: out std_logic;
--		-- Asserts when AXI transactions is complete
--		TXN_DONE	: out std_logic;
		-- AXI clock signal
		M_AXI_ACLK	: in std_logic;
		-- AXI active low reset signal
		M_AXI_ARESETN	: in std_logic;
		-- Master Interface Write Address Channel ports. Write address (issued by master)
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type.
    -- This signal indicates the privilege and security level of the transaction,
    -- and whether the transaction is a data access or an instruction access.
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		-- Write address valid. 
    -- This signal indicates that the master signaling valid write address and control information.
		M_AXI_AWVALID	: out std_logic;
		-- Write address ready. 
    -- This signal indicates that the slave is ready to accept an address and associated control signals.
		M_AXI_AWREADY	: in std_logic;
		-- Master Interface Write Data Channel ports. Write data (issued by master)
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. 
    -- This signal indicates which byte lanes hold valid data.
    -- There is one write strobe bit for each eight bits of the write data bus.
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		-- Write valid. This signal indicates that valid write data and strobes are available.
		M_AXI_WVALID	: out std_logic;
		-- Write ready. This signal indicates that the slave can accept the write data.
		M_AXI_WREADY	: in std_logic;
		-- Master Interface Write Response Channel ports. 
    -- This signal indicates the status of the write transaction.
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		-- Write response valid. 
    -- This signal indicates that the channel is signaling a valid write response
		M_AXI_BVALID	: in std_logic;
		-- Response ready. This signal indicates that the master can accept a write response.
		M_AXI_BREADY	: out std_logic;
		-- Master Interface Read Address Channel ports. Read address (issued by master)
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. 
    -- This signal indicates the privilege and security level of the transaction, 
    -- and whether the transaction is a data access or an instruction access.
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		-- Read address valid. 
    -- This signal indicates that the channel is signaling valid read address and control information.
		M_AXI_ARVALID	: out std_logic;
		-- Read address ready. 
    -- This signal indicates that the slave is ready to accept an address and associated control signals.
		M_AXI_ARREADY	: in std_logic;
		-- Master Interface Read Data Channel ports. Read data (issued by slave)
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the read transfer.
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is signaling the required read data.
		M_AXI_RVALID	: in std_logic;
		-- Read ready. This signal indicates that the master can accept the read data and response information.
		M_AXI_RREADY	: out std_logic
	);
end axilab_master_v1_0_M00_AXI;

architecture implementation of axilab_master_v1_0_M00_AXI is

	-- Example State machine to initialize counter, initialize write transactions, 
	 -- initialize read transactions and comparison of read data with the 
	 -- written data words.
	 type state is ( IDLE, -- This state initiates AXI4Lite transaction
	 							-- after the state machine changes state to INIT_WRITE
	 							-- when there is 0 to 1 transition on INIT_AXI_TXN
	 				BTN_READ,  -- This state initializes read transaction
                                             -- once reads are done, the state machine 
                                             -- changes state to INIT_WRITE 
	 				LEDS_WRITE -- These states initializes write transaction
	 				);-- once writes are done, the state machine 
	 							-- changes state to IDLE 

	 signal mst_exec_state  : state ; 

	-- AXI4LITE signals
	--write address valid
	signal axi_awvalid	: std_logic;
	--write data valid
	signal axi_wvalid	: std_logic;
	--read address valid
	signal axi_arvalid	: std_logic;
	--read data acceptance
	signal axi_rready	: std_logic;
	--write response acceptance
	signal axi_bready	: std_logic;
	--write data
	signal axi_wdata	: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	--Asserts when there is a write response error
	signal write_resp_error	: std_logic;
	--Asserts when there is a read response error
	signal read_resp_error	: std_logic;
	--A pulse to initiate a write transaction
	signal start_single_write	: std_logic;
	--A pulse to initiate a read transaction
	signal start_single_read	: std_logic;
	--Asserts when a single beat write transaction is issued and remains asserted till the completion of write trasaction.
	signal write_issued	: std_logic;
	--Asserts when a single beat read transaction is issued and remains asserted till the completion of read trasaction.
	signal read_issued	: std_logic;
	--Registered read data
	signal reg_rdata	: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	--Registered read data -Wei
	signal reg_wdata   : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);

begin
	-- I/O Connections assignments

	--slave write address
	M_AXI_AWADDR	<= std_logic_vector (unsigned(C_M_LED_BASE_ADDR));
	--AXI 4 write data
	M_AXI_WDATA	<= axi_wdata;
	M_AXI_AWPROT	<= "000";
	M_AXI_AWVALID	<= axi_awvalid;
	--Write Data(W)
	M_AXI_WVALID	<= axi_wvalid;
	--Set all byte strobes in this example
	M_AXI_WSTRB	<= "1111";
	--Write Response (B)
	M_AXI_BREADY	<= axi_bready;
	--Read Address (AR)
	M_AXI_ARADDR	<= std_logic_vector(unsigned(C_M_BUTTON_BASE_ADDR));
	M_AXI_ARVALID	<= axi_arvalid;
	M_AXI_ARPROT	<= "001";
	--Read and Read Response (R)
	M_AXI_RREADY	<= axi_rready;

	----------------------
	--Write Address Channel
	----------------------

	-- The purpose of the write address channel is to request the address and 
	-- command information for the entire transaction.  It is a single beat
	-- of information.

	-- Note for this example the axi_awvalid/axi_wvalid are asserted at the same
	-- time, and then each is deasserted independent from each other.
	-- This is a lower-performance, but simplier control scheme.

	-- AXI VALID signals must be held active until accepted by the partner.

	-- A data transfer is accepted by the slave when a master has
	-- VALID data and the slave acknoledges it is also READY. While the master
	-- is allowed to generated multiple, back-to-back requests by not 
	-- deasserting VALID, this design will add rest cycle for
	-- simplicity.

	-- Since only one outstanding transaction is issued by the user design,
	-- there will not be a collision between a new request and an accepted
	-- request on the same clock cycle. 

	  process(M_AXI_ACLK)                                                          
	  begin                                                                             
	    if (rising_edge (M_AXI_ACLK)) then                                              
	      --Only VALID signals must be deasserted during reset per AXI spec             
	      --Consider inverting then registering active-low reset for higher fmax        
	      if (M_AXI_ARESETN = '0' or mst_exec_state = IDLE) then                                                
	        axi_awvalid <= '0';                                                         
	      else                                                                          
	        --Signal a new address/data command is available by user logic              
	        if (start_single_write = '1') then                                          
	          axi_awvalid <= '1';                                                       
	        elsif (M_AXI_AWREADY = '1' and axi_awvalid = '1') then                      
	          --Address accepted by interconnect/slave (issue of M_AXI_AWREADY by slave)
	          axi_awvalid <= '0';                                                       
	        end if;                                                                     
	      end if;                                                                       
	    end if;                                                                         
	  end process;                                                                      

	----------------------
	--Write Data Channel
	----------------------

	--The write data channel is for transfering the actual data.
	--The data generation is speific to the example design, and 
	--so only the WVALID/WREADY handshake is shown here

	   process(M_AXI_ACLK)                                                 
	   begin                                                                         
	     if (rising_edge (M_AXI_ACLK)) then                                          
	       if (M_AXI_ARESETN = '0' or mst_exec_state = IDLE ) then                                            
	         axi_wvalid <= '0';                                                      
	       else                                                                      
	         if (start_single_write = '1') then                                      
	           --Signal a new address/data command is available by user logic        
	           axi_wvalid <= '1';                                                    
	         elsif (M_AXI_WREADY = '1' and axi_wvalid = '1') then                    
	           --Data accepted by interconnect/slave (issue of M_AXI_WREADY by slave)
	           axi_wvalid <= '0';                                                    
	         end if;                                                                 
	       end if;                                                                   
	     end if;                                                                     
	   end process;                                                                  


	------------------------------
	--Write Response (B) Channel
	------------------------------

	--The write response channel provides feedback that the write has committed
	--to memory. BREADY will occur after both the data and the write address
	--has arrived and been accepted by the slave, and can guarantee that no
	--other accesses launched afterwards will be able to be reordered before it.

	--The BRESP bit [1] is used indicate any errors from the interconnect or
	--slave for the entire write burst. This example will capture the error.

	--While not necessary per spec, it is advisable to reset READY signals in
	--case of differing reset latencies between master/slave.

	  process(M_AXI_ACLK)                                            
	  begin                                                                
	    if (rising_edge (M_AXI_ACLK)) then                                 
	      if (M_AXI_ARESETN = '0' or mst_exec_state = IDLE) then                                   
	        axi_bready <= '0';                                             
	      else                                                             
	        if (M_AXI_BVALID = '1' and axi_bready = '0') then              
	          -- accept/acknowledge bresp with axi_bready by the master    
	          -- when M_AXI_BVALID is asserted by slave                    
	           axi_bready <= '1';                                          
	        elsif (axi_bready = '1') then                                  
	          -- deassert after one clock cycle                            
	          axi_bready <= '0';                                           
	        end if;                                                        
	      end if;                                                          
	    end if;                                                            
	  end process;                                                         
	--Flag write errors                                                    
	  write_resp_error <= (axi_bready and M_AXI_BVALID and M_AXI_BRESP(1));


	------------------------------
	--Read Address Channel
	------------------------------

	  -- A new axi_arvalid is asserted when there is a valid read address              
	  -- available by the master. start_single_read triggers a new read                
	  -- transaction                                                                   
	  process(M_AXI_ACLK)                                                              
	  begin                                                                            
	    if (rising_edge (M_AXI_ACLK)) then                                             
	      if (M_AXI_ARESETN = '0' or mst_exec_state = IDLE) then                                               
	        axi_arvalid <= '0';                                                        
	      else                                                                         
	        if (start_single_read = '1') then                                          
	          --Signal a new read address command is available by user logic           
	          axi_arvalid <= '1';                                                      
	        elsif (M_AXI_ARREADY = '1' and axi_arvalid = '1') then                     
	        --RAddress accepted by interconnect/slave (issue of M_AXI_ARREADY by slave)
	          axi_arvalid <= '0';                                                      
	        end if;                                                                    
	      end if;                                                                      
	    end if;                                                                        
	  end process;                                                                     


	----------------------------------
	--Read Data (and Response) Channel
	----------------------------------

	--The Read Data channel returns the results of the read request 
	--The master will accept the read data by asserting axi_rready
	--when there is a valid read data available.
	--While not necessary per spec, it is advisable to reset READY signals in
	--case of differing reset latencies between master/slave.

	  process(M_AXI_ACLK)                                             
	  begin                                                                 
	    if (rising_edge (M_AXI_ACLK)) then                                  
	      if (M_AXI_ARESETN = '0' or mst_exec_state = IDLE) then                                    
	        axi_rready <= '1';                                              
	      else                                                              
	        if (M_AXI_RVALID = '1' and axi_rready = '0') then               
	         -- accept/acknowledge rdata/rresp with axi_rready by the master
	         -- when M_AXI_RVALID is asserted by slave                      
	          axi_rready <= '1';                                            
	        elsif (axi_rready = '1') then                                   
	          -- deassert after one clock cycle                             
	          axi_rready <= '0';                                            
	        end if;                                                         
	      end if;                                                           
	    end if;                                                             
	  end process;                                                          
	                                                                        
	--Flag write errors                                                     
	  read_resp_error <= (axi_rready and M_AXI_RVALID and M_AXI_RRESP(1));  


	----------------------------------
	--User Logic
	----------------------------------

	--Data Stimulus

	-- Write data                                                                          
	    process(M_AXI_ACLK)                                                                
		  begin                                                                             
		    if (rising_edge (M_AXI_ACLK)) then                                              
		      if (M_AXI_WREADY = '1' and axi_wvalid = '1') then                          
		        axi_wdata <= reg_wdata;    	                                    
		      end if;                                                                       
		    end if;                                                                         
		  end process;                                                                      
		                                                                                    
	-- Read data               
              process(M_AXI_ACLK)                                                                
                begin                                                                             
                  if (rising_edge (M_AXI_ACLK)) then                                              
                    if (axi_rready = '1' and M_AXI_RVALID = '1') then                          
                      reg_rdata <= M_AXI_RDATA;                                            
                    end if;                                                                       
                  end if;                                                                         
                end process;                                                                      
                                                                                                  
		                                                                                    
	  --implement master command interface state machine                                           
	  MASTER_EXECUTION_PROC:process(M_AXI_ACLK)                                                         
	  begin                                                                                             
	    if (rising_edge (M_AXI_ACLK)) then                                                              
	      if (M_AXI_ARESETN = '0' ) then                                                                
	        -- reset condition                                                                          
	        -- All the signals are ed default values under reset condition                              
	        mst_exec_state  <= IDLE;                                                            
	        start_single_write <= '0';                                                                  
	        write_issued   <= '0';                                                                      
	        start_single_read  <= '0';                                                                  
	        read_issued  <= '0';                                                                        
	      else                                                                                          
	        -- state transition                                                                         
	        case (mst_exec_state) is                                                                    
	                                                                                                    
	          when IDLE =>                                                                      
	            -- This state is just a pause between READ/WRITE transactions
	            mst_exec_state  <= BTN_READ;                                                        
	                                                                                                    
	          when BTN_READ =>                                                                         
	            -- This state is responsible to issue start_single_read pulse to                        
	            -- initiate a read transaction. Read transactions will be                               
	            -- issued continuously.                                           
	            -- read controller                                                                      
	            if (M_AXI_RVALID = '1' and axi_rready = '1') then                                                              
	              mst_exec_state <= LEDS_WRITE;
                  read_issued   <= '0';
	            else                                                                                    
	              mst_exec_state  <= BTN_READ;                                                         
	                                                                                                    
	              if (axi_arvalid = '0' and M_AXI_RVALID = '0' and                  
	                start_single_read = '0' and read_issued = '0') then                                 
	                start_single_read <= '1';                                                           
	                read_issued   <= '1';                                                               
	              elsif (axi_rready = '1') then                                                         
	                read_issued   <= '0';                                                               
	              else                                                                                  
	                start_single_read <= '0'; --Negate to generate a pulse                              
	              end if;                                                                               
	            end if;                                                                                 
	                                                                                                    
	          when LEDS_WRITE =>                                                                        
                  -- This state is responsible to issue start_single_write pulse to                       
                  -- initiate a write transaction. Write transactions will be                             
                  -- issued continuously.                                          
                  -- write controller                                                                     
                  if (M_AXI_BVALID = '1' and axi_bready='1') then                                                             
                    mst_exec_state <= IDLE;                                                          
                    write_issued   <= '0';                                                              
                  else                                                                                    
                    mst_exec_state  <= LEDS_WRITE;
  
                    if (axi_awvalid = '0' and axi_wvalid = '0' and M_AXI_BVALID = '0' and                 
                      start_single_write = '0' and write_issued = '0') then          
                      start_single_write <= '1';                                                          
                      write_issued  <= '1';                                                               
                    elsif (axi_bready = '1') then                                                         
                      write_issued   <= '0';                                                              
                    else                                                                                  
                      start_single_write <= '0'; --Negate to generate a pulse                             
                    end if;                                                                               
                  end if;                                                                                 
                                                                                                          
--	          when SEGLED_WRITE =>              
--                    -- This state is responsible to issue start_single_write pulse to                       
--                    -- initiate a write transaction. Write transactions will be                             
--                    -- issued continuously.                                          
--                    -- write controller                                                                     
--                    if (M_AXI_BVALID = '1' and axi_bready='1') then                                                             
--                      mst_exec_state <= IDLE;                                                          
--                      write_issued   <= '0';                                                              
--                    else                                                                                    
--                      mst_exec_state  <= SEGLED_WRITE;
    
--                      if (axi_awvalid = '0' and axi_wvalid = '0' and M_AXI_BVALID = '0' and                 
--                        start_single_write = '0' and write_issued = '0') then          
--                        start_single_write <= '1';                                                          
--                        write_issued  <= '1';                                                               
--                      elsif (axi_bready = '1') then                                                         
--                        write_issued   <= '0';                                                              
--                      else                                                                                  
--                        start_single_write <= '0'; --Negate to generate a pulse                             
--                      end if;                                                                               
--                    end if;                                                                                 
                                                                                                            
	          when others  =>                                                                           
	              mst_exec_state  <= IDLE;                                                      
	        end case  ;                                                                                 
	      end if;                                                                                       
	    end if;                                                                                         
	  end process;                                                 

	-- Add user logic here
    process(reg_rdata)
    begin
        if(reg_rdata(1 downto 0)="00")then
            reg_wdata(5 downto 0) <= "100010";
        elsif(reg_rdata(1 downto 0)="01")then
            reg_wdata(5 downto 0) <= "010001";
        elsif(reg_rdata(1 downto 0)="10")then
            reg_wdata(5 downto 0) <= "001100";
        elsif(reg_rdata(1 downto 0)="11")then
            reg_wdata(5 downto 0) <= "110101";
        else
            reg_wdata(5 downto 0) <= "000000";
        end if;
    end process;
	-- User logic ends

end implementation;
