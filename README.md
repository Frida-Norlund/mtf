# mtf

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://Frida-Norlund.github.io/mtf.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://Frida-Norlund.github.io/mtf.jl/dev/)
[![Build Status](https://github.com/Frida-Norlund/mtf.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/Frida-Norlund/mtf.jl/actions/workflows/CI.yml?query=branch%3Amaster)
[![Coverage](https://codecov.io/gh/Frida-Norlund/mtf.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/Frida-Norlund/mtf.jl)

This package includes an implementation of a trackingfloat.
The trackingFloat has two feelds, 
- one that keeps track of its current value. this field works as a normal float.
- one that keeps track of the biggest (absolute value) that has been included in generating the float.
