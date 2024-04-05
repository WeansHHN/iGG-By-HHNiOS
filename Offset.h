#include <Foundation/Foundation.h>
#include <mach/mach.h>
#include <mach-o/dyld.h>
#include <mach/mach_traps.h>
#include <substrate.h>

bool hasASLR() {
    const struct mach_header *mach;
    mach = _dyld_get_image_header(0);
    if (mach->flags & MH_PIE) {
    return TRUE;
} else {
 return FALSE;
}
}

long long get_slide()
{
    return _dyld_get_image_vmaddr_slide(0);
}
long long calculateAddress(long long offset) {
    if (hasASLR()) {
    long long slide = get_slide();
    return (slide + offset);
    } else {
    return offset;
    }
}

bool getType(unsigned int data)
{
int a = data & 0xffff8000;
int b = a + 0x00008000;
int c = b & 0xffff7fff;
return c;
}

bool patchOffset(long long offset,  unsigned int data) {
    kern_return_t err;
    mach_port_t port = mach_task_self();
    long long address = calculateAddress(offset); 
    err = vm_protect(port, (long long) address, sizeof(data), NO,VM_PROT_READ | VM_PROT_WRITE | VM_PROT_COPY); 
    if (err != KERN_SUCCESS) {
       return FALSE;
    }

    if(getType(data))
    {
        data = CFSwapInt32(data);
        err = vm_write(port, address, (long long)&data, sizeof(data));
    }
    else
    {
        data = (unsigned short)data;
        data = CFSwapInt16(data);
        err = vm_write(port, address, (long long)&data, sizeof(data));
    }
    if (err != KERN_SUCCESS) {
    return FALSE;
    }
 
    err = vm_protect(port, (long long)address, sizeof(data), NO,VM_PROT_READ | VM_PROT_EXECUTE);
      return TRUE;
}
