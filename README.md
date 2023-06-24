<div style="text-align: center;">
<b>View mẫu của menu:</b><br><br>

<img style="width: 500px" src="https://github.com/HHNiOS/Menu-IGG-iOS/blob/main/photo_2023-05-16_15-32-42.jpg?raw=true">
</div>

<br>

### Đặc trưng:
* Menu tùy chỉnh
* Độ to nhỏ của menu
* Tùy chỉnh kích cỡ, màu sắc, vị trí của văn bản,...
* Tùy chỉnh màu, chữ
  * Màu nền
  * Màu chữ
  * Tọa độ
  * Màu Button

* Hỗ trợ các loại Code sau
  * IGG CODE
  * Offset code

* Cần mã gốc và mã bù
* Mã nguồn mở

<br>

### Yêu cầu:
* Yêu cầu cài SDK "iPhoneOS11.2.sdk" vào Theos
### Setup menu:
* Kích hoạt menu

```obj-c
//Mở menu bằng 3 ngón tay
  UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.numberOfTapsRequired = 2;      // Cảm ưng đa điểm
    tap.numberOfTouchesRequired = 3;   // Chạm ngón tay số
    [Window addGestureRecognizer:tap];
    [tap addTarget:self action:@selector(expand)]; // Kiểm tra trạng thái
    ]);
```
* Đối với Offset

```obj-c
//Offset vá
patchOffset(0x103685368, 0xC0035FD6);

          }else{
          
//Offset gốc
patchOffset(0x103685368, 0xF657BDA9);
```
* Đối với iGG code

```obj-c
//Ví dụ với code iGG AIM Elsu lỏ vcl của 1 iDol đbrr nào đó 😂😂

JRMemoryEngine engine = JRMemoryEngine(mach_task_self());
        AddrRange range = (AddrRange){0x100000000,0x160000000};
        uint32_t search = 2500;
        engine.JRScanMemory(range, &search, JR_Search_Type_UInt);
        uint32_t search1 = 0;
        engine.JRNearBySearch(0x50, &search, JR_Search_Type_UInt);
        uint32_t search2 = 0;
        engine.JRNearBySearch(0x50, &search2, JR_Search_Type_UInt);
        uint32_t search3 = 25000;
        engine.JRNearBySearch(0x50, &search3, JR_Search_Type_UInt);
        uint32_t search4 = 0;
        engine.JRScanMemory(range, &search4, JR_Search_Type_UInt);
        vector<void*> results = engine.getAllResults();
        uint32_t modify = 25000;
        for(int i =0;i<results.size();i++){
        engine.JRWriteMemory((unsigned long long)(results[i]),&modify,JR_Search_Type_UInt);}
        
          }else{
          
//iGG không cần bite gốc, đồng nghĩa với viêc bật là không tắt được, bạn cần có thêm code iGG để tắt chức năng.

```
###  Thông tin thêm:
* Địt mẹ thằng hắc tơ🐧🐧🐧
<br>

### Credits:
* Me (HHNiOS)
* [x2niosvn (Nguyễn Xuân Nam)](https://github.com/x2niosvn)
  * Vì iGG
  <br>
### [Download](https://github.com/HHNiOS/Menu-IGG-iOS/releases/tag/ios)
<br>
<br>
