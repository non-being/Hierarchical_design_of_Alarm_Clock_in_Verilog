# Hierarchical_design_of_Alarm_Clock_in_Verilog

The design is not optimised (bit redundancy, impracticality... ) and not meant for FPGA implementation.
For simplicity, the design considers each 'clk' pulse as a second.

![image](https://github.com/user-attachments/assets/b1ffbd4a-e055-4108-a072-1aa64f52d0c1)

Description for each block:
![image](https://github.com/user-attachments/assets/2f119ced-00b3-428e-a907-252a3d544c72)
Clock_counter: Acts as a clock and returns time outputs. Allows setting time via inputs.

![image](https://github.com/user-attachments/assets/61783db6-8483-4c6d-ab33-cce07026f038)
Alarm_input: Allows setting alarm time via inputs and returns alarm time outputs.

![image](https://github.com/user-attachments/assets/d07fb773-a73c-4326-8ae3-c28529d7b9a2)
Alarm_block: Compares alarm time to current time and return alarm output.

![image](https://github.com/user-attachments/assets/450747c8-7d12-40c8-acf8-e8d80221ad67)
Clock_output: Returns current time as digits.
