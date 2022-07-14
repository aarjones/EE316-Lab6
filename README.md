# EE316-Lab6
## Aaron R. Jones, Drew Caruso, Nate Sitts
This repository holds our project for EE316 (Computer Engineering Junior Lab) Lab 6 - Text Display on Video using FPGA.

This project described an entirely FPGA-based system which could take inputs from a PS/2 keyboard and display outputs on a VGA monitor.  All keyboard commands (alphanumerics, as well as backspace, carriage return, etc.) could be used.  The AXI protocol was followed for communication between system components.

The system was designed such that a keypress detected on the PS/2 keyboard would cause the ps2_keyboard component to decode the scancode, before sending an interrupt signal to the vga_manager component.  The vga_manager would then save a character map (8x12) into the correct location of a video memory (BRAM).  The vga_display component continually updated the connected monitor, displaying the detected keypresses in random colors onto a solid white background.  
