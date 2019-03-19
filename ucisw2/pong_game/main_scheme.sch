<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="RGB(2:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="RGB(2:0)" />
        <blockdef name="vga_module">
            <timestamp>2019-3-19T11:42:2</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-220" height="24" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="vga_module" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin name="x_cord(9:0)" />
            <blockpin name="pilka_x(9:0)" />
            <blockpin name="pilka_y(8:0)" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin name="odbicie_x" />
            <blockpin name="odbicie_y" />
            <blockpin signalname="RGB(2:0)" name="RGB(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1232" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1232" y1="912" y2="912" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="912" name="CLK" orien="R180" />
        <branch name="VGA_HS">
            <wire x2="1648" y1="912" y2="912" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="912" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="1648" y1="976" y2="976" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="976" name="VGA_VS" orien="R0" />
        <branch name="RGB(2:0)">
            <wire x2="1648" y1="1168" y2="1168" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1168" name="RGB(2:0)" orien="R0" />
    </sheet>
</drawing>