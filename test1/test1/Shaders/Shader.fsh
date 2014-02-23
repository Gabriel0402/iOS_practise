//
//  Shader.fsh
//  test1
//
//  Created by Chenyang  on 2/11/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
