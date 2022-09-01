//
//  Shader.metal
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

#include <metal_stdlib>
using namespace metal;

kernel void shade(  texture2d<float, access::write> tex [[texture(0)]],
                    device float* args [[buffer(0)]],
                    ushort2 gid [[thread_position_in_grid]]) {
    float4 color = float4(abs(sin(args[0])), 1.0, 0.0, 1.0);
    tex.write(color, gid);
}


