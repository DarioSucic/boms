file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\slice\iter.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\intrinsics.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\slice\iter\macros.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\result.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\cmp.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\alloc\src\alloc.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\fmt\mod.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\iter\adapters\zip.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\iter\range.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\alloc\src\raw_vec.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\alloc\src\vec\mod.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\num\uint_macros.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\ptr\mod.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\iter\adapters\enumerate.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\slice\specialize.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\option.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\ptr\mut_ptr.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\iter\traits\iterator.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\time.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\ptr\non_null.rs does not exist!
 fn main() {
 push    rbp
 push    r15
 push    r14
 push    r13
 push    r12
 push    rsi
 push    rdi
 push    rbx
 sub     rsp, 712
 lea     rbp, [rsp, +, 128]
     mov     ecx, 1048576
     mov     edx, 8
 let mut wins = [0; N];
 vxorps  xmm0, xmm0, xmm0
 vmovapd xmmword, ptr, [rbp, +, 560], xmm7
 vmovapd xmmword, ptr, [rbp, +, 544], xmm6
 mov     qword, ptr, [rbp, +, 536], -2
 vmovaps xmmword, ptr, [rbp, +, 96], xmm0
 mov     qword, ptr, [rbp, +, 112], 0
     call    __rust_alloc
     test    rax, rax
     je      .LBB14_1
     vmovapd xmm0, xmmword, ptr, [rip, +, __xmm@00000000000000000000000000010000]
     lea     rdi, [rbp, +, 328]
     mov     qword, ptr, [rbp, +, 232], rax
     xor     edx, edx
     xor     r14d, r14d
     vmovupd xmmword, ptr, [rbp, +, 240], xmm0
     mov     qword, ptr, [rbp, +, 432], rdx
     mov     qword, ptr, [rbp, +, 440], rax
     cmp     r14, 65535
     ja      .LBB14_125
.LBB14_5:
     rng: SmallRng::from_entropy(), (src\agent\random.rs:18)
     mov     rcx, rdi
     call    rand_core::SeedableRng::from_entropy
     Self { (src\agent\random.rs:17)
     vmovups ymm0, ymmword, ptr, [rbp, +, 328]
     vmovups ymmword, ptr, [rbp, +, 48], ymm0
     rng: SmallRng::from_entropy(), (src\agent\random.rs:18)
     mov     rcx, rdi
     vzeroupper
     call    rand_core::SeedableRng::from_entropy
     Self { (src\agent\random.rs:17)
     vmovups ymm0, ymmword, ptr, [rbp, +, 328]
     vmovups ymmword, ptr, [rbp, +, 16], ymm0
     rng: SmallRng::from_entropy(), (src\agent\random.rs:18)
     mov     rcx, rdi
     vzeroupper
     call    rand_core::SeedableRng::from_entropy
     Self { (src\agent\random.rs:17)
     vmovups ymm0, ymmword, ptr, [rbp, +, 328]
     vmovups ymmword, ptr, [rbp, -, 16], ymm0
     rng: SmallRng::from_entropy(), (src\agent\random.rs:18)
     mov     rcx, rdi
     vzeroupper
     call    rand_core::SeedableRng::from_entropy
     Self { (src\agent\random.rs:17)
     vmovups ymm0, ymmword, ptr, [rbp, +, 328]
     vmovups ymmword, ptr, [rbp, -, 48], ymm0
     rng: SmallRng::from_entropy(), (src\agent\random.rs:18)
     mov     rcx, rdi
     vzeroupper
     call    rand_core::SeedableRng::from_entropy
     Self { (src\agent\random.rs:17)
     vmovups ymm0, ymmword, ptr, [rbp, +, 328]
     vmovups ymmword, ptr, [rbp, -, 80], ymm0
 let st = Instant::now();
 vzeroupper
 call    std::time::Instant::now
 let winner = play_game(agents);
 lea     rcx, [rbp, +, 48]
 let st = Instant::now();
 mov     qword, ptr, [rbp, +, 80], rax
 mov     dword, ptr, [rbp, +, 88], edx
 lea     r9, [rip, +, __unnamed_5]
 let winner = play_game(agents);
 lea     r8, [rbp, -, 16]
 lea     rdx, [rbp, -, 48]
 mov     qword, ptr, [rbp, +, 328], rcx
 lea     rcx, [rbp, +, 16]
 mov     qword, ptr, [rbp, +, 336], r9
 mov     qword, ptr, [rbp, +, 344], rcx
 mov     qword, ptr, [rbp, +, 352], r9
 mov     qword, ptr, [rbp, +, 360], r8
 mov     qword, ptr, [rbp, +, 368], r9
 mov     qword, ptr, [rbp, +, 376], rdx
 lea     rdx, [rip, +, __unnamed_6]
 lea     rcx, [rbp, -, 80]
 lea     r8, [rbp, +, 456]
 mov     qword, ptr, [rbp, +, 384], r9
 mov     qword, ptr, [rbp, +, 392], rcx
 mov     qword, ptr, [rbp, +, 400], r9
 mov     qword, ptr, [rbp, +, 408], r8
 mov     qword, ptr, [rbp, +, 416], rdx
 let mut rng = SmallRng::from_entropy();
 lea     rcx, [rbp, +, 136]
 call    rand_core::SeedableRng::from_entropy
 let mut deck = DECK;
 vmovupd ymm0, ymmword, ptr, [rip, +, __unnamed_7+20]
 vmovups ymm1, ymmword, ptr, [rip, +, __unnamed_7]
 mov     rcx, qword, ptr, [rbp, +, 136]
 mov     r11, qword, ptr, [rbp, +, 144]
 mov     rbx, qword, ptr, [rbp, +, 160]
 mov     rdx, qword, ptr, [rbp, +, 152]
 inc     r14
 mov     r8d, 52
 vmovupd ymmword, ptr, [rbp, +, 484], ymm0
 vmovups ymmword, ptr, [rbp, +, 464], ymm1
.LBB14_13:
     lzcnt   edi, r8d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    r9d, r8d, edi
     dec     r9d
.LBB14_14:
     lea     rsi, [rcx, +, rbx]
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rdi, r11
     shl     rdi, 17
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rsi, rsi, 41
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rdi
     add     rsi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rsi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rsi, r8
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     r9d, esi
     jb      .LBB14_14
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rsi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 463]
     lea     r9, [r8, -, 1]
     mov     al, byte, ptr, [rbp, +, rsi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 463], al
     mov     byte, ptr, [rbp, +, rsi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_16:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_16
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 462]
     lea     r9, [r8, -, 2]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 462], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_18:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_18
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 461]
     lea     r9, [r8, -, 3]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 461], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_20:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_20
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 460]
     lea     r9, [r8, -, 4]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 460], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_22:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_22
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 459]
     lea     r9, [r8, -, 5]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 459], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_24:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_24
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 458]
     lea     r9, [r8, -, 6]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 458], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_26:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_26
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 457]
     lea     r9, [r8, -, 7]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 457], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_28:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_28
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 456]
     lea     r9, [r8, -, 8]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 456], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_30:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_30
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 455]
     lea     r9, [r8, -, 9]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 455], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_32:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_32
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 454]
     lea     r9, [r8, -, 10]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 454], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_34:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_34
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 453]
     lea     r9, [r8, -, 11]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 453], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_36:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_36
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 452]
     lea     r9, [r8, -, 12]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 452], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_38:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_38
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 451]
     lea     r9, [r8, -, 13]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 451], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_40:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_40
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 450]
     lea     r9, [r8, -, 14]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 450], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_42:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_42
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 449]
     lea     r9, [r8, -, 15]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 449], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_44:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_44
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r10b, byte, ptr, [rbp, +, r8, +, 448]
     lea     r9, [r8, -, 16]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 448], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r10b
     lzcnt   r10d, r9d
     (range << range.leading_zeros()).wrapping_sub(1) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:544)
     shlx    esi, r9d, r10d
     dec     esi
.LBB14_46:
     lea     rax, [rcx, +, rbx]
     self.s[2] ^= self.s[0]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:78)
     xor     rdx, rcx
     self.s[3] ^= self.s[1]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:79)
     xor     rbx, r11
     rorx    rdi, rax, 41
     let t = self.s[1] << 17; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:76)
     mov     rax, r11
     shl     rax, 17
     self.s[1] ^= self.s[2]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:80)
     xor     r11, rdx
     add     rdi, rcx
     self.s[0] ^= self.s[3]; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:81)
     xor     rcx, rbx
     self.s[2] ^= t; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:83)
     xor     rdx, rax
     rorx    rbx, rbx, 19
     (self.next_u64() >> 32) as u32 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\rngs\xoshiro256plusplus.rs:66)
     shr     rdi, 32
     let tmp = (self as $wide) * (x as $wide); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:27)
     imul    rdi, r9
     if lo <= zone { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\uniform.rs:550)
     cmp     esi, edi
     jb      .LBB14_46
     ((tmp >> $shift) as $ty, tmp as $ty) (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\rand-0.8.5\src\distributions\utils.rs:28)
     shr     rdi, 32
     mov     r9b, byte, ptr, [rbp, +, r8, +, 447]
     lea     r10, [r8, -, 17]
     mov     al, byte, ptr, [rbp, +, rdi, +, 464]
     mov     byte, ptr, [rbp, +, r8, +, 447], al
     mov     byte, ptr, [rbp, +, rdi, +, 464], r9b
     mov     r8, r10
     cmp     r10, 1
     ja      .LBB14_13
 let mut hands = deck.deal_hands::<N>();
 mov     qword, ptr, [rbp, +, 136], rcx
 mov     qword, ptr, [rbp, +, 160], rbx
 mov     qword, ptr, [rbp, +, 144], r11
 mov     qword, ptr, [rbp, +, 152], rdx
 lea     rcx, [rbp, +, 256]
 lea     rdx, [rbp, +, 464]
 vzeroupper
 call    boms::types::Deck::deal_hands
     ArrayVec { xs: MaybeUninit::uninit().assume_init(), len: 0 } (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:83)
     mov     esi, 6
     mov     qword, ptr, [rbp, +, 128], r14
     mov     dword, ptr, [rbp, +, 168], 0
 let mut skips = [false; N];
 mov     word, ptr, [rbp, +, 532], 0
 mov     dword, ptr, [rbp, +, 528], 0
 xor     ebx, ebx
 xor     r13d, r13d
 xor     r14d, r14d
 jmp     .LBB14_50
.LBB14_114:
     drop(g); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:530)
     mov     rcx, qword, ptr, [rbp, +, 424]
.LBB14_115:
     pub const fn is_empty(&self) -> bool { self.len() == 0 } (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:123)
     sub     r8d, ecx
     mov     rsi, r9
     self.len = length as LenUint; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:543)
     mov     dword, ptr, [r15], r8d
 if hand.is_empty() {
 je      .LBB14_116
.LBB14_50:
     mov     r12, r13
     mov     rax, rbx
     mov     ebx, 0
     mov     r13d, 0
     cmp     rax, 5
     ja      .LBB14_50
 if unsafe { *skips.get_unchecked(i) } {
 cmp     byte, ptr, [rbp, +, r12, +, 528], 0
     lea     rdx, [r12, +, 1]
 je      .LBB14_79
     mov     ebx, 0
     mov     r13d, 0
     cmp     rax, 4
     ja      .LBB14_50
 cmp     byte, ptr, [rbp, +, r12, +, 529], 0
     lea     rcx, [r12, +, 2]
 je      .LBB14_80
     mov     ebx, 0
     mov     r13d, 0
     cmp     rax, 3
     ja      .LBB14_50
 cmp     byte, ptr, [rbp, +, r12, +, 530], 0
     lea     rdx, [r12, +, 3]
 je      .LBB14_81
     mov     ebx, 0
     mov     r13d, 0
     cmp     rax, 2
     ja      .LBB14_50
 cmp     byte, ptr, [rbp, +, r12, +, 531], 0
     lea     rdi, [r12, +, 4]
 je      .LBB14_82
     mov     ebx, 0
     mov     r13d, 0
     cmp     rax, 1
     ja      .LBB14_50
 cmp     byte, ptr, [rbp, +, r12, +, 532], 0
     lea     rcx, [r12, +, 5]
 je      .LBB14_83
     mov     ebx, 0
     mov     r13d, 0
     test    rax, rax
     jne     .LBB14_50
 cmp     byte, ptr, [rbp, +, rcx, +, 528], 0
 mov     ebx, 0
 mov     r13d, 0
 jne     .LBB14_50
     lea     rdx, [rax, +, 5]
     add     rax, 6
     add     r12, 6
     mov     rbx, rax
     mov     r13, r12
     mov     rax, rdx
     mov     r12, rcx
 if players_in_round == 1 {
 cmp     rsi, 1
 je      .LBB14_85
 jmp     .LBB14_88
.LBB14_79:
     lea     rbx, [rax, +, 1]
     mov     r13, rdx
 cmp     rsi, 1
 je      .LBB14_85
 jmp     .LBB14_88
.LBB14_80:
     lea     rdi, [rax, +, 1]
     add     rax, 2
     mov     r13, rcx
     mov     r12, rdx
     mov     rbx, rax
     mov     rax, rdi
 cmp     rsi, 1
 je      .LBB14_85
 jmp     .LBB14_88
.LBB14_81:
     lea     rdi, [rax, +, 2]
     add     rax, 3
     mov     r13, rdx
     mov     r12, rcx
     mov     rbx, rax
     mov     rax, rdi
 cmp     rsi, 1
 je      .LBB14_85
 jmp     .LBB14_88
.LBB14_82:
     lea     rcx, [rax, +, 3]
     add     rax, 4
     mov     r13, rdi
     mov     r12, rdx
     mov     rbx, rax
     mov     rax, rcx
 cmp     rsi, 1
 je      .LBB14_85
 jmp     .LBB14_88
.LBB14_83:
     lea     rdx, [rax, +, 4]
     add     rax, 5
     mov     r13, rcx
     mov     r12, rdi
     mov     rbx, rax
     mov     rax, rdx
 cmp     rsi, 1
 jne     .LBB14_88
.LBB14_85:
     if new_len < len { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec_impl.rs:78)
     cmp     dword, ptr, [rbp, +, 168], 0
     je      .LBB14_87
     self.len = length as LenUint; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:713)
     mov     dword, ptr, [rbp, +, 168], 0
.LBB14_87:
     mov     esi, 6
     xor     r14d, r14d
     mov     word, ptr, [rbp, +, 532], 0
     mov     dword, ptr, [rbp, +, 528], 0
.LBB14_88:
 if let Some((card, k)) = agent.play_turn(&hand, &stack, n) {
 lea     rdi, [rax, +, 2*rax]
 shl     rax, 4
 mov     rcx, qword, ptr, [rbp, +, rax, +, 328]
 mov     rax, qword, ptr, [rbp, +, rax, +, 336]
 lea     r15, [rbp, +, 4*rdi, +, 256]
 lea     r8, [rbp, +, 168]
 mov     r9d, r14d
 mov     rdx, r15
 call    qword, ptr, [rax, +, 24]
 cmp     al, 15
 jne     .LBB14_90
 skips[i] = true;
 cmp     r12, 5
 ja      .LBB14_94
 mov     byte, ptr, [rbp, +, r12, +, 528], 1
 players_in_round -= 1;
 dec     rsi
 jmp     .LBB14_50
.LBB14_90:
     if self.len() < Self::CAPACITY { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec_impl.rs:43)
     mov     ecx, dword, ptr, [rbp, +, 168]
     cmp     rcx, 56
     jae     .LBB14_91
 let hand_pre_len = hand.len();
 mov     r8d, dword, ptr, [r15]
     mov     byte, ptr, [rbp, +, rcx, +, 172], al
     self.set_len(len + 1); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec_impl.rs:57)
     inc     ecx
     test    r14b, r14b
 if n == None {
 movzx   r14d, r14b
     self.len = length as LenUint; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:543)
     mov     dword, ptr, [r15], 0
     let mut g = BackshiftOnDrop { v: self, processed_len: 0, deleted_cnt: 0, original_len }; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:494)
     mov     qword, ptr, [rbp, +, 448], 0
     mov     qword, ptr, [rbp, +, 424], 0
     mov     r9, rsi
     self.len = length as LenUint; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:713)
     mov     dword, ptr, [rbp, +, 168], ecx
 if n == None {
 movzx   ecx, dl
 cmove   r14d, ecx
 let hand_pre_len = hand.len();
 test    r8, r8
     while g.processed_len != original_len { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:519)
     je      .LBB14_96
 if rem > 0 {
 test    dl, dl
 je      .LBB14_105
 if *x == card {
 lea     rcx, [rbp, +, 260]
 xor     esi, esi
 lea     rcx, [rcx, +, 4*rdi]
.LBB14_99:
     #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)] (src\types.rs:3)
     cmp     byte, ptr, [rcx, +, rsi], al
 if *x == card {
 je      .LBB14_100
     if !process_one::<F, T, CAP, false>(&mut f, &mut g) { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:520)
     inc     rsi
     cmp     r8, rsi
     jne     .LBB14_99
     jmp     .LBB14_110
.LBB14_96:
     while g.processed_len != original_len { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:526)
     xor     ecx, ecx
     xor     esi, esi
     cmp     rsi, r8
     jne     .LBB14_102
     jmp     .LBB14_115
.LBB14_105:
     if !process_one::<F, T, CAP, false>(&mut f, &mut g) { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:520)
     mov     eax, r8d
     lea     rcx, [r8, -, 1]
     and     eax, 7
     cmp     rcx, 7
     jb      .LBB14_108
     mov     ecx, r8d
     and     ecx, -8
.LBB14_107:
     add     rcx, -8
     jne     .LBB14_107
.LBB14_108:
     test    rax, rax
     je      .LBB14_110
.LBB14_109:
     dec     rax
     jne     .LBB14_109
.LBB14_110:
     xor     ecx, ecx
     jmp     .LBB14_115
.LBB14_100:
     g.processed_len += 1; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:503)
     inc     rsi
 rem -= 1;
 dec     dl
 mov     ecx, 1
 mov     qword, ptr, [rbp, +, 424], 1
     g.processed_len += 1; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:503)
     mov     qword, ptr, [rbp, +, 448], rsi
     while g.processed_len != original_len { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:526)
     cmp     rsi, r8
     jne     .LBB14_102
     jmp     .LBB14_115
.LBB14_112:
     let hole_slot = g.v.as_mut_ptr().add(g.processed_len - g.deleted_cnt); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:510)
     mov     rdi, rsi
     sub     rdi, qword, ptr, [rbp, +, 424]
     mov     byte, ptr, [rdi, +, r15, +, 4], cl
     lea     rcx, [rbp, +, 448]
.LBB14_113:
     while g.processed_len != original_len { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:526)
     inc     rsi
     mov     qword, ptr, [rcx], rsi
     mov     rsi, qword, ptr, [rbp, +, 448]
     cmp     rsi, r8
     je      .LBB14_114
.LBB14_102:
     if !f(unsafe { &mut *cur }) { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:502)
     movzx   ecx, byte, ptr, [rsi, +, r15, +, 4]
     #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)] (src\types.rs:3)
     cmp     cl, al
 if *x == card {
 jne     .LBB14_112
 test    dl, dl
 je      .LBB14_112
     g.processed_len += 1; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:503)
     inc     rsi
 rem -= 1;
 dec     dl
 lea     rcx, [rbp, +, 424]
     g.processed_len += 1; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:503)
     mov     qword, ptr, [rbp, +, 448], rsi
     g.deleted_cnt += 1; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:504)
     mov     rsi, qword, ptr, [rbp, +, 424]
     jmp     .LBB14_113
.LBB14_116:
 let dt = st.elapsed();
 lea     rcx, [rbp, +, 80]
 call    std::time::Instant::elapsed
 mov     r14, qword, ptr, [rbp, +, 128]
 lea     rdi, [rbp, +, 328]
     mov     ebx, edx
     mov     rdx, qword, ptr, [rbp, +, 432]
     mov     rsi, rax
     cmp     rdx, qword, ptr, [rbp, +, 240]
     jne     .LBB14_118
     lea     rcx, [rbp, +, 232]
     call    alloc::raw_vec::RawVec<T,A>::reserve_for_push
     mov     rax, qword, ptr, [rbp, +, 232]
     mov     rdx, qword, ptr, [rbp, +, 248]
     jmp     .LBB14_121
.LBB14_118:
     mov     rax, qword, ptr, [rbp, +, 440]
.LBB14_121:
     mov     rcx, rdx
     shl     rcx, 4
     inc     rdx
     mov     qword, ptr, [rax, +, rcx], rsi
     mov     dword, ptr, [rax, +, rcx, +, 8], ebx
     mov     qword, ptr, [rbp, +, 248], rdx
 wins[winner] += 1;
 cmp     r12, 5
 ja      .LBB14_123
 inc     dword, ptr, [rbp, +, 4*r12, +, 96]
 mov     qword, ptr, [rbp, +, 432], rdx
 mov     qword, ptr, [rbp, +, 440], rax
     cmp     r14, 65535
     jbe     .LBB14_5
.LBB14_125:
     vmovsd  xmm6, qword, ptr, [rip, +, __real@4059000000000000]
     vmovsd  xmm7, qword, ptr, [rip, +, __real@3ef0000000000000]
     lea     rdi, [rbp, +, 96]
     lea     r15, [rip, +, _ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17h2ec321b828b4f160E]
     lea     r12, [rip, +, _ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hfb5ea5c76260961bE]
     lea     r13, [rip, +, __unnamed_8]
     lea     r14, [rip, +, __unnamed_9]
     lea     rsi, [rbp, +, 328]
     xor     ebx, ebx
     lea     rax, [rbp, +, 120]
     cmp     rdi, rax
     je      .LBB14_129
.LBB14_127:
 println!("Player {i}: {:.2}%", 100.0 * w as f64 / n_games as f64);
 vcvtsi2sd xmm0, xmm1, dword, ptr, [rdi]
 lea     rax, [rbp, +, 168]
     mov     qword, ptr, [rbp, +, 328], r13
     mov     qword, ptr, [rbp, +, 336], 3
     mov     qword, ptr, [rbp, +, 344], r14
 for (i, &w) in wins.iter().enumerate() {
 mov     qword, ptr, [rbp, +, 464], rbx
     mov     qword, ptr, [rbp, +, 352], 2
 println!("Player {i}: {:.2}%", 100.0 * w as f64 / n_games as f64);
 mov     qword, ptr, [rbp, +, 256], rax
 lea     rax, [rbp, +, 464]
 mov     qword, ptr, [rbp, +, 264], r15
 mov     qword, ptr, [rbp, +, 272], rax
     lea     rax, [rbp, +, 256]
 mov     qword, ptr, [rbp, +, 280], r12
     mov     qword, ptr, [rbp, +, 360], rax
     mov     qword, ptr, [rbp, +, 368], 2
 vmulsd  xmm0, xmm0, xmm6
 vmulsd  xmm0, xmm0, xmm7
 vmovsd  qword, ptr, [rbp, +, 168], xmm0
 mov     rcx, rsi
 call    std::io::stdio::_print
     inc     rbx
     add     rdi, 4
     lea     rax, [rbp, +, 120]
     cmp     rdi, rax
     jne     .LBB14_127
.LBB14_129:
     lea     rax, [rip, +, __unnamed_10]
     lea     rsi, [rip, +, __unnamed_11]
     mov     qword, ptr, [rbp, +, 328], rax
     mov     qword, ptr, [rbp, +, 336], 1
     mov     qword, ptr, [rbp, +, 344], 0
     mov     qword, ptr, [rbp, +, 360], rsi
     mov     qword, ptr, [rbp, +, 368], 0
 println!();
 lea     rcx, [rbp, +, 328]
 call    std::io::stdio::_print
     lea     rax, [rip, +, __unnamed_12]
     mov     qword, ptr, [rbp, +, 328], rax
     mov     qword, ptr, [rbp, +, 336], 1
     mov     qword, ptr, [rbp, +, 344], 0
     mov     qword, ptr, [rbp, +, 360], rsi
     mov     qword, ptr, [rbp, +, 368], 0
 println!("Round times:");
 lea     rcx, [rbp, +, 328]
 call    std::io::stdio::_print
     mov     rax, qword, ptr, [rbp, +, 432]
     mov     r12, rax
     shl     r12, 4
     test    rax, rax
     je      .LBB14_132
     mov     rbx, qword, ptr, [rbp, +, 440]
     xor     ecx, ecx
     xor     eax, eax
     lea     rsi, [rbx, +, r12]
.LBB14_134:
     mov     r8, qword, ptr, [rbx]
     mov     r9d, dword, ptr, [rbx, +, 8]
 .fold(Duration::ZERO, |acc, &x| acc + x)
 mov     edx, eax
 call    <core::time::Duration as core::ops::arith::Add>::add
     add     rbx, 16
     mov     rcx, rax
     mov     eax, edx
     cmp     rbx, rsi
     jne     .LBB14_134
     jmp     .LBB14_136
.LBB14_94:
 skips[i] = true;
 lea     r8, [rip, +, __unnamed_13]
 mov     edx, 6
 mov     rcx, r12
 call    core::panicking::panic_bounds_check
 jmp     .LBB14_124
.LBB14_132:
 xor     eax, eax
 xor     ecx, ecx
.LBB14_136:
     mov     ebx, 1000000000
     mov     rdx, rcx
     mulx    r8, rcx, rbx
     mov     edx, eax
     add     rdx, rcx
     adc     r8, 0
 round_times
 shr     rdx, 16
 mov     rax, r8
 shl     rax, 48
 shr     r8, 16
 or      rdx, rax
 pretty_num(
 lea     rsi, [rbp, +, 256]
 mov     rcx, rsi
 call    boms::main::pretty_num
     lea     rax, [rip, +, __unnamed_14]
 println!(
 lea     r14, [rip, +, _ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h44ead2d01e4cadaeE]
     lea     r15, [rip, +, __unnamed_15]
     lea     rdx, [rbp, +, 168]
 mov     qword, ptr, [rbp, +, 168], rsi
     mov     qword, ptr, [rbp, +, 328], rax
     mov     qword, ptr, [rbp, +, 336], 2
     mov     qword, ptr, [rbp, +, 344], r15
     mov     qword, ptr, [rbp, +, 352], 1
     mov     qword, ptr, [rbp, +, 360], rdx
 mov     qword, ptr, [rbp, +, 176], r14
     mov     qword, ptr, [rbp, +, 368], 1
 lea     rcx, [rbp, +, 328]
 call    std::io::stdio::_print
     mov     rdx, qword, ptr, [rbp, +, 264]
     mov     rsi, qword, ptr, [rbp, +, 432]
     test    rdx, rdx
     je      .LBB14_141
     mov     rcx, qword, ptr, [rbp, +, 256]
     test    rcx, rcx
     je      .LBB14_141
     mov     r8d, 1
     call    __rust_dealloc
.LBB14_141:
     test    rsi, rsi
     je      .LBB14_182
     mov     rdx, qword, ptr, [rbp, +, 440]
     cmp     qword, ptr, [rbp, +, 432], 1
     lea     r13, [rdx, +, 16]
     jne     .LBB14_143
     mov     rsi, rdx
     test    rdx, rdx
     je      .LBB14_182
.LBB14_152:
     mov     edx, 1000000000
 pretty_num(round_times.iter().min().unwrap().as_nanos())
 mov     eax, dword, ptr, [rsi, +, 8]
     mulx    r8, rdx, qword, ptr, [rsi]
     add     rdx, rax
     adc     r8, 0
 lea     rsi, [rbp, +, 256]
 mov     rcx, rsi
 call    boms::main::pretty_num
     lea     rax, [rip, +, __unnamed_16]
     lea     rdx, [rbp, +, 168]
 println!(
 mov     qword, ptr, [rbp, +, 168], rsi
 mov     qword, ptr, [rbp, +, 176], r14
     mov     qword, ptr, [rbp, +, 328], rax
     mov     qword, ptr, [rbp, +, 336], 2
     mov     qword, ptr, [rbp, +, 344], r15
     mov     qword, ptr, [rbp, +, 352], 1
     mov     qword, ptr, [rbp, +, 360], rdx
     mov     qword, ptr, [rbp, +, 368], 1
 lea     rcx, [rbp, +, 328]
 call    std::io::stdio::_print
     mov     rdx, qword, ptr, [rbp, +, 264]
     mov     rsi, qword, ptr, [rbp, +, 440]
     mov     rdi, qword, ptr, [rbp, +, 432]
     test    rdx, rdx
     je      .LBB14_157
     mov     rcx, qword, ptr, [rbp, +, 256]
     test    rcx, rcx
     je      .LBB14_157
     mov     r8d, 1
     call    __rust_dealloc
.LBB14_157:
     cmp     rdi, 1
     jne     .LBB14_158
     mov     rax, rsi
     test    rsi, rsi
     je      .LBB14_188
.LBB14_167:
     mov     edx, 1000000000
 pretty_num(round_times.iter().max().unwrap().as_nanos())
 mov     ecx, dword, ptr, [rax, +, 8]
     mulx    r8, rdx, qword, ptr, [rax]
     add     rdx, rcx
     adc     r8, 0
 lea     rsi, [rbp, +, 256]
 mov     rcx, rsi
 call    boms::main::pretty_num
     lea     rax, [rip, +, __unnamed_17]
     lea     rdx, [rbp, +, 168]
 println!(
 mov     qword, ptr, [rbp, +, 168], rsi
 mov     qword, ptr, [rbp, +, 176], r14
     mov     qword, ptr, [rbp, +, 328], rax
     mov     qword, ptr, [rbp, +, 336], 2
     mov     qword, ptr, [rbp, +, 344], r15
     mov     qword, ptr, [rbp, +, 352], 1
     mov     qword, ptr, [rbp, +, 360], rdx
     mov     qword, ptr, [rbp, +, 368], 1
 lea     rcx, [rbp, +, 328]
 call    std::io::stdio::_print
     mov     rdx, qword, ptr, [rbp, +, 264]
     mov     rsi, qword, ptr, [rbp, +, 440]
     test    rdx, rdx
     je      .LBB14_172
     mov     rcx, qword, ptr, [rbp, +, 256]
     test    rcx, rcx
     je      .LBB14_172
     mov     r8d, 1
     call    __rust_dealloc
.LBB14_172:
     mov     rdx, qword, ptr, [rbp, +, 240]
     test    rdx, rdx
     je      .LBB14_176
     test    rsi, rsi
     je      .LBB14_176
     shl     rdx, 4
     je      .LBB14_176
     mov     r8d, 8
     mov     rcx, rsi
     call    __rust_dealloc
.LBB14_176:
 }
 vmovaps xmm6, xmmword, ptr, [rbp, +, 544]
 vmovaps xmm7, xmmword, ptr, [rbp, +, 560]
 add     rsp, 712
 pop     rbx
 pop     rdi
 pop     rsi
 pop     r12
 pop     r13
 pop     r14
 pop     r15
 pop     rbp
 ret
.LBB14_143:
     lea     rax, [r12, -, 16]
     mov     rcx, r13
     jmp     .LBB14_144
.LBB14_151:
     add     rcx, 16
     add     rax, -16
     mov     rdx, rsi
     je      .LBB14_152
.LBB14_144:
     mov     rbx, qword, ptr, [rdx]
     xor     esi, esi
     mov     edi, 255
     cmp     rbx, qword, ptr, [rcx]
     setne   bl
     jb      .LBB14_146
     mov     sil, bl
     mov     edi, esi
.LBB14_146:
     test    dil, dil
     jne     .LBB14_149
     mov     ebx, dword, ptr, [rdx, +, 8]
     xor     esi, esi
     mov     edi, 255
     cmp     ebx, dword, ptr, [rcx, +, 8]
     setne   bl
     jb      .LBB14_149
     mov     sil, bl
     mov     edi, esi
.LBB14_149:
     mov     rsi, rcx
     cmp     dil, 1
     je      .LBB14_151
     mov     rsi, rdx
     jmp     .LBB14_151
.LBB14_158:
     add     r12, -16
     mov     rax, rsi
     jmp     .LBB14_159
.LBB14_166:
     add     r13, 16
     add     r12, -16
     je      .LBB14_167
.LBB14_159:
     mov     rbx, qword, ptr, [rax]
     xor     edx, edx
     mov     ecx, 255
     cmp     rbx, qword, ptr, [r13]
     setne   bl
     jb      .LBB14_161
     mov     dl, bl
     mov     ecx, edx
.LBB14_161:
     test    cl, cl
     jne     .LBB14_164
     mov     ebx, dword, ptr, [rax, +, 8]
     xor     edx, edx
     mov     ecx, 255
     cmp     ebx, dword, ptr, [r13, +, 8]
     setne   bl
     jb      .LBB14_164
     mov     dl, bl
     mov     ecx, edx
.LBB14_164:
     cmp     cl, 1
     je      .LBB14_166
     mov     rax, r13
     jmp     .LBB14_166
.LBB14_123:
 wins[winner] += 1;
 lea     r8, [rip, +, __unnamed_18]
 mov     edx, 6
 mov     rcx, r12
 call    core::panicking::panic_bounds_check
 jmp     .LBB14_124
.LBB14_91:
     mov     byte, ptr, [rbp, +, 448], al
     lea     rax, [rip, +, __unnamed_2]
     lea     rcx, [rip, +, __unnamed_3]
     lea     r9, [rip, +, __unnamed_19]
     lea     r8, [rbp, +, 448]
     mov     edx, 43
     mov     qword, ptr, [rsp, +, 32], rax
     call    core::result::unwrap_failed
     jmp     .LBB14_124
.LBB14_1:
     mov     ecx, 1048576
     mov     edx, 8
     call    alloc::alloc::handle_alloc_error
     ud2
.LBB14_182:
     lea     rcx, [rip, +, __unnamed_20]
     lea     r8, [rip, +, __unnamed_21]
     mov     edx, 43
     call    core::panicking::panic
     jmp     .LBB14_124
.LBB14_188:
     lea     rcx, [rip, +, __unnamed_20]
     lea     r8, [rip, +, __unnamed_22]
     mov     edx, 43
     call    core::panicking::panic
.LBB14_124:
     ud2
