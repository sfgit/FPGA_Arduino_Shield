<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK_BRD" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="UIO(3:0)" />
        <port polarity="Input" name="CLK_BRD" />
        <port polarity="Output" name="UIO(3:0)" />
        <blockdef name="HelloWorldVHD">
            <timestamp>2014-12-9T19:8:31</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Bus_Breakout_4S4B">
            <timestamp>2014-12-9T19:16:20</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="HelloWorldVHD" name="XLXI_1">
            <blockpin signalname="CLK_BRD" name="clk_in" />
            <blockpin signalname="XLXN_4" name="led_out" />
        </block>
        <block symbolname="Bus_Breakout_4S4B" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_4" name="I2" />
            <blockpin signalname="XLXN_4" name="I3" />
            <blockpin signalname="UIO(3:0)" name="O(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1584" y="1280" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK_BRD">
            <wire x2="1568" y1="1248" y2="1248" x1="1184" />
            <wire x2="1584" y1="1248" y2="1248" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1248" name="CLK_BRD" orien="R180" />
        <instance x="2256" y="1472" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="2112" y1="1248" y2="1248" x1="1968" />
            <wire x2="2160" y1="1248" y2="1248" x1="2112" />
            <wire x2="2256" y1="1248" y2="1248" x1="2160" />
            <wire x2="2160" y1="1248" y2="1312" x1="2160" />
            <wire x2="2256" y1="1312" y2="1312" x1="2160" />
            <wire x2="2160" y1="1312" y2="1376" x1="2160" />
            <wire x2="2256" y1="1376" y2="1376" x1="2160" />
            <wire x2="2160" y1="1376" y2="1440" x1="2160" />
            <wire x2="2256" y1="1440" y2="1440" x1="2160" />
        </branch>
        <branch name="UIO(3:0)">
            <wire x2="2656" y1="1248" y2="1248" x1="2640" />
            <wire x2="2944" y1="1248" y2="1248" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2944" y="1248" name="UIO(3:0)" orien="R0" />
    </sheet>
</drawing>