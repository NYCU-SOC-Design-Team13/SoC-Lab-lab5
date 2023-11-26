# [SoC Lab] Lab5
###### tags: `SoC Lab`, `SOC Design`

### Team 13
| Student ID | Name |
|------------|------|
| 311551095  | 林聖博|
| 312551174  | 張祐誠|


###### 附上此篇Hackmd Link: [https://hackmd.io/Ae-A2Z_hTxirA8ZjlSL8mQ](https://hackmd.io/Ae-A2Z_hTxirA8ZjlSL8mQ)

- [\[SoC Lab\] Lab5](#soc-lab-lab5)
  - [Lab 5 Spec](#lab-5-spec)
  - [Practical Step](#practical-step)
  - [Block diagram](#block-diagram)
  - [FPGA utilization](#fpga-utilization)
    - [run\_vivado](#run_vivado)
    - [run\_vivado\_gcd](#run_vivado_gcd)
  - [Explain the function of IP in this design](#explain-the-function-of-ip-in-this-design)
    - [HLS](#hls)
    - [Verilog](#verilog)
  - [Screenshot of Execution result on all workload](#screenshot-of-execution-result-on-all-workload)
  - [Study caravel\_fpga.ipynb, and be familiar with caravel SoC control flow](#study-caravel_fpgaipynb-and-be-familiar-with-caravel-soc-control-flow)
  - [Github link](#github-link)

## Lab 5 Spec
* [https://github.com/bol-edu/caravel-soc_fpga-lab/tree/main/labi](https://github.com/bol-edu/caravel-soc_fpga-lab/tree/main/labi)
    > ![image](https://hackmd.io/_uploads/rkYBq3yST.png)

## Practical Step

1. Run vitis
    - 執行 `run_vitis.sh`
    - 利用腳本執行 Vitis HLS 產生 IP，包含：
        - `caravel_ps`, `output_pin`, `read_romcode` (粉色框)
        > ![截圖 2023-11-26 凌晨12.59.42](https://hackmd.io/_uploads/Bk5-Oj1Hp.png)
        >
        > ![image](https://hackmd.io/_uploads/ryy1ahJHa.png)
2. Run vivado
    - 執行 `run_vivado.sh`, `run_vivado_gcd.sh`
    - 利用腳本執行 vivado 進行 IP 整合與 Block Design
        - `run_vivado.sh`
            > ![截圖 2023-11-26 凌晨2.15.29](https://hackmd.io/_uploads/ByxCKnJHp.png)
        - `run_vivado_gcd.sh`
            > ![截圖 2023-11-26 凌晨1.36.11](https://hackmd.io/_uploads/B1c9xnySp.png)

## Block Diagram
![image](https://hackmd.io/_uploads/HJoBdg6Na.png)

## FPGA Utilization
### run_vivado
> ![image](https://hackmd.io/_uploads/SyGE9eTV6.png)
> ![image](https://hackmd.io/_uploads/ry5Pcg6ET.png)
- Physical Synthesis Optimizations
    > ![截圖 2023-11-26 凌晨2.20.22](https://hackmd.io/_uploads/rJIgi3ySa.png)
- Max delay paths
    > ![截圖 2023-11-26 凌晨2.21.38](https://hackmd.io/_uploads/rygBonkSp.png)
- Slack met
    > ![截圖 2023-11-26 凌晨2.22.19](https://hackmd.io/_uploads/H15Do2krT.png)
- Report Cell Usage
    > <img src="https://hackmd.io/_uploads/rkZ2921Hp.png" alt="" style="width: 60%;"/>

### run_vivado_gcd
> ![截圖 2023-11-26 凌晨2.39.17](https://hackmd.io/_uploads/Hk2v1T1BT.png)

> ![截圖 2023-11-26 凌晨2.40.06](https://hackmd.io/_uploads/rJVck6Jrp.png)
- Physical Synthesis Optimizations
    > ![截圖 2023-11-26 凌晨1.08.38](https://hackmd.io/_uploads/SJYX9o1ra.png)
- Max delay paths
    > ![截圖 2023-11-26 凌晨1.12.29](https://hackmd.io/_uploads/BJc-iiyBa.png)
- Slack met
    > ![image](https://hackmd.io/_uploads/Hycg2jyr6.png)
- Report Cell Usage
    > <img src="https://hackmd.io/_uploads/ry-uyn1S6.png" alt="" style="width: 60%;"/>

## Explain the function of IP in this design

### HLS
* `read_romcode`:
    * Copy PS dram buffer to BRAM base on the size of binary file.
    * Through the AXI-Master.
    * Triggered by `ipReadROMCODE.write(0x00, 1)`.
* `ResetControl`:
    * Use for reset the cpu program.
    * Triggered by `ipOUTPIN.write(0x10, 1)`.
    * After reseting, the RISC-V start running , which fetch the code (instruction) from the spiflash (0x1000_0000). In the meanwhile, when cpu read from spiflash, spiflash receive the signal and ack to cpu data that from Bram.
* `caravel_ps`:
    * Cpu put the data on mprj pins and the `caravel_ps` will pass the value to PS with MMIO.
    * PS will monitor the mprj to get the value.

### Verilog
* `spiflash`:
    > ![image](https://hackmd.io/_uploads/BkRj77aET.png)
    * `csb` as enable when `csb = 0`
    * Use shift buffer for output the value to cpu
    * Get the data from Bram and pass to cpu
    * **SPI Description:**
        > ![image](https://hackmd.io/_uploads/rJ6Wl6gB6.png)
        >
        | Master Output Slave Input (MOSI) | Master Output Slave Input (MOSI) | Serial Clock (SCK) | SS |
        | -------- | -------- | -------- | -------- |
        | From Master to Slave     | From Slave to Master    | Shared clk between Master and Slave     | Select the Slave to transfer     |


## Screenshot of Execution result on all workload
> Run these workload on caravel FPGA
* **counter_wb.hex**
    * `mprj_io` 的 `0x1c` 腳位輸出值為 `0xab610008`
    > ![image](https://hackmd.io/_uploads/SJVACgpNa.png)
    >
    > ![image](https://hackmd.io/_uploads/S1ngpl6VT.png)
* **counter_la.hex**
    * `mprj_io` 的 `0x1c` 腳位輸出值為 `0xab5153d1`
    > ![image](https://hackmd.io/_uploads/SJ0J1ZpE6.png)
    > ![image](https://hackmd.io/_uploads/B1kY6l6N6.png)
* **gcd_la.hex**
    * `mprj_io` 的 `0x1c` 腳位輸出值為 `0xab510041`
    > ![image](https://hackmd.io/_uploads/HJZb1Z64a.png)
    > ![截圖 2023-11-26 下午3.32.19](https://hackmd.io/_uploads/BJQcEOgr6.png)
<!--     > ![image](https://hackmd.io/_uploads/rkby0eTNp.png) -->
<!-- > ![image](https://hackmd.io/_uploads/rJrRaeaNT.png) -->

## Study caravel_fpga.ipynb, and be familiar with caravel SoC control flow

本次 Lab5 的核心主要是理解 Caravel SoC 控制流程，運用不同的 IP（Intellectual Property）來完成資料傳輸和驗證。並集中在 Block Design 階段，產生出實際 IP 使用 FPGA 和 Python code 來執行與驗證設計。

首先，使用 `read_romcode` IP 將 `.hex` 由 DDR(PS side) 傳輸到 BRAM 中。接著，透過 `ResetControl` IP (`output_pin`)，在 PS（Processing System）和 Caravel SoC 上的 `mprj_io` 之間進行溝通。`ResetControl` 主要能夠控制 reset 信號，進而控制 Caravel SoC 的 reset pin 是處於啟動狀態（assert）還是停止狀態（de-assert）。

此外，透過 `mprj_io` 和 `caravel_ps` IP，能夠在執行結束後與 Python code 進行溝通，並使用 AXI Lite interface 。此機制允許我們可以從硬體端接收執行結果並在軟體端進行分析。也因此可以利用 Python code 設定 `ResetControl` IP 中的 reset 訊號，觸發 Caravel SoC 的啟動。當 Firmware 執行完畢後，可以釋放 reset 訊號，讓系統進入待機狀態。

與 Lab4 不同，Lab5 重點在於使用 Python code 而非 Simulator 來執行測試和驗證。以實際應用的測試環境(Remote FPGA)完成資料的傳輸和溝通。

總結本次實驗，Lab5 主要讓我們熟悉對 FPGA、SoC 控制流程、以及 IP 合成與整合的理解，透過實際操作和驗證，並有著先前 Lab 1~4 的經驗，對於這次 Lab 有更加深刻地體會，了解 SoC 設計個階段的意義與原理，並進一步了解軟硬體整合的重要性。


## Github link
* [https://github.com/Sheng08/SoC-Lab-lab5](https://github.com/Sheng08/SoC-Lab-lab5)

---

## :rocket: **補充**
* 由於在執行 `run_vivado_gcd.sh` 會因為虛擬機資源不夠導致無法成功完成，因此需更改`vvd_caravel_fpga_gcd.tcl` 內中進行 **write_bitstream** 的 job 數
    * 由原本 `-job 16` -> `-job 8`
    > ![截圖 2023-11-26 晚上8.30.01](https://hackmd.io/_uploads/HkOIc2lHa.png)
