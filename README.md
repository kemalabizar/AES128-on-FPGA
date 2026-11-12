# AES128-on-FPGA Project
Copyright (c) 2026 Muhammad Kemal Abizar, Galvin Efrem Lesmana, Hanif Abdul Aziz

## Implementation Details
Both encryption and key-scheduling pipeline would be implemented as VHDL on FPGA. Operates on CFB (Cipher Feedback) mode.
Transmit/receive of plaintext, ciphertext etc. between FPGA and CPU uses UART protocol, monitored by RealTerm on the CPU.

## Device Requirements
1. FPGA board: Altera DE1 Cyclone II
2. FPGA development software: Quartus Legacy
3. Serial monitor software: RealTerm
4. Serial connector: PL2303
