# AutoVDI - vSphere Terraform Modules # 

This repository contains Terraform modules for deploying VDIs to a vSphere environment. I created this repository because I couldn't find any centrally located Terraform modules for deploying VDIs to vSphere. I hope this repository will be useful to others.

##  Limitations 

### Which VDIs? 

Currently, this project only contains Ubuntu and Kali VDIs. I plan to add more VDIs in the future, especially Windows VDIs. 

### Manual Template Creation

Templates must be created before hand with VMware tools installed (and cloud-init if supported) to enable vapps to do its then when kicked off by Terraform. I'm hoping to automate this with Packer in the future as well. 

## License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.