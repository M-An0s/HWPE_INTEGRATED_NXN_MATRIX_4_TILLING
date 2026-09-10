<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="Compute_block_slave" top="compute_slave">
    <files>
        <file name="../Compute_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="Compute_block_slave/Compute_slave.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="Compute_block_slave/Compute_slave.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

