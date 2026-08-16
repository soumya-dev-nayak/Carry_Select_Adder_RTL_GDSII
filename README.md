# Carry Select Adder RTL to GDSII Flow

A complete open-source silicon design flow implementation of a Carry Select Adder, from RTL (Register Transfer Level) verilog design to GDSII layout using industry-standard OSIC tools.

## 📋 Project Overview

This project demonstrates a full-stack digital design flow for a **Carry Select Adder**, a high-performance arithmetic circuit. The design is synthesized, placed, and routed using open-source tools, resulting in a complete GDSII layout ready for fabrication on the Sky130 process technology.

The Carry Select Adder optimizes the carry propagation path by computing results for both carry-in values in parallel, making it faster than traditional ripple-carry designs.

## 🛠️ Technology Stack

### Design Tools
- **Yosys** - RTL synthesis from Verilog to gate-level netlist
- **OpenROAD** - Placement, routing, and timing analysis
- **OpenLane** - Complete automated RTL-to-GDSII flow orchestration

### Process Technology
- **Sky130A PDK** - 130nm open-source process design kit

### Environment
- **Docker** - IIC OSIC-Tools container for seamless tool integration and reproducibility

## 🚀 Quick Start

### Prerequisites
Ensure Docker is installed on your system.

### Setup & Execution

1. **Clone the repository**
   ```bash
   git clone https://github.com/soumya-dev-nayak/Carry_Select_Adder_RTL_GDSII.git
   cd Carry_Select_Adder_RTL_GDSII
   ```

2. **Run the OSIC-Tools Docker container**
   ```bash
   docker run -it -v $(pwd):/workspace iic-osic-tools:latest /bin/bash
   ```

3. **Execute the RTL-to-GDSII flow**
   ```bash
   cd /workspace
   openroad flow.tcl
   ```

## 📁 Project Structure

```
Carry_Select_Adder_RTL_GDSII/
├── src/                    # Verilog source files
├── runs/                   # OpenLane output directories
├── flow.tcl               # OpenROAD flow configuration
├── pics/                  # Design visualization images
└── README.md
```

## 🎯 Design Flow

### 1. **Synthesis**
RTL verilog is synthesized using Vivado.

![Vivado Synthesis](https://github.com/soumya-dev-nayak/Carry_Select_Adder_RTL_GDSII/blob/main/pics/Vivado_Synthesized_pic.png?raw=true)

### 2. **Physical Design - Magic View**
Initial placement and routing visualization in Magic, showing the layout structure.

![Magic Layout View](https://github.com/soumya-dev-nayak/Carry_Select_Adder_RTL_GDSII/blob/main/pics/CSA_Magic_view.png?raw=true)

### 3. **Detailed Physical Layout**
Expanded view showing interconnects, standard cells, and metal routing layers.

![Magic Expanded View](https://github.com/soumya-dev-nayak/Carry_Select_Adder_RTL_GDSII/blob/main/pics/CSA_Magic_Expanded_Fill_View.png?raw=true)

### 4. **GDSII Generation**
Complete GDSII layout output with all metal layers and via structures.

![GDSII Layout](https://github.com/soumya-dev-nayak/Carry_Select_Adder_RTL_GDSII/blob/main/pics/CSA_gds.png?raw=true)

### 5. **Layer Analysis**
Detailed view with selective layer transparency for inspection of specific metal layers.

![GDSII Layer View](https://github.com/soumya-dev-nayak/Carry_Select_Adder_RTL_GDSII/blob/main/pics/CSA_gds_layer_removed.png?raw=true)

### 6. **Top-Level Module**
Hierarchical view of the complete design showing module organization.

![Top Module](https://github.com/soumya-dev-nayak/Carry_Select_Adder_RTL_GDSII/blob/main/pics/top_module.png?raw=true)

## 📊 Design Metrics

- **Technology Node**: 130nm (Sky130)
- **Design Type**: Arithmetic logic unit
- **Implementation**: Fully automated using OpenLane flow
- **Output Format**: GDSII (ready for tape-out)

## 📝 Usage Notes

- Modify `flow.tcl` to adjust design parameters and tool settings
- Output results are generated in the `runs/` directory
- GDSII file can be viewed/edited using Magic or KLayout

## 🔗 Resources

- [Sky130 PDK Documentation](https://skywater-pdk.readthedocs.io/)
- [OpenLane Documentation](https://openlane.readthedocs.io/)
- [Yosys Project](http://www.clifford.at/yosys/)
- [OpenROAD Project](https://openroad.readthedocs.io/)

## 👤 Author

**Soumya Dev Nayak**

Feel free to open issues and contribute improvements!

---

**For questions or collaborations, visit the [GitHub repository](https://github.com/soumya-dev-nayak/Carry_Select_Adder_RTL_GDSII)**
