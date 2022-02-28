file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\intrinsics.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\alloc\src\alloc.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\cmp.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\slice\specialize.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\ptr\non_null.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\iter\range.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\slice\iter.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\alloc\src\vec\mod.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\iter\adapters\enumerate.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\time.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\slice\iter\macros.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\num\uint_macros.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\std\src\thread\local.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\alloc\src\raw_vec.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\slice\mod.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\ptr\mod.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\fmt\mod.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\ptr\mut_ptr.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\iter\traits\iterator.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\option.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\result.rs does not exist!
file /rustc/68369a041cea809a87e5bd80701da90e0e0a4799\library\core\src\iter\adapters\zip.rs does not exist!
 fn main() {
 push    rbp
 push    r15
 push    r14
 push    r13
 push    r12
 push    rsi
 push    rdi
 push    rbx
 sub     rsp, 552
 lea     rbp, [rsp, +, 128]
     mov     ecx, 16777216
     mov     edx, 8
 let mut wins = [0; N];
 vxorps  xmm0, xmm0, xmm0
 vmovapd xmmword, ptr, [rbp, +, 400], xmm7
 vmovapd xmmword, ptr, [rbp, +, 384], xmm6
 mov     qword, ptr, [rbp, +, 376], -2
 vmovaps xmmword, ptr, [rbp, -, 64], xmm0
 mov     qword, ptr, [rbp, -, 48], 0
     call    __rust_alloc
     test    rax, rax
     je      .LBB14_1
     vmovapd xmm0, xmmword, ptr, [rip, +, __xmm@00000000000000000000000000100000]
     movabs  rdi, 5573589319906701683
     movabs  r15, -6884282663029611473
     movabs  r13, -1800455987208640293
     mov     qword, ptr, [rbp, +, 128], rax
     xor     edx, edx
     xor     ecx, ecx
     mov     qword, ptr, [rbp, +, 152], rcx
     vmovupd xmmword, ptr, [rbp, +, 136], xmm0
     cmp     qword, ptr, [rbp, +, 152], 1048575
     mov     qword, ptr, [rbp, +, 336], rdx
     mov     qword, ptr, [rbp, +, 344], rax
     ja      .LBB14_121
.LBB14_5:
     call    fastrand::RNG::__getit
     mov     rcx, rdi
     test    rax, rax
     je      .LBB14_8
     mov     rcx, qword, ptr, [rax]
     add     rcx, r15
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rcx
     xor     rdx, r13
     mov     qword, ptr, [rax], rcx
     mulx    rcx, rax, rcx
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rcx, rax
.LBB14_8:
 &mut RandomAgent::new(),
 mov     qword, ptr, [rbp, -, 8], rcx
     call    fastrand::RNG::__getit
     mov     rcx, rdi
     test    rax, rax
     je      .LBB14_11
     mov     rcx, qword, ptr, [rax]
     add     rcx, r15
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rcx
     xor     rdx, r13
     mov     qword, ptr, [rax], rcx
     mulx    rcx, rax, rcx
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rcx, rax
.LBB14_11:
 &mut RandomAgent::new(),
 mov     qword, ptr, [rbp, -, 16], rcx
     call    fastrand::RNG::__getit
     mov     rcx, rdi
     test    rax, rax
     je      .LBB14_14
     mov     rcx, qword, ptr, [rax]
     add     rcx, r15
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rcx
     xor     rdx, r13
     mov     qword, ptr, [rax], rcx
     mulx    rcx, rax, rcx
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rcx, rax
.LBB14_14:
 &mut RandomAgent::new(),
 mov     qword, ptr, [rbp, -, 24], rcx
     call    fastrand::RNG::__getit
     mov     rcx, rdi
     test    rax, rax
     je      .LBB14_17
     mov     rcx, qword, ptr, [rax]
     add     rcx, r15
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rcx
     xor     rdx, r13
     mov     qword, ptr, [rax], rcx
     mulx    rcx, rax, rcx
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rcx, rax
.LBB14_17:
 &mut RandomAgent::new(),
 mov     qword, ptr, [rbp, -, 32], rcx
     call    fastrand::RNG::__getit
     mov     rcx, rdi
     test    rax, rax
     je      .LBB14_20
     mov     rcx, qword, ptr, [rax]
     add     rcx, r15
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rcx
     xor     rdx, r13
     mov     qword, ptr, [rax], rcx
     mulx    rcx, rax, rcx
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rcx, rax
.LBB14_20:
 &mut RandomAgent::new(),
 mov     qword, ptr, [rbp, -, 40], rcx
 let st = Instant::now();
 call    std::time::Instant::now
 let winner = play_game(agents);
 lea     rcx, [rbp, -, 8]
 let st = Instant::now();
 mov     qword, ptr, [rbp, -, 80], rax
 mov     dword, ptr, [rbp, -, 72], edx
 lea     r9, [rip, +, __unnamed_4]
 let winner = play_game(agents);
 lea     rdx, [rip, +, __unnamed_5]
 lea     r8, [rbp, -, 16]
 mov     qword, ptr, [rbp, +, 232], rcx
 lea     rcx, [rbp, +, 360]
 mov     qword, ptr, [rbp, +, 240], r9
 mov     qword, ptr, [rbp, +, 248], rcx
 mov     qword, ptr, [rbp, +, 256], rdx
 lea     rdx, [rbp, -, 24]
 mov     qword, ptr, [rbp, +, 264], r8
 mov     qword, ptr, [rbp, +, 272], r9
 lea     r8, [rbp, -, 32]
 mov     qword, ptr, [rbp, +, 280], rdx
 lea     rdx, [rbp, -, 40]
 mov     qword, ptr, [rbp, +, 288], r9
 mov     qword, ptr, [rbp, +, 296], r8
 mov     qword, ptr, [rbp, +, 304], r9
 mov     qword, ptr, [rbp, +, 312], rdx
 mov     qword, ptr, [rbp, +, 320], r9
     call    fastrand::RNG::__getit
     test    rax, rax
     je      .LBB14_24
     mov     rcx, qword, ptr, [rax]
     add     rcx, r15
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rcx
     xor     rdx, r13
     mov     qword, ptr, [rax], rcx
     mulx    rdi, rax, rcx
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rdi, rax
.LBB14_24:
 let mut deck = DECK;
 vmovupd ymm0, ymmword, ptr, [rip, +, __unnamed_6+20]
 vmovups ymm1, ymmword, ptr, [rip, +, __unnamed_6]
 inc     qword, ptr, [rbp, +, 152]
 mov     r8d, 1
 mov     r10b, 1
 vmovupd ymmword, ptr, [rbp, +, 20], ymm0
 vmovups ymmword, ptr, [rbp], ymm1
 jmp     .LBB14_25
.LBB14_43:
     mov     al, byte, ptr, [rbp, +, rcx, +, 2]
     mov     dl, byte, ptr, [rbp, +, r9]
     cmp     rcx, 49
     setb    r10b
     mov     byte, ptr, [rbp, +, rcx, +, 2], dl
     mov     byte, ptr, [rbp, +, r9], al
     cmp     r8, 52
     je      .LBB14_44
.LBB14_25:
     lea     rsi, [rdi, +, r15]
     mov     rcx, r8
     inc     r8
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rsi
     xor     rdx, r13
     mulx    rbx, rax, rsi
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rbx, rax
     (((a as u128) * (b as u128)) >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:215)
     mov     rdx, rbx
     mulx    r9, r9, r8
     imul    rbx, r8
     if lo < n { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:166)
     cmp     rbx, rcx
     ja      .LBB14_33
     mov     rax, rcx
     not     rax
     let t = n.wrapping_neg() % n; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:167)
     xor     edx, edx
     div     r8
     while lo < t { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:168)
     cmp     rbx, rdx
     jae     .LBB14_33
     movabs  r9, 4678178747650328670
     mov     rax, rdx
     add     rdi, r9
.LBB14_28:
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rdi
     xor     rdx, r13
     add     rsi, r15
     mulx    rdx, rbx, rdi
     while lo < t { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:168)
     add     rdi, r15
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rdx, rbx
     mov     rbx, r8
     imul    rbx, rdx
     while lo < t { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:168)
     cmp     rbx, rax
     jb      .LBB14_28
     (((a as u128) * (b as u128)) >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:215)
     mulx    r9, r9, r8
     test    r10b, 1
     je      .LBB14_32
     cmp     r9, 52
     jae     .LBB14_31
.LBB14_33:
     mov     dl, byte, ptr, [rbp, +, r9]
     mov     al, byte, ptr, [rbp, +, rcx]
     lea     rbx, [rsi, +, r15]
     lea     r10, [rcx, +, 2]
     mov     byte, ptr, [rbp, +, rcx], dl
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rbx
     xor     rdx, r13
     mov     byte, ptr, [rbp, +, r9], al
     mulx    rdi, rax, rbx
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rdi, rax
     (((a as u128) * (b as u128)) >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:215)
     mov     rdx, rdi
     mulx    r9, r9, r10
     imul    rdi, r10
     if lo < n { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:166)
     cmp     rdi, r8
     ja      .LBB14_38
     mov     rax, -2
     let t = n.wrapping_neg() % n; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:167)
     xor     edx, edx
     sub     rax, rcx
     div     r10
     while lo < t { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:168)
     cmp     rdi, rdx
     jae     .LBB14_38
     movabs  r8, 4678178747650328670
     mov     rax, rdx
     add     rsi, r8
.LBB14_36:
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rsi
     xor     rdx, r13
     add     rbx, r15
     mulx    rdx, rdi, rsi
     while lo < t { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:168)
     add     rsi, r15
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rdx, rdi
     mov     rdi, r10
     imul    rdi, rdx
     while lo < t { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:168)
     cmp     rdi, rax
     jb      .LBB14_36
     (((a as u128) * (b as u128)) >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:215)
     mulx    r9, r9, r10
     cmp     r9, 51
     ja      .LBB14_31
.LBB14_38:
     mov     dl, byte, ptr, [rbp, +, r9]
     mov     al, byte, ptr, [rbp, +, rcx, +, 1]
     lea     rdi, [rbx, +, r15]
     lea     r8, [rcx, +, 3]
     mov     byte, ptr, [rbp, +, rcx, +, 1], dl
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rdi
     xor     rdx, r13
     mov     byte, ptr, [rbp, +, r9], al
     mulx    rsi, rax, rdi
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rsi, rax
     (((a as u128) * (b as u128)) >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:215)
     mov     rdx, rsi
     mulx    r9, r9, r8
     imul    rsi, r8
     if lo < n { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:166)
     cmp     rsi, r10
     ja      .LBB14_43
     mov     rax, -3
     let t = n.wrapping_neg() % n; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:167)
     xor     edx, edx
     sub     rax, rcx
     div     r8
     while lo < t { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:168)
     cmp     rsi, rdx
     jae     .LBB14_43
     movabs  r9, 4678178747650328670
     mov     rax, rdx
     add     rbx, r9
.LBB14_41:
     let t = u128::from(s) * u128::from(s ^ 0xE7037ED1A0B428DB); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:131)
     mov     rdx, rbx
     xor     rdx, r13
     add     rdi, r15
     mulx    rdx, rsi, rbx
     while lo < t { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:168)
     add     rbx, r15
     (t as u64) ^ (t >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:132)
     xor     rdx, rsi
     mov     rsi, r8
     imul    rsi, rdx
     while lo < t { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:168)
     cmp     rsi, rax
     jb      .LBB14_41
     (((a as u128) * (b as u128)) >> 64) as u64 (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\fastrand-1.7.0\src\lib.rs:215)
     mulx    r9, r9, r8
     cmp     r9, 51
     jbe     .LBB14_43
     jmp     .LBB14_31
.LBB14_44:
 let mut hands = deck.deal_hands::<N>();
 lea     rcx, [rbp, +, 160]
 mov     rdx, rbp
 vzeroupper
 call    boms::types::Deck::deal_hands
     ArrayVec { xs: MaybeUninit::uninit().assume_init(), len: 0 } (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:83)
     mov     esi, 6
     mov     dword, ptr, [rbp, +, 64], 0
 let mut skips = [false; N];
 mov     word, ptr, [rbp, +, 372], 0
 mov     dword, ptr, [rbp, +, 368], 0
 xor     ebx, ebx
 xor     r13d, r13d
 xor     r9d, r9d
 jmp     .LBB14_46
.LBB14_110:
     drop(g); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:530)
     mov     r8, qword, ptr, [rbp, +, 328]
.LBB14_111:
     pub const fn is_empty(&self) -> bool { self.len() == 0 } (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:123)
     sub     r11d, r8d
     mov     rsi, r10
     self.len = length as LenUint; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:543)
     mov     dword, ptr, [r14], r11d
 if hand.cards.is_empty() {
 je      .LBB14_112
.LBB14_46:
     mov     r12, r13
     mov     rax, rbx
     mov     ebx, 0
     mov     r13d, 0
     cmp     rax, 5
     ja      .LBB14_46
 if unsafe { *skips.get_unchecked(i) } {
 cmp     byte, ptr, [rbp, +, r12, +, 368], 0
     lea     rdx, [r12, +, 1]
 je      .LBB14_75
     mov     ebx, 0
     mov     r13d, 0
     cmp     rax, 4
     ja      .LBB14_46
 cmp     byte, ptr, [rbp, +, r12, +, 369], 0
     lea     rcx, [r12, +, 2]
 je      .LBB14_76
     mov     ebx, 0
     mov     r13d, 0
     cmp     rax, 3
     ja      .LBB14_46
 cmp     byte, ptr, [rbp, +, r12, +, 370], 0
     lea     rdx, [r12, +, 3]
 je      .LBB14_77
     mov     ebx, 0
     mov     r13d, 0
     cmp     rax, 2
     ja      .LBB14_46
 cmp     byte, ptr, [rbp, +, r12, +, 371], 0
     lea     rdi, [r12, +, 4]
 je      .LBB14_78
     mov     ebx, 0
     mov     r13d, 0
     cmp     rax, 1
     ja      .LBB14_46
 cmp     byte, ptr, [rbp, +, r12, +, 372], 0
     lea     rcx, [r12, +, 5]
 je      .LBB14_79
     mov     ebx, 0
     mov     r13d, 0
     test    rax, rax
     jne     .LBB14_46
 cmp     byte, ptr, [rbp, +, rcx, +, 368], 0
 mov     ebx, 0
 mov     r13d, 0
 jne     .LBB14_46
     lea     rdx, [rax, +, 5]
     add     rax, 6
     add     r12, 6
     mov     rbx, rax
     mov     r13, r12
     mov     rax, rdx
     mov     r12, rcx
 if players_in_round == 1 {
 cmp     rsi, 1
 je      .LBB14_81
 jmp     .LBB14_84
.LBB14_75:
     lea     rbx, [rax, +, 1]
     mov     r13, rdx
 cmp     rsi, 1
 je      .LBB14_81
 jmp     .LBB14_84
.LBB14_76:
     lea     rdi, [rax, +, 1]
     add     rax, 2
     mov     r13, rcx
     mov     r12, rdx
     mov     rbx, rax
     mov     rax, rdi
 cmp     rsi, 1
 je      .LBB14_81
 jmp     .LBB14_84
.LBB14_77:
     lea     rdi, [rax, +, 2]
     add     rax, 3
     mov     r13, rdx
     mov     r12, rcx
     mov     rbx, rax
     mov     rax, rdi
 cmp     rsi, 1
 je      .LBB14_81
 jmp     .LBB14_84
.LBB14_78:
     lea     rcx, [rax, +, 3]
     add     rax, 4
     mov     r13, rdi
     mov     r12, rdx
     mov     rbx, rax
     mov     rax, rcx
 cmp     rsi, 1
 je      .LBB14_81
 jmp     .LBB14_84
.LBB14_79:
     lea     rdx, [rax, +, 4]
     add     rax, 5
     mov     r13, rcx
     mov     r12, rdi
     mov     rbx, rax
     mov     rax, rdx
 cmp     rsi, 1
 jne     .LBB14_84
.LBB14_81:
     if new_len < len { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec_impl.rs:78)
     cmp     dword, ptr, [rbp, +, 64], 0
     je      .LBB14_83
     self.len = length as LenUint; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:713)
     mov     dword, ptr, [rbp, +, 64], 0
.LBB14_83:
     mov     esi, 6
     xor     r9d, r9d
     mov     word, ptr, [rbp, +, 372], 0
     mov     dword, ptr, [rbp, +, 368], 0
.LBB14_84:
 if let Some((card, k)) = agent.play_turn(&hand, &stack, n) {
 lea     rdi, [rax, +, 2*rax]
 shl     rax, 4
 mov     rcx, qword, ptr, [rbp, +, rax, +, 232]
 mov     rax, qword, ptr, [rbp, +, rax, +, 240]
 lea     r14, [rbp, +, 4*rdi, +, 160]
 lea     r8, [rbp, +, 64]
 mov     r15d, r9d
 mov     rdx, r14
 call    qword, ptr, [rax, +, 24]
 cmp     al, 15
 jne     .LBB14_86
 skips[i] = true;
 cmp     r12, 5
 ja      .LBB14_90
 mov     r9d, r15d
 mov     byte, ptr, [rbp, +, r12, +, 368], 1
 players_in_round -= 1;
 dec     rsi
 jmp     .LBB14_46
.LBB14_86:
     if self.len() < Self::CAPACITY { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec_impl.rs:43)
     mov     ecx, dword, ptr, [rbp, +, 64]
     cmp     rcx, 56
     jae     .LBB14_87
 let hand_pre_len = hand.cards.len();
 mov     r11d, dword, ptr, [r14]
     mov     byte, ptr, [rbp, +, rcx, +, 68], al
     self.set_len(len + 1); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec_impl.rs:57)
     inc     ecx
     mov     r9d, r15d
     test    r9b, r9b
 if n == None {
 movzx   r9d, r9b
     self.len = length as LenUint; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:543)
     mov     dword, ptr, [r14], 0
     let mut g = BackshiftOnDrop { v: self, processed_len: 0, deleted_cnt: 0, original_len }; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:494)
     mov     qword, ptr, [rbp, +, 352], 0
     mov     qword, ptr, [rbp, +, 328], 0
     self.len = length as LenUint; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:713)
     mov     dword, ptr, [rbp, +, 64], ecx
 if n == None {
 movzx   ecx, dl
 cmove   r9d, ecx
 let hand_pre_len = hand.cards.len();
 test    r11, r11
     while g.processed_len != original_len { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:519)
     je      .LBB14_92
 if rem > 0 {
 movabs  r15, -6884282663029611473
 mov     r10, rsi
 test    dl, dl
 je      .LBB14_101
 if *x == card {
 lea     rcx, [rbp, +, 164]
 xor     esi, esi
 lea     rcx, [rcx, +, 4*rdi]
.LBB14_95:
     #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)] (src\types.rs:3)
     cmp     byte, ptr, [rcx, +, rsi], al
 if *x == card {
 je      .LBB14_96
     if !process_one::<F, T, CAP, false>(&mut f, &mut g) { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:520)
     inc     rsi
     cmp     r11, rsi
     jne     .LBB14_95
     jmp     .LBB14_106
.LBB14_92:
     while g.processed_len != original_len { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:526)
     mov     r10, rsi
     xor     r8d, r8d
     xor     esi, esi
     movabs  r15, -6884282663029611473
     cmp     rsi, r11
     jne     .LBB14_98
     jmp     .LBB14_111
.LBB14_101:
     if !process_one::<F, T, CAP, false>(&mut f, &mut g) { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:520)
     mov     eax, r11d
     lea     rcx, [r11, -, 1]
     and     eax, 7
     cmp     rcx, 7
     jb      .LBB14_104
     mov     ecx, r11d
     and     ecx, -8
.LBB14_103:
     add     rcx, -8
     jne     .LBB14_103
.LBB14_104:
     test    rax, rax
     je      .LBB14_106
.LBB14_105:
     dec     rax
     jne     .LBB14_105
.LBB14_106:
     xor     r8d, r8d
     jmp     .LBB14_111
.LBB14_96:
     g.processed_len += 1; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:503)
     inc     rsi
 rem -= 1;
 dec     dl
 mov     r8d, 1
 mov     qword, ptr, [rbp, +, 328], 1
     g.processed_len += 1; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:503)
     mov     qword, ptr, [rbp, +, 352], rsi
     while g.processed_len != original_len { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:526)
     cmp     rsi, r11
     jne     .LBB14_98
     jmp     .LBB14_111
.LBB14_108:
     let hole_slot = g.v.as_mut_ptr().add(g.processed_len - g.deleted_cnt); (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:510)
     mov     rdi, rsi
     sub     rdi, qword, ptr, [rbp, +, 328]
     mov     byte, ptr, [rdi, +, r14, +, 4], cl
     lea     rcx, [rbp, +, 352]
.LBB14_109:
     while g.processed_len != original_len { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:526)
     inc     rsi
     mov     qword, ptr, [rcx], rsi
     mov     rsi, qword, ptr, [rbp, +, 352]
     cmp     rsi, r11
     je      .LBB14_110
.LBB14_98:
     if !f(unsafe { &mut *cur }) { (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:502)
     movzx   ecx, byte, ptr, [rsi, +, r14, +, 4]
     #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)] (src\types.rs:3)
     cmp     cl, al
 if *x == card {
 jne     .LBB14_108
 test    dl, dl
 je      .LBB14_108
     g.processed_len += 1; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:503)
     inc     rsi
 rem -= 1;
 dec     dl
 lea     rcx, [rbp, +, 328]
     g.processed_len += 1; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:503)
     mov     qword, ptr, [rbp, +, 352], rsi
     g.deleted_cnt += 1; (C:\Users\dario\.cargo\registry\src\github.com-1ecc6299db9ec823\arrayvec-0.7.2\src\arrayvec.rs:504)
     mov     rsi, qword, ptr, [rbp, +, 328]
     jmp     .LBB14_109
.LBB14_112:
 let dt = st.elapsed();
 lea     rcx, [rbp, -, 80]
 call    std::time::Instant::elapsed
 movabs  rdi, 5573589319906701683
 movabs  r13, -1800455987208640293
     mov     ebx, edx
     mov     rdx, qword, ptr, [rbp, +, 336]
     mov     r14, rax
     cmp     rdx, qword, ptr, [rbp, +, 136]
     jne     .LBB14_114
     lea     rcx, [rbp, +, 128]
     call    alloc::raw_vec::RawVec<T,A>::reserve_for_push
     mov     rax, qword, ptr, [rbp, +, 128]
     mov     rdx, qword, ptr, [rbp, +, 144]
     jmp     .LBB14_117
.LBB14_114:
     mov     rax, qword, ptr, [rbp, +, 344]
.LBB14_117:
     mov     rcx, rdx
     shl     rcx, 4
     inc     rdx
     mov     qword, ptr, [rax, +, rcx], r14
     mov     dword, ptr, [rax, +, rcx, +, 8], ebx
     mov     qword, ptr, [rbp, +, 144], rdx
 wins[winner] += 1;
 cmp     r12, 5
 ja      .LBB14_119
 inc     dword, ptr, [rbp, +, 4*r12, -, 64]
     cmp     qword, ptr, [rbp, +, 152], 1048575
     mov     qword, ptr, [rbp, +, 336], rdx
     mov     qword, ptr, [rbp, +, 344], rax
     jbe     .LBB14_5
.LBB14_121:
     vmovsd  xmm6, qword, ptr, [rip, +, __real@4059000000000000]
     vmovsd  xmm7, qword, ptr, [rip, +, __real@3eb0000000000000]
     lea     rdi, [rbp, -, 64]
     lea     r15, [rip, +, _ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17h2ec321b828b4f160E]
     lea     r12, [rip, +, _ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hfb5ea5c76260961bE]
     lea     r13, [rip, +, __unnamed_7]
     lea     r14, [rip, +, __unnamed_8]
     lea     rsi, [rbp, +, 232]
     xor     ebx, ebx
     lea     rax, [rbp, -, 40]
     cmp     rdi, rax
     je      .LBB14_125
.LBB14_123:
 println!("Player {i}: {:.2}%", 100.0 * w as f64 / n_games as f64);
 vcvtsi2sd xmm0, xmm1, dword, ptr, [rdi]
 lea     rax, [rbp, +, 64]
     mov     qword, ptr, [rbp, +, 232], r13
     mov     qword, ptr, [rbp, +, 240], 3
     mov     qword, ptr, [rbp, +, 248], r14
 for (i, &w) in wins.iter().enumerate() {
 mov     qword, ptr, [rbp], rbx
     mov     qword, ptr, [rbp, +, 256], 2
 println!("Player {i}: {:.2}%", 100.0 * w as f64 / n_games as f64);
 mov     qword, ptr, [rbp, +, 160], rax
 mov     qword, ptr, [rbp, +, 168], r15
 mov     rax, rbp
 mov     qword, ptr, [rbp, +, 176], rax
     lea     rax, [rbp, +, 160]
 mov     qword, ptr, [rbp, +, 184], r12
     mov     qword, ptr, [rbp, +, 264], rax
     mov     qword, ptr, [rbp, +, 272], 2
 vmulsd  xmm0, xmm0, xmm6
 vmulsd  xmm0, xmm0, xmm7
 vmovsd  qword, ptr, [rbp, +, 64], xmm0
 mov     rcx, rsi
 call    std::io::stdio::_print
     inc     rbx
     add     rdi, 4
     lea     rax, [rbp, -, 40]
     cmp     rdi, rax
     jne     .LBB14_123
.LBB14_125:
     lea     rax, [rip, +, __unnamed_9]
     lea     rsi, [rip, +, __unnamed_10]
     mov     qword, ptr, [rbp, +, 232], rax
     mov     qword, ptr, [rbp, +, 240], 1
     mov     qword, ptr, [rbp, +, 248], 0
     mov     qword, ptr, [rbp, +, 264], rsi
     mov     qword, ptr, [rbp, +, 272], 0
 println!();
 lea     rcx, [rbp, +, 232]
 call    std::io::stdio::_print
     lea     rax, [rip, +, __unnamed_11]
     mov     qword, ptr, [rbp, +, 232], rax
     mov     qword, ptr, [rbp, +, 240], 1
     mov     qword, ptr, [rbp, +, 248], 0
     mov     qword, ptr, [rbp, +, 264], rsi
     mov     qword, ptr, [rbp, +, 272], 0
 println!("Round times:");
 lea     rcx, [rbp, +, 232]
 call    std::io::stdio::_print
     mov     rax, qword, ptr, [rbp, +, 336]
     mov     r12, rax
     shl     r12, 4
     test    rax, rax
     je      .LBB14_128
     mov     rbx, qword, ptr, [rbp, +, 344]
     xor     ecx, ecx
     xor     eax, eax
     lea     rsi, [rbx, +, r12]
.LBB14_130:
     mov     r8, qword, ptr, [rbx]
     mov     r9d, dword, ptr, [rbx, +, 8]
 .fold(Duration::ZERO, |acc, &x| acc + x)
 mov     edx, eax
 call    <core::time::Duration as core::ops::arith::Add>::add
     add     rbx, 16
     mov     rcx, rax
     mov     eax, edx
     cmp     rbx, rsi
     jne     .LBB14_130
     jmp     .LBB14_132
.LBB14_90:
 skips[i] = true;
 lea     r8, [rip, +, __unnamed_12]
 mov     edx, 6
 mov     rcx, r12
 call    core::panicking::panic_bounds_check
 jmp     .LBB14_120
.LBB14_128:
 xor     eax, eax
 xor     ecx, ecx
.LBB14_132:
     mov     ebx, 1000000000
     mov     rdx, rcx
     mulx    r8, rcx, rbx
     mov     edx, eax
     add     rdx, rcx
     adc     r8, 0
 round_times
 shr     rdx, 20
 mov     rax, r8
 shl     rax, 44
 shr     r8, 20
 or      rdx, rax
 pretty_num(
 lea     rsi, [rbp, +, 160]
 mov     rcx, rsi
 call    boms::main::pretty_num
     lea     rax, [rip, +, __unnamed_13]
 println!(
 lea     r14, [rip, +, _ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h44ead2d01e4cadaeE]
     lea     r15, [rip, +, __unnamed_14]
     lea     rdx, [rbp, +, 64]
 mov     qword, ptr, [rbp, +, 64], rsi
     mov     qword, ptr, [rbp, +, 232], rax
     mov     qword, ptr, [rbp, +, 240], 2
     mov     qword, ptr, [rbp, +, 248], r15
     mov     qword, ptr, [rbp, +, 256], 1
     mov     qword, ptr, [rbp, +, 264], rdx
 mov     qword, ptr, [rbp, +, 72], r14
     mov     qword, ptr, [rbp, +, 272], 1
 lea     rcx, [rbp, +, 232]
 call    std::io::stdio::_print
     mov     rdx, qword, ptr, [rbp, +, 168]
     mov     rsi, qword, ptr, [rbp, +, 336]
     test    rdx, rdx
     je      .LBB14_137
     mov     rcx, qword, ptr, [rbp, +, 160]
     test    rcx, rcx
     je      .LBB14_137
     mov     r8d, 1
     call    __rust_dealloc
.LBB14_137:
     test    rsi, rsi
     je      .LBB14_178
     mov     rdx, qword, ptr, [rbp, +, 344]
     cmp     qword, ptr, [rbp, +, 336], 1
     lea     r13, [rdx, +, 16]
     jne     .LBB14_139
     mov     rsi, rdx
     test    rdx, rdx
     je      .LBB14_178
.LBB14_148:
     mov     edx, 1000000000
 pretty_num(round_times.iter().min().unwrap().as_nanos())
 mov     eax, dword, ptr, [rsi, +, 8]
     mulx    r8, rdx, qword, ptr, [rsi]
     add     rdx, rax
     adc     r8, 0
 lea     rsi, [rbp, +, 160]
 mov     rcx, rsi
 call    boms::main::pretty_num
     lea     rax, [rip, +, __unnamed_15]
     lea     rdx, [rbp, +, 64]
 println!(
 mov     qword, ptr, [rbp, +, 64], rsi
 mov     qword, ptr, [rbp, +, 72], r14
     mov     qword, ptr, [rbp, +, 232], rax
     mov     qword, ptr, [rbp, +, 240], 2
     mov     qword, ptr, [rbp, +, 248], r15
     mov     qword, ptr, [rbp, +, 256], 1
     mov     qword, ptr, [rbp, +, 264], rdx
     mov     qword, ptr, [rbp, +, 272], 1
 lea     rcx, [rbp, +, 232]
 call    std::io::stdio::_print
     mov     rdx, qword, ptr, [rbp, +, 168]
     mov     rsi, qword, ptr, [rbp, +, 344]
     test    rdx, rdx
     je      .LBB14_153
     mov     rcx, qword, ptr, [rbp, +, 160]
     test    rcx, rcx
     je      .LBB14_153
     mov     r8d, 1
     call    __rust_dealloc
.LBB14_153:
     cmp     qword, ptr, [rbp, +, 336], 1
     jne     .LBB14_154
     mov     rax, rsi
     test    rsi, rsi
     je      .LBB14_184
.LBB14_163:
     mov     edx, 1000000000
 pretty_num(round_times.iter().max().unwrap().as_nanos())
 mov     ecx, dword, ptr, [rax, +, 8]
     mulx    r8, rdx, qword, ptr, [rax]
     add     rdx, rcx
     adc     r8, 0
 lea     rsi, [rbp, +, 160]
 mov     rcx, rsi
 call    boms::main::pretty_num
     lea     rax, [rip, +, __unnamed_16]
     lea     rdx, [rbp, +, 64]
 println!(
 mov     qword, ptr, [rbp, +, 64], rsi
 mov     qword, ptr, [rbp, +, 72], r14
     mov     qword, ptr, [rbp, +, 232], rax
     mov     qword, ptr, [rbp, +, 240], 2
     mov     qword, ptr, [rbp, +, 248], r15
     mov     qword, ptr, [rbp, +, 256], 1
     mov     qword, ptr, [rbp, +, 264], rdx
     mov     qword, ptr, [rbp, +, 272], 1
 lea     rcx, [rbp, +, 232]
 call    std::io::stdio::_print
     mov     rdx, qword, ptr, [rbp, +, 168]
     mov     rsi, qword, ptr, [rbp, +, 344]
     test    rdx, rdx
     je      .LBB14_168
     mov     rcx, qword, ptr, [rbp, +, 160]
     test    rcx, rcx
     je      .LBB14_168
     mov     r8d, 1
     call    __rust_dealloc
.LBB14_168:
     mov     rdx, qword, ptr, [rbp, +, 136]
     test    rdx, rdx
     je      .LBB14_172
     test    rsi, rsi
     je      .LBB14_172
     shl     rdx, 4
     je      .LBB14_172
     mov     r8d, 8
     mov     rcx, rsi
     call    __rust_dealloc
.LBB14_172:
 }
 vmovaps xmm6, xmmword, ptr, [rbp, +, 384]
 vmovaps xmm7, xmmword, ptr, [rbp, +, 400]
 add     rsp, 552
 pop     rbx
 pop     rdi
 pop     rsi
 pop     r12
 pop     r13
 pop     r14
 pop     r15
 pop     rbp
 ret
.LBB14_139:
     lea     rax, [r12, -, 16]
     mov     rcx, r13
     jmp     .LBB14_140
.LBB14_147:
     add     rcx, 16
     add     rax, -16
     mov     rdx, rsi
     je      .LBB14_148
.LBB14_140:
     mov     rbx, qword, ptr, [rdx]
     xor     esi, esi
     mov     edi, 255
     cmp     rbx, qword, ptr, [rcx]
     setne   bl
     jb      .LBB14_142
     mov     sil, bl
     mov     edi, esi
.LBB14_142:
     test    dil, dil
     jne     .LBB14_145
     mov     ebx, dword, ptr, [rdx, +, 8]
     xor     esi, esi
     mov     edi, 255
     cmp     ebx, dword, ptr, [rcx, +, 8]
     setne   bl
     jb      .LBB14_145
     mov     sil, bl
     mov     edi, esi
.LBB14_145:
     mov     rsi, rcx
     cmp     dil, 1
     je      .LBB14_147
     mov     rsi, rdx
     jmp     .LBB14_147
.LBB14_154:
     add     r12, -16
     mov     rax, rsi
     jmp     .LBB14_155
.LBB14_162:
     add     r13, 16
     add     r12, -16
     je      .LBB14_163
.LBB14_155:
     mov     rbx, qword, ptr, [rax]
     xor     edx, edx
     mov     ecx, 255
     cmp     rbx, qword, ptr, [r13]
     setne   bl
     jb      .LBB14_157
     mov     dl, bl
     mov     ecx, edx
.LBB14_157:
     test    cl, cl
     jne     .LBB14_160
     mov     ebx, dword, ptr, [rax, +, 8]
     xor     edx, edx
     mov     ecx, 255
     cmp     ebx, dword, ptr, [r13, +, 8]
     setne   bl
     jb      .LBB14_160
     mov     dl, bl
     mov     ecx, edx
.LBB14_160:
     cmp     cl, 1
     je      .LBB14_162
     mov     rax, r13
     jmp     .LBB14_162
.LBB14_31:
     lea     r8, [rip, +, __unnamed_17]
     mov     edx, 52
     mov     rcx, r9
     vzeroupper
     call    core::panicking::panic_bounds_check
     jmp     .LBB14_120
.LBB14_32:
     lea     r8, [rip, +, __unnamed_17]
     mov     edx, 52
     vzeroupper
     call    core::panicking::panic_bounds_check
     jmp     .LBB14_120
.LBB14_119:
 wins[winner] += 1;
 lea     r8, [rip, +, __unnamed_18]
 mov     edx, 6
 mov     rcx, r12
 call    core::panicking::panic_bounds_check
 jmp     .LBB14_120
.LBB14_87:
     mov     byte, ptr, [rbp, +, 352], al
     lea     rax, [rip, +, __unnamed_1]
     lea     rcx, [rip, +, __unnamed_2]
     lea     r9, [rip, +, __unnamed_19]
     lea     r8, [rbp, +, 352]
     mov     edx, 43
     mov     qword, ptr, [rsp, +, 32], rax
     call    core::result::unwrap_failed
     jmp     .LBB14_120
.LBB14_1:
     mov     ecx, 16777216
     mov     edx, 8
     call    alloc::alloc::handle_alloc_error
     ud2
.LBB14_178:
     lea     rcx, [rip, +, __unnamed_20]
     lea     r8, [rip, +, __unnamed_21]
     mov     edx, 43
     call    core::panicking::panic
     jmp     .LBB14_120
.LBB14_184:
     lea     rcx, [rip, +, __unnamed_20]
     lea     r8, [rip, +, __unnamed_22]
     mov     edx, 43
     call    core::panicking::panic
.LBB14_120:
     ud2
