
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	69013103          	ld	sp,1680(sp) # 80004690 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	31d010ef          	jal	ra,80001b38 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <pushRegisters>:
.global pushRegisters
.type pushRegisters, @function
pushRegisters:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <popRegisters>:
.global popRegisters
.type popRegisters, @function
popRegisters:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret

00000000800010f8 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    800010f8:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    800010fc:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001100:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001104:	0085b103          	ld	sp,8(a1)

    80001108:	00008067          	ret

000000008000110c <mem_alloc>:
    //uint64 startingAddress;
};

static struct FreeMem* freeMemHead;

void* mem_alloc(size_t size){
    8000110c:	ff010113          	addi	sp,sp,-16
    80001110:	00813423          	sd	s0,8(sp)
    80001114:	01010413          	addi	s0,sp,16
//    void* memory;
//    memory = (void*) HEAP_START_ADDR;

    //return memory;
    if(size <= 0){
    80001118:	0e050063          	beqz	a0,800011f8 <mem_alloc+0xec>
        return 0;
    }

    if (size%MEM_BLOCK_SIZE != 0){
    8000111c:	03f57793          	andi	a5,a0,63
    80001120:	00078863          	beqz	a5,80001130 <mem_alloc+0x24>
        size = (size/MEM_BLOCK_SIZE + 1) * MEM_BLOCK_SIZE;
    80001124:	00655513          	srli	a0,a0,0x6
    80001128:	00150513          	addi	a0,a0,1
    8000112c:	00651513          	slli	a0,a0,0x6
    }

    //Try to find existing free mem block in list
    struct FreeMem *block = freeMemHead, *prev = 0;
    80001130:	00003797          	auipc	a5,0x3
    80001134:	5907b783          	ld	a5,1424(a5) # 800046c0 <freeMemHead>
    80001138:	00000693          	li	a3,0
    for(; block != 0; prev = block, block = block->next)
    8000113c:	00078c63          	beqz	a5,80001154 <mem_alloc+0x48>
        if(block->size >= size)
    80001140:	0087b703          	ld	a4,8(a5)
    80001144:	00a77863          	bgeu	a4,a0,80001154 <mem_alloc+0x48>
    for(; block != 0; prev = block, block = block->next)
    80001148:	00078693          	mv	a3,a5
    8000114c:	0007b783          	ld	a5,0(a5)
    80001150:	fedff06f          	j	8000113c <mem_alloc+0x30>
    size_t freeMemBlockSize = sizeof(struct FreeMem);
    if (freeMemBlockSize%MEM_BLOCK_SIZE != 0){
        freeMemBlockSize = (freeMemBlockSize/MEM_BLOCK_SIZE + 1) * MEM_BLOCK_SIZE;
    }

    if(block == 0){
    80001154:	04078663          	beqz	a5,800011a0 <mem_alloc+0x94>

        freeMemHead = block;
    }

    //Allocate the requested block
    size_t remainingSize = block->size - size;
    80001158:	0087b703          	ld	a4,8(a5)
    8000115c:	40a70633          	sub	a2,a4,a0

    struct FreeMem* newBlock;
    if(remainingSize > 0){
    80001160:	06a70c63          	beq	a4,a0,800011d8 <mem_alloc+0xcc>
        block->size = size;
    80001164:	00a7b423          	sd	a0,8(a5)
        size_t offset = freeMemBlockSize + size;
    80001168:	04050713          	addi	a4,a0,64

        newBlock = (struct FreeMem*) ((void*)(block + offset));
    8000116c:	00471713          	slli	a4,a4,0x4
    80001170:	00e78733          	add	a4,a5,a4
        if(prev){
    80001174:	04068c63          	beqz	a3,800011cc <mem_alloc+0xc0>
            prev->next = newBlock;
    80001178:	00e6b023          	sd	a4,0(a3)
        }else{
            freeMemHead = newBlock;
        }
        newBlock->size = remainingSize-freeMemBlockSize;
    8000117c:	fc060613          	addi	a2,a2,-64
    80001180:	00c73423          	sd	a2,8(a4)
        newBlock->next = block->next;
    80001184:	0007b683          	ld	a3,0(a5)
    80001188:	00d73023          	sd	a3,0(a4)
    }else {
        if(prev) prev->next = block->next;
        else freeMemHead = block->next;
    }
    block->next = 0;
    8000118c:	0007b023          	sd	zero,0(a5)

    return (void*) ((char*)block + freeMemBlockSize);
    80001190:	04078513          	addi	a0,a5,64
}
    80001194:	00813403          	ld	s0,8(sp)
    80001198:	01010113          	addi	sp,sp,16
    8000119c:	00008067          	ret
        block = (struct FreeMem*) HEAP_START_ADDR;
    800011a0:	00003797          	auipc	a5,0x3
    800011a4:	4c87b783          	ld	a5,1224(a5) # 80004668 <HEAP_START_ADDR>
        block->size = (size_t)(HEAP_END_ADDR-HEAP_START_ADDR) - freeMemBlockSize;
    800011a8:	00003717          	auipc	a4,0x3
    800011ac:	4b873703          	ld	a4,1208(a4) # 80004660 <HEAP_END_ADDR>
    800011b0:	40f70733          	sub	a4,a4,a5
    800011b4:	fc070713          	addi	a4,a4,-64
    800011b8:	00e7b423          	sd	a4,8(a5)
        block->next = 0;
    800011bc:	0007b023          	sd	zero,0(a5)
        freeMemHead = block;
    800011c0:	00003717          	auipc	a4,0x3
    800011c4:	50f73023          	sd	a5,1280(a4) # 800046c0 <freeMemHead>
    800011c8:	f91ff06f          	j	80001158 <mem_alloc+0x4c>
            freeMemHead = newBlock;
    800011cc:	00003697          	auipc	a3,0x3
    800011d0:	4ee6ba23          	sd	a4,1268(a3) # 800046c0 <freeMemHead>
    800011d4:	fa9ff06f          	j	8000117c <mem_alloc+0x70>
        if(prev) prev->next = block->next;
    800011d8:	00068863          	beqz	a3,800011e8 <mem_alloc+0xdc>
    800011dc:	0007b703          	ld	a4,0(a5)
    800011e0:	00e6b023          	sd	a4,0(a3)
    800011e4:	fa9ff06f          	j	8000118c <mem_alloc+0x80>
        else freeMemHead = block->next;
    800011e8:	0007b703          	ld	a4,0(a5)
    800011ec:	00003697          	auipc	a3,0x3
    800011f0:	4ce6ba23          	sd	a4,1236(a3) # 800046c0 <freeMemHead>
    800011f4:	f99ff06f          	j	8000118c <mem_alloc+0x80>
        return 0;
    800011f8:	00000513          	li	a0,0
    800011fc:	f99ff06f          	j	80001194 <mem_alloc+0x88>

0000000080001200 <mem_free>:

int mem_free(void* memory){
    80001200:	ff010113          	addi	sp,sp,-16
    80001204:	00813423          	sd	s0,8(sp)
    80001208:	01010413          	addi	s0,sp,16
    uint64 memoryAddress = (uint64) memory;
    if(memoryAddress < (uint64) HEAP_START_ADDR || memoryAddress > (uint64) HEAP_END_ADDR){
    8000120c:	00003797          	auipc	a5,0x3
    80001210:	45c7b783          	ld	a5,1116(a5) # 80004668 <HEAP_START_ADDR>
    80001214:	08f56463          	bltu	a0,a5,8000129c <mem_free+0x9c>
    80001218:	00003797          	auipc	a5,0x3
    8000121c:	4487b783          	ld	a5,1096(a5) # 80004660 <HEAP_END_ADDR>
    80001220:	08a7e263          	bltu	a5,a0,800012a4 <mem_free+0xa4>
    size_t freeMemBlockSize = sizeof(struct FreeMem);
    if (freeMemBlockSize%MEM_BLOCK_SIZE != 0){
        freeMemBlockSize = (freeMemBlockSize/MEM_BLOCK_SIZE + 1) * MEM_BLOCK_SIZE;
    }

    uint64 headerAddress = memoryAddress - freeMemBlockSize;
    80001224:	fc050613          	addi	a2,a0,-64

    struct FreeMem* header = (void*) headerAddress;

    struct FreeMem* tmp = freeMemHead;
    80001228:	00003797          	auipc	a5,0x3
    8000122c:	4987b783          	ld	a5,1176(a5) # 800046c0 <freeMemHead>
    if (tmp == 0){
    80001230:	06078e63          	beqz	a5,800012ac <mem_free+0xac>
        //no memory prevously allocated
        return -1;
    }

    if (memoryAddress < (uint64) freeMemHead){
    80001234:	00f56663          	bltu	a0,a5,80001240 <mem_free+0x40>
        freeMemHead = header;

        return 0;
    }

    struct FreeMem* prev = 0;
    80001238:	00000693          	li	a3,0
    8000123c:	0300006f          	j	8000126c <mem_free+0x6c>
        header->next = freeMemHead;
    80001240:	fcf53023          	sd	a5,-64(a0)
        freeMemHead = header;
    80001244:	00003797          	auipc	a5,0x3
    80001248:	46c7be23          	sd	a2,1148(a5) # 800046c0 <freeMemHead>
        return 0;
    8000124c:	00000513          	li	a0,0
    80001250:	0400006f          	j	80001290 <mem_free+0x90>

    for( ; tmp->next != 0 ; prev = tmp, tmp = tmp->next){
        if(headerAddress > (uint64) prev && headerAddress < (uint64) tmp){
            prev->next = header;
    80001254:	00c6b023          	sd	a2,0(a3)
            header->next = tmp;
    80001258:	fcf53023          	sd	a5,-64(a0)

            //inserted in middle of list
            return 0;
    8000125c:	00000513          	li	a0,0
    80001260:	0300006f          	j	80001290 <mem_free+0x90>
    80001264:	00078693          	mv	a3,a5
    80001268:	00070793          	mv	a5,a4
    for( ; tmp->next != 0 ; prev = tmp, tmp = tmp->next){
    8000126c:	0007b703          	ld	a4,0(a5)
    80001270:	00070c63          	beqz	a4,80001288 <mem_free+0x88>
        if(headerAddress > (uint64) prev && headerAddress < (uint64) tmp){
    80001274:	fec6f8e3          	bgeu	a3,a2,80001264 <mem_free+0x64>
    80001278:	fcf66ee3          	bltu	a2,a5,80001254 <mem_free+0x54>
    8000127c:	00078693          	mv	a3,a5
    80001280:	00070793          	mv	a5,a4
    80001284:	fe9ff06f          	j	8000126c <mem_free+0x6c>
        }
    }

    tmp->next = header;
    80001288:	00c7b023          	sd	a2,0(a5)
    //inserted on the end of list (most likely not going to happen)
    return 0;
    8000128c:	00000513          	li	a0,0
}
    80001290:	00813403          	ld	s0,8(sp)
    80001294:	01010113          	addi	sp,sp,16
    80001298:	00008067          	ret
        return -2;
    8000129c:	ffe00513          	li	a0,-2
    800012a0:	ff1ff06f          	j	80001290 <mem_free+0x90>
    800012a4:	ffe00513          	li	a0,-2
    800012a8:	fe9ff06f          	j	80001290 <mem_free+0x90>
        return -1;
    800012ac:	fff00513          	li	a0,-1
    800012b0:	fe1ff06f          	j	80001290 <mem_free+0x90>

00000000800012b4 <_ZN7_thread13thread_createEPPS_PFvPvES2_>:
// Created by os on 11/4/22.
//

#include "../h/_thread.h"

int _thread::thread_create(_thread **handle, void (*start_routine)(void *), void *arg) {
    800012b4:	ff010113          	addi	sp,sp,-16
    800012b8:	00813423          	sd	s0,8(sp)
    800012bc:	01010413          	addi	s0,sp,16


    return 0;
}
    800012c0:	00000513          	li	a0,0
    800012c4:	00813403          	ld	s0,8(sp)
    800012c8:	01010113          	addi	sp,sp,16
    800012cc:	00008067          	ret

00000000800012d0 <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/CCB.hpp"
#include "../h/print.hpp"

static uint64 fibonacci(uint64 n)
{
    800012d0:	fe010113          	addi	sp,sp,-32
    800012d4:	00113c23          	sd	ra,24(sp)
    800012d8:	00813823          	sd	s0,16(sp)
    800012dc:	00913423          	sd	s1,8(sp)
    800012e0:	01213023          	sd	s2,0(sp)
    800012e4:	02010413          	addi	s0,sp,32
    800012e8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800012ec:	00100793          	li	a5,1
    800012f0:	02a7f663          	bgeu	a5,a0,8000131c <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) CCB::yield();
    800012f4:	00357793          	andi	a5,a0,3
    800012f8:	02078e63          	beqz	a5,80001334 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800012fc:	fff48513          	addi	a0,s1,-1
    80001300:	00000097          	auipc	ra,0x0
    80001304:	fd0080e7          	jalr	-48(ra) # 800012d0 <_ZL9fibonaccim>
    80001308:	00050913          	mv	s2,a0
    8000130c:	ffe48513          	addi	a0,s1,-2
    80001310:	00000097          	auipc	ra,0x0
    80001314:	fc0080e7          	jalr	-64(ra) # 800012d0 <_ZL9fibonaccim>
    80001318:	00a90533          	add	a0,s2,a0
}
    8000131c:	01813083          	ld	ra,24(sp)
    80001320:	01013403          	ld	s0,16(sp)
    80001324:	00813483          	ld	s1,8(sp)
    80001328:	00013903          	ld	s2,0(sp)
    8000132c:	02010113          	addi	sp,sp,32
    80001330:	00008067          	ret
    if (n % 4 == 0) CCB::yield();
    80001334:	00000097          	auipc	ra,0x0
    80001338:	3bc080e7          	jalr	956(ra) # 800016f0 <_ZN3CCB5yieldEv>
    8000133c:	fc1ff06f          	j	800012fc <_ZL9fibonaccim+0x2c>

0000000080001340 <_Z11workerBodyAv>:

void workerBodyA()
{
    80001340:	fe010113          	addi	sp,sp,-32
    80001344:	00113c23          	sd	ra,24(sp)
    80001348:	00813823          	sd	s0,16(sp)
    8000134c:	00913423          	sd	s1,8(sp)
    80001350:	01213023          	sd	s2,0(sp)
    80001354:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001358:	00000493          	li	s1,0
    8000135c:	0380006f          	j	80001394 <_Z11workerBodyAv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001360:	00003517          	auipc	a0,0x3
    80001364:	cc050513          	addi	a0,a0,-832 # 80004020 <CONSOLE_STATUS+0x10>
    80001368:	00000097          	auipc	ra,0x0
    8000136c:	6fc080e7          	jalr	1788(ra) # 80001a64 <_Z11printStringPKc>
        printInteger(i);
    80001370:	00048513          	mv	a0,s1
    80001374:	00000097          	auipc	ra,0x0
    80001378:	734080e7          	jalr	1844(ra) # 80001aa8 <_Z12printIntegerm>
        printString("\n");
    8000137c:	00003517          	auipc	a0,0x3
    80001380:	d1450513          	addi	a0,a0,-748 # 80004090 <CONSOLE_STATUS+0x80>
    80001384:	00000097          	auipc	ra,0x0
    80001388:	6e0080e7          	jalr	1760(ra) # 80001a64 <_Z11printStringPKc>
    for (; i < 3; i++)
    8000138c:	0014849b          	addiw	s1,s1,1
    80001390:	0ff4f493          	andi	s1,s1,255
    80001394:	00200793          	li	a5,2
    80001398:	fc97f4e3          	bgeu	a5,s1,80001360 <_Z11workerBodyAv+0x20>
    }

    printString("A: yield\n");
    8000139c:	00003517          	auipc	a0,0x3
    800013a0:	c8c50513          	addi	a0,a0,-884 # 80004028 <CONSOLE_STATUS+0x18>
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	6c0080e7          	jalr	1728(ra) # 80001a64 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800013ac:	00700313          	li	t1,7
    CCB::yield();
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	340080e7          	jalr	832(ra) # 800016f0 <_ZN3CCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800013b8:	00030913          	mv	s2,t1

    printString("A: t1=");
    800013bc:	00003517          	auipc	a0,0x3
    800013c0:	c7c50513          	addi	a0,a0,-900 # 80004038 <CONSOLE_STATUS+0x28>
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	6a0080e7          	jalr	1696(ra) # 80001a64 <_Z11printStringPKc>
    printInteger(t1);
    800013cc:	00090513          	mv	a0,s2
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	6d8080e7          	jalr	1752(ra) # 80001aa8 <_Z12printIntegerm>
    printString("\n");
    800013d8:	00003517          	auipc	a0,0x3
    800013dc:	cb850513          	addi	a0,a0,-840 # 80004090 <CONSOLE_STATUS+0x80>
    800013e0:	00000097          	auipc	ra,0x0
    800013e4:	684080e7          	jalr	1668(ra) # 80001a64 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800013e8:	01400513          	li	a0,20
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	ee4080e7          	jalr	-284(ra) # 800012d0 <_ZL9fibonaccim>
    800013f4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    800013f8:	00003517          	auipc	a0,0x3
    800013fc:	c4850513          	addi	a0,a0,-952 # 80004040 <CONSOLE_STATUS+0x30>
    80001400:	00000097          	auipc	ra,0x0
    80001404:	664080e7          	jalr	1636(ra) # 80001a64 <_Z11printStringPKc>
    printInteger(result);
    80001408:	00090513          	mv	a0,s2
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	69c080e7          	jalr	1692(ra) # 80001aa8 <_Z12printIntegerm>
    printString("\n");
    80001414:	00003517          	auipc	a0,0x3
    80001418:	c7c50513          	addi	a0,a0,-900 # 80004090 <CONSOLE_STATUS+0x80>
    8000141c:	00000097          	auipc	ra,0x0
    80001420:	648080e7          	jalr	1608(ra) # 80001a64 <_Z11printStringPKc>
    80001424:	0380006f          	j	8000145c <_Z11workerBodyAv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001428:	00003517          	auipc	a0,0x3
    8000142c:	bf850513          	addi	a0,a0,-1032 # 80004020 <CONSOLE_STATUS+0x10>
    80001430:	00000097          	auipc	ra,0x0
    80001434:	634080e7          	jalr	1588(ra) # 80001a64 <_Z11printStringPKc>
        printInteger(i);
    80001438:	00048513          	mv	a0,s1
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	66c080e7          	jalr	1644(ra) # 80001aa8 <_Z12printIntegerm>
        printString("\n");
    80001444:	00003517          	auipc	a0,0x3
    80001448:	c4c50513          	addi	a0,a0,-948 # 80004090 <CONSOLE_STATUS+0x80>
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	618080e7          	jalr	1560(ra) # 80001a64 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001454:	0014849b          	addiw	s1,s1,1
    80001458:	0ff4f493          	andi	s1,s1,255
    8000145c:	00500793          	li	a5,5
    80001460:	fc97f4e3          	bgeu	a5,s1,80001428 <_Z11workerBodyAv+0xe8>
    }

    CCB::running->setFinished(true);
    80001464:	00003797          	auipc	a5,0x3
    80001468:	2347b783          	ld	a5,564(a5) # 80004698 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000146c:	0007b783          	ld	a5,0(a5)
    bool isFinished() const {
        return finished;
    }

    void setFinished(bool finished) {
        CCB::finished = finished;
    80001470:	00100713          	li	a4,1
    80001474:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    80001478:	00000097          	auipc	ra,0x0
    8000147c:	278080e7          	jalr	632(ra) # 800016f0 <_ZN3CCB5yieldEv>
}
    80001480:	01813083          	ld	ra,24(sp)
    80001484:	01013403          	ld	s0,16(sp)
    80001488:	00813483          	ld	s1,8(sp)
    8000148c:	00013903          	ld	s2,0(sp)
    80001490:	02010113          	addi	sp,sp,32
    80001494:	00008067          	ret

0000000080001498 <_Z11workerBodyBv>:

void workerBodyB()
{
    80001498:	fe010113          	addi	sp,sp,-32
    8000149c:	00113c23          	sd	ra,24(sp)
    800014a0:	00813823          	sd	s0,16(sp)
    800014a4:	00913423          	sd	s1,8(sp)
    800014a8:	01213023          	sd	s2,0(sp)
    800014ac:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800014b0:	00a00493          	li	s1,10
    800014b4:	0380006f          	j	800014ec <_Z11workerBodyBv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800014b8:	00003517          	auipc	a0,0x3
    800014bc:	b9850513          	addi	a0,a0,-1128 # 80004050 <CONSOLE_STATUS+0x40>
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	5a4080e7          	jalr	1444(ra) # 80001a64 <_Z11printStringPKc>
        printInteger(i);
    800014c8:	00048513          	mv	a0,s1
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	5dc080e7          	jalr	1500(ra) # 80001aa8 <_Z12printIntegerm>
        printString("\n");
    800014d4:	00003517          	auipc	a0,0x3
    800014d8:	bbc50513          	addi	a0,a0,-1092 # 80004090 <CONSOLE_STATUS+0x80>
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	588080e7          	jalr	1416(ra) # 80001a64 <_Z11printStringPKc>
    for (; i < 13; i++)
    800014e4:	0014849b          	addiw	s1,s1,1
    800014e8:	0ff4f493          	andi	s1,s1,255
    800014ec:	00c00793          	li	a5,12
    800014f0:	fc97f4e3          	bgeu	a5,s1,800014b8 <_Z11workerBodyBv+0x20>
    }

    printString("B: yield\n");
    800014f4:	00003517          	auipc	a0,0x3
    800014f8:	b6450513          	addi	a0,a0,-1180 # 80004058 <CONSOLE_STATUS+0x48>
    800014fc:	00000097          	auipc	ra,0x0
    80001500:	568080e7          	jalr	1384(ra) # 80001a64 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001504:	00500313          	li	t1,5
    CCB::yield();
    80001508:	00000097          	auipc	ra,0x0
    8000150c:	1e8080e7          	jalr	488(ra) # 800016f0 <_ZN3CCB5yieldEv>

    uint64 result = fibonacci(23);
    80001510:	01700513          	li	a0,23
    80001514:	00000097          	auipc	ra,0x0
    80001518:	dbc080e7          	jalr	-580(ra) # 800012d0 <_ZL9fibonaccim>
    8000151c:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001520:	00003517          	auipc	a0,0x3
    80001524:	b2050513          	addi	a0,a0,-1248 # 80004040 <CONSOLE_STATUS+0x30>
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	53c080e7          	jalr	1340(ra) # 80001a64 <_Z11printStringPKc>
    printInteger(result);
    80001530:	00090513          	mv	a0,s2
    80001534:	00000097          	auipc	ra,0x0
    80001538:	574080e7          	jalr	1396(ra) # 80001aa8 <_Z12printIntegerm>
    printString("\n");
    8000153c:	00003517          	auipc	a0,0x3
    80001540:	b5450513          	addi	a0,a0,-1196 # 80004090 <CONSOLE_STATUS+0x80>
    80001544:	00000097          	auipc	ra,0x0
    80001548:	520080e7          	jalr	1312(ra) # 80001a64 <_Z11printStringPKc>
    8000154c:	0380006f          	j	80001584 <_Z11workerBodyBv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001550:	00003517          	auipc	a0,0x3
    80001554:	b0050513          	addi	a0,a0,-1280 # 80004050 <CONSOLE_STATUS+0x40>
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	50c080e7          	jalr	1292(ra) # 80001a64 <_Z11printStringPKc>
        printInteger(i);
    80001560:	00048513          	mv	a0,s1
    80001564:	00000097          	auipc	ra,0x0
    80001568:	544080e7          	jalr	1348(ra) # 80001aa8 <_Z12printIntegerm>
        printString("\n");
    8000156c:	00003517          	auipc	a0,0x3
    80001570:	b2450513          	addi	a0,a0,-1244 # 80004090 <CONSOLE_STATUS+0x80>
    80001574:	00000097          	auipc	ra,0x0
    80001578:	4f0080e7          	jalr	1264(ra) # 80001a64 <_Z11printStringPKc>
    for (; i < 16; i++)
    8000157c:	0014849b          	addiw	s1,s1,1
    80001580:	0ff4f493          	andi	s1,s1,255
    80001584:	00f00793          	li	a5,15
    80001588:	fc97f4e3          	bgeu	a5,s1,80001550 <_Z11workerBodyBv+0xb8>
    }

    CCB::running->setFinished(true);
    8000158c:	00003797          	auipc	a5,0x3
    80001590:	10c7b783          	ld	a5,268(a5) # 80004698 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001594:	0007b783          	ld	a5,0(a5)
    80001598:	00100713          	li	a4,1
    8000159c:	02e78023          	sb	a4,32(a5)
    CCB::yield();
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	150080e7          	jalr	336(ra) # 800016f0 <_ZN3CCB5yieldEv>
    800015a8:	01813083          	ld	ra,24(sp)
    800015ac:	01013403          	ld	s0,16(sp)
    800015b0:	00813483          	ld	s1,8(sp)
    800015b4:	00013903          	ld	s2,0(sp)
    800015b8:	02010113          	addi	sp,sp,32
    800015bc:	00008067          	ret

00000000800015c0 <_ZN3CCB14createCorutineEPFvvE>:
extern "C" void pushRegisters();
extern "C" void popRegisters();

CCB *CCB::running = nullptr;

CCB *CCB::createCorutine(Body body) {
    800015c0:	fe010113          	addi	sp,sp,-32
    800015c4:	00113c23          	sd	ra,24(sp)
    800015c8:	00813823          	sd	s0,16(sp)
    800015cc:	00913423          	sd	s1,8(sp)
    800015d0:	01213023          	sd	s2,0(sp)
    800015d4:	02010413          	addi	s0,sp,32
    800015d8:	00050913          	mv	s2,a0

    return new CCB(body);
    800015dc:	02800513          	li	a0,40
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	27c080e7          	jalr	636(ra) # 8000185c <_Znwm>
    800015e8:	00050493          	mv	s1,a0
        stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
        context({
                        body != nullptr ? (uint64) body : 0,
                        stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                }),
        finished(false)
    800015ec:	01253023          	sd	s2,0(a0)
        stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800015f0:	00090a63          	beqz	s2,80001604 <_ZN3CCB14createCorutineEPFvvE+0x44>
    800015f4:	00002537          	lui	a0,0x2
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	28c080e7          	jalr	652(ra) # 80001884 <_Znam>
    80001600:	0080006f          	j	80001608 <_ZN3CCB14createCorutineEPFvvE+0x48>
    80001604:	00000513          	li	a0,0
        finished(false)
    80001608:	00a4b423          	sd	a0,8(s1)
                        body != nullptr ? (uint64) body : 0,
    8000160c:	02090a63          	beqz	s2,80001640 <_ZN3CCB14createCorutineEPFvvE+0x80>
    80001610:	00090793          	mv	a5,s2
        finished(false)
    80001614:	00f4b823          	sd	a5,16(s1)
                        stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001618:	02050863          	beqz	a0,80001648 <_ZN3CCB14createCorutineEPFvvE+0x88>
    8000161c:	000027b7          	lui	a5,0x2
    80001620:	00f50533          	add	a0,a0,a5
        finished(false)
    80001624:	00a4bc23          	sd	a0,24(s1)
    80001628:	02048023          	sb	zero,32(s1)
    {
        if (body != nullptr)  { Scheduler::put(this); }
    8000162c:	04090063          	beqz	s2,8000166c <_ZN3CCB14createCorutineEPFvvE+0xac>
    80001630:	00048513          	mv	a0,s1
    80001634:	00000097          	auipc	ra,0x0
    80001638:	390080e7          	jalr	912(ra) # 800019c4 <_ZN9Scheduler3putEP3CCB>
    8000163c:	0300006f          	j	8000166c <_ZN3CCB14createCorutineEPFvvE+0xac>
                        body != nullptr ? (uint64) body : 0,
    80001640:	00000793          	li	a5,0
    80001644:	fd1ff06f          	j	80001614 <_ZN3CCB14createCorutineEPFvvE+0x54>
                        stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001648:	00000513          	li	a0,0
    8000164c:	fd9ff06f          	j	80001624 <_ZN3CCB14createCorutineEPFvvE+0x64>
    80001650:	00050913          	mv	s2,a0
    80001654:	00048513          	mv	a0,s1
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	254080e7          	jalr	596(ra) # 800018ac <_ZdlPv>
    80001660:	00090513          	mv	a0,s2
    80001664:	00004097          	auipc	ra,0x4
    80001668:	184080e7          	jalr	388(ra) # 800057e8 <_Unwind_Resume>
}
    8000166c:	00048513          	mv	a0,s1
    80001670:	01813083          	ld	ra,24(sp)
    80001674:	01013403          	ld	s0,16(sp)
    80001678:	00813483          	ld	s1,8(sp)
    8000167c:	00013903          	ld	s2,0(sp)
    80001680:	02010113          	addi	sp,sp,32
    80001684:	00008067          	ret

0000000080001688 <_ZN3CCB8dispatchEv>:
    CCB::dispatch();

    popRegisters();
}

void CCB::dispatch(){
    80001688:	fe010113          	addi	sp,sp,-32
    8000168c:	00113c23          	sd	ra,24(sp)
    80001690:	00813823          	sd	s0,16(sp)
    80001694:	00913423          	sd	s1,8(sp)
    80001698:	02010413          	addi	s0,sp,32
    CCB *old = running;
    8000169c:	00003497          	auipc	s1,0x3
    800016a0:	0644b483          	ld	s1,100(s1) # 80004700 <_ZN3CCB7runningE>
        return finished;
    800016a4:	0204c783          	lbu	a5,32(s1)
    if(!old->isFinished()){
    800016a8:	02078c63          	beqz	a5,800016e0 <_ZN3CCB8dispatchEv+0x58>
        Scheduler::put(old);
    }
    running = Scheduler::get();
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	2b0080e7          	jalr	688(ra) # 8000195c <_ZN9Scheduler3getEv>
    800016b4:	00003797          	auipc	a5,0x3
    800016b8:	04a7b623          	sd	a0,76(a5) # 80004700 <_ZN3CCB7runningE>

    CCB::contextSwitch(&old->context, &running->context);
    800016bc:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    800016c0:	01048513          	addi	a0,s1,16
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	a34080e7          	jalr	-1484(ra) # 800010f8 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>

    800016cc:	01813083          	ld	ra,24(sp)
    800016d0:	01013403          	ld	s0,16(sp)
    800016d4:	00813483          	ld	s1,8(sp)
    800016d8:	02010113          	addi	sp,sp,32
    800016dc:	00008067          	ret
        Scheduler::put(old);
    800016e0:	00048513          	mv	a0,s1
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	2e0080e7          	jalr	736(ra) # 800019c4 <_ZN9Scheduler3putEP3CCB>
    800016ec:	fc1ff06f          	j	800016ac <_ZN3CCB8dispatchEv+0x24>

00000000800016f0 <_ZN3CCB5yieldEv>:
void CCB::yield() {
    800016f0:	ff010113          	addi	sp,sp,-16
    800016f4:	00113423          	sd	ra,8(sp)
    800016f8:	00813023          	sd	s0,0(sp)
    800016fc:	01010413          	addi	s0,sp,16
    pushRegisters();
    80001700:	00000097          	auipc	ra,0x0
    80001704:	900080e7          	jalr	-1792(ra) # 80001000 <pushRegisters>
    CCB::dispatch();
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	f80080e7          	jalr	-128(ra) # 80001688 <_ZN3CCB8dispatchEv>
    popRegisters();
    80001710:	00000097          	auipc	ra,0x0
    80001714:	96c080e7          	jalr	-1684(ra) # 8000107c <popRegisters>
}
    80001718:	00813083          	ld	ra,8(sp)
    8000171c:	00013403          	ld	s0,0(sp)
    80001720:	01010113          	addi	sp,sp,16
    80001724:	00008067          	ret

0000000080001728 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"

//typedef uint64 size_t;

void main(){
    80001728:	fc010113          	addi	sp,sp,-64
    8000172c:	02113c23          	sd	ra,56(sp)
    80001730:	02813823          	sd	s0,48(sp)
    80001734:	02913423          	sd	s1,40(sp)
    80001738:	03213023          	sd	s2,32(sp)
    8000173c:	04010413          	addi	s0,sp,64
    __putc('o');
    80001740:	06f00513          	li	a0,111
    80001744:	00002097          	auipc	ra,0x2
    80001748:	6dc080e7          	jalr	1756(ra) # 80003e20 <__putc>
    __putc('s');
    8000174c:	07300513          	li	a0,115
    80001750:	00002097          	auipc	ra,0x2
    80001754:	6d0080e7          	jalr	1744(ra) # 80003e20 <__putc>
    __putc('1');
    80001758:	03100513          	li	a0,49
    8000175c:	00002097          	auipc	ra,0x2
    80001760:	6c4080e7          	jalr	1732(ra) # 80003e20 <__putc>
    __putc('\n');
    80001764:	00a00513          	li	a0,10
    80001768:	00002097          	auipc	ra,0x2
    8000176c:	6b8080e7          	jalr	1720(ra) # 80003e20 <__putc>
//    __putc('\n');


    CCB *coroutines[3];

    coroutines[0] = CCB::createCorutine(nullptr);
    80001770:	00000513          	li	a0,0
    80001774:	00000097          	auipc	ra,0x0
    80001778:	e4c080e7          	jalr	-436(ra) # 800015c0 <_ZN3CCB14createCorutineEPFvvE>
    8000177c:	fca43423          	sd	a0,-56(s0)
    CCB::running = coroutines[0];
    80001780:	00003797          	auipc	a5,0x3
    80001784:	f187b783          	ld	a5,-232(a5) # 80004698 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001788:	00a7b023          	sd	a0,0(a5)

    coroutines[1] = CCB::createCorutine(workerBodyA);
    8000178c:	00003517          	auipc	a0,0x3
    80001790:	efc53503          	ld	a0,-260(a0) # 80004688 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001794:	00000097          	auipc	ra,0x0
    80001798:	e2c080e7          	jalr	-468(ra) # 800015c0 <_ZN3CCB14createCorutineEPFvvE>
    8000179c:	fca43823          	sd	a0,-48(s0)
    printString("CorA created\n");
    800017a0:	00003517          	auipc	a0,0x3
    800017a4:	8c850513          	addi	a0,a0,-1848 # 80004068 <CONSOLE_STATUS+0x58>
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	2bc080e7          	jalr	700(ra) # 80001a64 <_Z11printStringPKc>

    coroutines[2] = CCB::createCorutine(workerBodyB);
    800017b0:	00003517          	auipc	a0,0x3
    800017b4:	ed053503          	ld	a0,-304(a0) # 80004680 <_GLOBAL_OFFSET_TABLE_+0x8>
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	e08080e7          	jalr	-504(ra) # 800015c0 <_ZN3CCB14createCorutineEPFvvE>
    800017c0:	fca43c23          	sd	a0,-40(s0)
    printString("CorB created\n");
    800017c4:	00003517          	auipc	a0,0x3
    800017c8:	8b450513          	addi	a0,a0,-1868 # 80004078 <CONSOLE_STATUS+0x68>
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	298080e7          	jalr	664(ra) # 80001a64 <_Z11printStringPKc>
    800017d4:	00c0006f          	j	800017e0 <main+0xb8>

    while(!(coroutines[1]->isFinished() && coroutines[2]->isFinished())){
        CCB::yield();
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	f18080e7          	jalr	-232(ra) # 800016f0 <_ZN3CCB5yieldEv>
    while(!(coroutines[1]->isFinished() && coroutines[2]->isFinished())){
    800017e0:	fd043783          	ld	a5,-48(s0)
    800017e4:	0207c783          	lbu	a5,32(a5)
    800017e8:	fe0788e3          	beqz	a5,800017d8 <main+0xb0>
    800017ec:	fd843783          	ld	a5,-40(s0)
    800017f0:	0207c783          	lbu	a5,32(a5)
    800017f4:	fe0782e3          	beqz	a5,800017d8 <main+0xb0>
    800017f8:	fc840493          	addi	s1,s0,-56
    800017fc:	0140006f          	j	80001810 <main+0xe8>
    }

    for(auto &coroutine: coroutines){
        delete coroutine;
    80001800:	00090513          	mv	a0,s2
    80001804:	00000097          	auipc	ra,0x0
    80001808:	0a8080e7          	jalr	168(ra) # 800018ac <_ZdlPv>
    for(auto &coroutine: coroutines){
    8000180c:	00848493          	addi	s1,s1,8
    80001810:	fe040793          	addi	a5,s0,-32
    80001814:	02f48063          	beq	s1,a5,80001834 <main+0x10c>
        delete coroutine;
    80001818:	0004b903          	ld	s2,0(s1)
    8000181c:	fe0908e3          	beqz	s2,8000180c <main+0xe4>
        delete[] stack;
    80001820:	00893503          	ld	a0,8(s2)
    80001824:	fc050ee3          	beqz	a0,80001800 <main+0xd8>
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	0ac080e7          	jalr	172(ra) # 800018d4 <_ZdaPv>
    80001830:	fd1ff06f          	j	80001800 <main+0xd8>
    }

    printString("Finished\n");
    80001834:	00003517          	auipc	a0,0x3
    80001838:	85450513          	addi	a0,a0,-1964 # 80004088 <CONSOLE_STATUS+0x78>
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	228080e7          	jalr	552(ra) # 80001a64 <_Z11printStringPKc>

    80001844:	03813083          	ld	ra,56(sp)
    80001848:	03013403          	ld	s0,48(sp)
    8000184c:	02813483          	ld	s1,40(sp)
    80001850:	02013903          	ld	s2,32(sp)
    80001854:	04010113          	addi	sp,sp,64
    80001858:	00008067          	ret

000000008000185c <_Znwm>:
#include "../lib/mem.h"

void *operator new(uint64 n){
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00113423          	sd	ra,8(sp)
    80001864:	00813023          	sd	s0,0(sp)
    80001868:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    8000186c:	00002097          	auipc	ra,0x2
    80001870:	45c080e7          	jalr	1116(ra) # 80003cc8 <__mem_alloc>
}
    80001874:	00813083          	ld	ra,8(sp)
    80001878:	00013403          	ld	s0,0(sp)
    8000187c:	01010113          	addi	sp,sp,16
    80001880:	00008067          	ret

0000000080001884 <_Znam>:

void *operator new[](uint64 n){
    80001884:	ff010113          	addi	sp,sp,-16
    80001888:	00113423          	sd	ra,8(sp)
    8000188c:	00813023          	sd	s0,0(sp)
    80001890:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001894:	00002097          	auipc	ra,0x2
    80001898:	434080e7          	jalr	1076(ra) # 80003cc8 <__mem_alloc>
}
    8000189c:	00813083          	ld	ra,8(sp)
    800018a0:	00013403          	ld	s0,0(sp)
    800018a4:	01010113          	addi	sp,sp,16
    800018a8:	00008067          	ret

00000000800018ac <_ZdlPv>:

void operator delete (void *p) noexcept {
    800018ac:	ff010113          	addi	sp,sp,-16
    800018b0:	00113423          	sd	ra,8(sp)
    800018b4:	00813023          	sd	s0,0(sp)
    800018b8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800018bc:	00002097          	auipc	ra,0x2
    800018c0:	340080e7          	jalr	832(ra) # 80003bfc <__mem_free>
}
    800018c4:	00813083          	ld	ra,8(sp)
    800018c8:	00013403          	ld	s0,0(sp)
    800018cc:	01010113          	addi	sp,sp,16
    800018d0:	00008067          	ret

00000000800018d4 <_ZdaPv>:

void operator delete[] (void *p) noexcept {
    800018d4:	ff010113          	addi	sp,sp,-16
    800018d8:	00113423          	sd	ra,8(sp)
    800018dc:	00813023          	sd	s0,0(sp)
    800018e0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800018e4:	00002097          	auipc	ra,0x2
    800018e8:	318080e7          	jalr	792(ra) # 80003bfc <__mem_free>
    800018ec:	00813083          	ld	ra,8(sp)
    800018f0:	00013403          	ld	s0,0(sp)
    800018f4:	01010113          	addi	sp,sp,16
    800018f8:	00008067          	ret

00000000800018fc <_ZN5Riscv10popSppSpieEv>:
//

#include "../h/riscv.hpp"

void Riscv::popSppSpie()
{
    800018fc:	ff010113          	addi	sp,sp,-16
    80001900:	00813423          	sd	s0,8(sp)
    80001904:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001908:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000190c:	10200073          	sret
    80001910:	00813403          	ld	s0,8(sp)
    80001914:	01010113          	addi	sp,sp,16
    80001918:	00008067          	ret

000000008000191c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    8000191c:	ff010113          	addi	sp,sp,-16
    80001920:	00813423          	sd	s0,8(sp)
    80001924:	01010413          	addi	s0,sp,16
    80001928:	00100793          	li	a5,1
    8000192c:	00f50863          	beq	a0,a5,8000193c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001930:	00813403          	ld	s0,8(sp)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret
    8000193c:	000107b7          	lui	a5,0x10
    80001940:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001944:	fef596e3          	bne	a1,a5,80001930 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001948:	00003797          	auipc	a5,0x3
    8000194c:	dc078793          	addi	a5,a5,-576 # 80004708 <_ZN9Scheduler19readyCoroutineQueueE>
    80001950:	0007b023          	sd	zero,0(a5)
    80001954:	0007b423          	sd	zero,8(a5)
    80001958:	fd9ff06f          	j	80001930 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000195c <_ZN9Scheduler3getEv>:
{
    8000195c:	fe010113          	addi	sp,sp,-32
    80001960:	00113c23          	sd	ra,24(sp)
    80001964:	00813823          	sd	s0,16(sp)
    80001968:	00913423          	sd	s1,8(sp)
    8000196c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001970:	00003517          	auipc	a0,0x3
    80001974:	d9853503          	ld	a0,-616(a0) # 80004708 <_ZN9Scheduler19readyCoroutineQueueE>
    80001978:	04050263          	beqz	a0,800019bc <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000197c:	00853783          	ld	a5,8(a0)
    80001980:	00003717          	auipc	a4,0x3
    80001984:	d8f73423          	sd	a5,-632(a4) # 80004708 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80001988:	02078463          	beqz	a5,800019b0 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    8000198c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001990:	00000097          	auipc	ra,0x0
    80001994:	f1c080e7          	jalr	-228(ra) # 800018ac <_ZdlPv>
}
    80001998:	00048513          	mv	a0,s1
    8000199c:	01813083          	ld	ra,24(sp)
    800019a0:	01013403          	ld	s0,16(sp)
    800019a4:	00813483          	ld	s1,8(sp)
    800019a8:	02010113          	addi	sp,sp,32
    800019ac:	00008067          	ret
        if (!head) { tail = 0; }
    800019b0:	00003797          	auipc	a5,0x3
    800019b4:	d607b023          	sd	zero,-672(a5) # 80004710 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800019b8:	fd5ff06f          	j	8000198c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800019bc:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800019c0:	fd9ff06f          	j	80001998 <_ZN9Scheduler3getEv+0x3c>

00000000800019c4 <_ZN9Scheduler3putEP3CCB>:
{
    800019c4:	fe010113          	addi	sp,sp,-32
    800019c8:	00113c23          	sd	ra,24(sp)
    800019cc:	00813823          	sd	s0,16(sp)
    800019d0:	00913423          	sd	s1,8(sp)
    800019d4:	02010413          	addi	s0,sp,32
    800019d8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800019dc:	01000513          	li	a0,16
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	e7c080e7          	jalr	-388(ra) # 8000185c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800019e8:	00953023          	sd	s1,0(a0)
    800019ec:	00053423          	sd	zero,8(a0)
        if (tail)
    800019f0:	00003797          	auipc	a5,0x3
    800019f4:	d207b783          	ld	a5,-736(a5) # 80004710 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800019f8:	02078263          	beqz	a5,80001a1c <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    800019fc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001a00:	00003797          	auipc	a5,0x3
    80001a04:	d0a7b823          	sd	a0,-752(a5) # 80004710 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a08:	01813083          	ld	ra,24(sp)
    80001a0c:	01013403          	ld	s0,16(sp)
    80001a10:	00813483          	ld	s1,8(sp)
    80001a14:	02010113          	addi	sp,sp,32
    80001a18:	00008067          	ret
            head = tail = elem;
    80001a1c:	00003797          	auipc	a5,0x3
    80001a20:	cec78793          	addi	a5,a5,-788 # 80004708 <_ZN9Scheduler19readyCoroutineQueueE>
    80001a24:	00a7b423          	sd	a0,8(a5)
    80001a28:	00a7b023          	sd	a0,0(a5)
    80001a2c:	fddff06f          	j	80001a08 <_ZN9Scheduler3putEP3CCB+0x44>

0000000080001a30 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00113423          	sd	ra,8(sp)
    80001a38:	00813023          	sd	s0,0(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    80001a40:	000105b7          	lui	a1,0x10
    80001a44:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001a48:	00100513          	li	a0,1
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	ed0080e7          	jalr	-304(ra) # 8000191c <_Z41__static_initialization_and_destruction_0ii>
    80001a54:	00813083          	ld	ra,8(sp)
    80001a58:	00013403          	ld	s0,0(sp)
    80001a5c:	01010113          	addi	sp,sp,16
    80001a60:	00008067          	ret

0000000080001a64 <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001a64:	fe010113          	addi	sp,sp,-32
    80001a68:	00113c23          	sd	ra,24(sp)
    80001a6c:	00813823          	sd	s0,16(sp)
    80001a70:	00913423          	sd	s1,8(sp)
    80001a74:	02010413          	addi	s0,sp,32
    80001a78:	00050493          	mv	s1,a0
    while (*string != '\0')
    80001a7c:	0004c503          	lbu	a0,0(s1)
    80001a80:	00050a63          	beqz	a0,80001a94 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	39c080e7          	jalr	924(ra) # 80003e20 <__putc>
        string++;
    80001a8c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001a90:	fedff06f          	j	80001a7c <_Z11printStringPKc+0x18>
    }
}
    80001a94:	01813083          	ld	ra,24(sp)
    80001a98:	01013403          	ld	s0,16(sp)
    80001a9c:	00813483          	ld	s1,8(sp)
    80001aa0:	02010113          	addi	sp,sp,32
    80001aa4:	00008067          	ret

0000000080001aa8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001aa8:	fd010113          	addi	sp,sp,-48
    80001aac:	02113423          	sd	ra,40(sp)
    80001ab0:	02813023          	sd	s0,32(sp)
    80001ab4:	00913c23          	sd	s1,24(sp)
    80001ab8:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001abc:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001ac0:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001ac4:	00a00613          	li	a2,10
    80001ac8:	02c5773b          	remuw	a4,a0,a2
    80001acc:	02071693          	slli	a3,a4,0x20
    80001ad0:	0206d693          	srli	a3,a3,0x20
    80001ad4:	00002717          	auipc	a4,0x2
    80001ad8:	5c470713          	addi	a4,a4,1476 # 80004098 <_ZZ12printIntegermE6digits>
    80001adc:	00d70733          	add	a4,a4,a3
    80001ae0:	00074703          	lbu	a4,0(a4)
    80001ae4:	fe040693          	addi	a3,s0,-32
    80001ae8:	009687b3          	add	a5,a3,s1
    80001aec:	0014849b          	addiw	s1,s1,1
    80001af0:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001af4:	0005071b          	sext.w	a4,a0
    80001af8:	02c5553b          	divuw	a0,a0,a2
    80001afc:	00900793          	li	a5,9
    80001b00:	fce7e2e3          	bltu	a5,a4,80001ac4 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80001b04:	fff4849b          	addiw	s1,s1,-1
    80001b08:	0004ce63          	bltz	s1,80001b24 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80001b0c:	fe040793          	addi	a5,s0,-32
    80001b10:	009787b3          	add	a5,a5,s1
    80001b14:	ff07c503          	lbu	a0,-16(a5)
    80001b18:	00002097          	auipc	ra,0x2
    80001b1c:	308080e7          	jalr	776(ra) # 80003e20 <__putc>
    80001b20:	fe5ff06f          	j	80001b04 <_Z12printIntegerm+0x5c>
    80001b24:	02813083          	ld	ra,40(sp)
    80001b28:	02013403          	ld	s0,32(sp)
    80001b2c:	01813483          	ld	s1,24(sp)
    80001b30:	03010113          	addi	sp,sp,48
    80001b34:	00008067          	ret

0000000080001b38 <start>:
    80001b38:	ff010113          	addi	sp,sp,-16
    80001b3c:	00813423          	sd	s0,8(sp)
    80001b40:	01010413          	addi	s0,sp,16
    80001b44:	300027f3          	csrr	a5,mstatus
    80001b48:	ffffe737          	lui	a4,0xffffe
    80001b4c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8e6f>
    80001b50:	00e7f7b3          	and	a5,a5,a4
    80001b54:	00001737          	lui	a4,0x1
    80001b58:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001b5c:	00e7e7b3          	or	a5,a5,a4
    80001b60:	30079073          	csrw	mstatus,a5
    80001b64:	00000797          	auipc	a5,0x0
    80001b68:	16078793          	addi	a5,a5,352 # 80001cc4 <system_main>
    80001b6c:	34179073          	csrw	mepc,a5
    80001b70:	00000793          	li	a5,0
    80001b74:	18079073          	csrw	satp,a5
    80001b78:	000107b7          	lui	a5,0x10
    80001b7c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b80:	30279073          	csrw	medeleg,a5
    80001b84:	30379073          	csrw	mideleg,a5
    80001b88:	104027f3          	csrr	a5,sie
    80001b8c:	2227e793          	ori	a5,a5,546
    80001b90:	10479073          	csrw	sie,a5
    80001b94:	fff00793          	li	a5,-1
    80001b98:	00a7d793          	srli	a5,a5,0xa
    80001b9c:	3b079073          	csrw	pmpaddr0,a5
    80001ba0:	00f00793          	li	a5,15
    80001ba4:	3a079073          	csrw	pmpcfg0,a5
    80001ba8:	f14027f3          	csrr	a5,mhartid
    80001bac:	0200c737          	lui	a4,0x200c
    80001bb0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001bb4:	0007869b          	sext.w	a3,a5
    80001bb8:	00269713          	slli	a4,a3,0x2
    80001bbc:	000f4637          	lui	a2,0xf4
    80001bc0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001bc4:	00d70733          	add	a4,a4,a3
    80001bc8:	0037979b          	slliw	a5,a5,0x3
    80001bcc:	020046b7          	lui	a3,0x2004
    80001bd0:	00d787b3          	add	a5,a5,a3
    80001bd4:	00c585b3          	add	a1,a1,a2
    80001bd8:	00371693          	slli	a3,a4,0x3
    80001bdc:	00003717          	auipc	a4,0x3
    80001be0:	b4470713          	addi	a4,a4,-1212 # 80004720 <timer_scratch>
    80001be4:	00b7b023          	sd	a1,0(a5)
    80001be8:	00d70733          	add	a4,a4,a3
    80001bec:	00f73c23          	sd	a5,24(a4)
    80001bf0:	02c73023          	sd	a2,32(a4)
    80001bf4:	34071073          	csrw	mscratch,a4
    80001bf8:	00000797          	auipc	a5,0x0
    80001bfc:	6e878793          	addi	a5,a5,1768 # 800022e0 <timervec>
    80001c00:	30579073          	csrw	mtvec,a5
    80001c04:	300027f3          	csrr	a5,mstatus
    80001c08:	0087e793          	ori	a5,a5,8
    80001c0c:	30079073          	csrw	mstatus,a5
    80001c10:	304027f3          	csrr	a5,mie
    80001c14:	0807e793          	ori	a5,a5,128
    80001c18:	30479073          	csrw	mie,a5
    80001c1c:	f14027f3          	csrr	a5,mhartid
    80001c20:	0007879b          	sext.w	a5,a5
    80001c24:	00078213          	mv	tp,a5
    80001c28:	30200073          	mret
    80001c2c:	00813403          	ld	s0,8(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <timerinit>:
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00813423          	sd	s0,8(sp)
    80001c40:	01010413          	addi	s0,sp,16
    80001c44:	f14027f3          	csrr	a5,mhartid
    80001c48:	0200c737          	lui	a4,0x200c
    80001c4c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001c50:	0007869b          	sext.w	a3,a5
    80001c54:	00269713          	slli	a4,a3,0x2
    80001c58:	000f4637          	lui	a2,0xf4
    80001c5c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001c60:	00d70733          	add	a4,a4,a3
    80001c64:	0037979b          	slliw	a5,a5,0x3
    80001c68:	020046b7          	lui	a3,0x2004
    80001c6c:	00d787b3          	add	a5,a5,a3
    80001c70:	00c585b3          	add	a1,a1,a2
    80001c74:	00371693          	slli	a3,a4,0x3
    80001c78:	00003717          	auipc	a4,0x3
    80001c7c:	aa870713          	addi	a4,a4,-1368 # 80004720 <timer_scratch>
    80001c80:	00b7b023          	sd	a1,0(a5)
    80001c84:	00d70733          	add	a4,a4,a3
    80001c88:	00f73c23          	sd	a5,24(a4)
    80001c8c:	02c73023          	sd	a2,32(a4)
    80001c90:	34071073          	csrw	mscratch,a4
    80001c94:	00000797          	auipc	a5,0x0
    80001c98:	64c78793          	addi	a5,a5,1612 # 800022e0 <timervec>
    80001c9c:	30579073          	csrw	mtvec,a5
    80001ca0:	300027f3          	csrr	a5,mstatus
    80001ca4:	0087e793          	ori	a5,a5,8
    80001ca8:	30079073          	csrw	mstatus,a5
    80001cac:	304027f3          	csrr	a5,mie
    80001cb0:	0807e793          	ori	a5,a5,128
    80001cb4:	30479073          	csrw	mie,a5
    80001cb8:	00813403          	ld	s0,8(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <system_main>:
    80001cc4:	fe010113          	addi	sp,sp,-32
    80001cc8:	00813823          	sd	s0,16(sp)
    80001ccc:	00913423          	sd	s1,8(sp)
    80001cd0:	00113c23          	sd	ra,24(sp)
    80001cd4:	02010413          	addi	s0,sp,32
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	0c4080e7          	jalr	196(ra) # 80001d9c <cpuid>
    80001ce0:	00003497          	auipc	s1,0x3
    80001ce4:	9e848493          	addi	s1,s1,-1560 # 800046c8 <started>
    80001ce8:	02050263          	beqz	a0,80001d0c <system_main+0x48>
    80001cec:	0004a783          	lw	a5,0(s1)
    80001cf0:	0007879b          	sext.w	a5,a5
    80001cf4:	fe078ce3          	beqz	a5,80001cec <system_main+0x28>
    80001cf8:	0ff0000f          	fence
    80001cfc:	00002517          	auipc	a0,0x2
    80001d00:	3dc50513          	addi	a0,a0,988 # 800040d8 <_ZZ12printIntegermE6digits+0x40>
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	a78080e7          	jalr	-1416(ra) # 8000277c <panic>
    80001d0c:	00001097          	auipc	ra,0x1
    80001d10:	9cc080e7          	jalr	-1588(ra) # 800026d8 <consoleinit>
    80001d14:	00001097          	auipc	ra,0x1
    80001d18:	158080e7          	jalr	344(ra) # 80002e6c <printfinit>
    80001d1c:	00002517          	auipc	a0,0x2
    80001d20:	37450513          	addi	a0,a0,884 # 80004090 <CONSOLE_STATUS+0x80>
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	ab4080e7          	jalr	-1356(ra) # 800027d8 <__printf>
    80001d2c:	00002517          	auipc	a0,0x2
    80001d30:	37c50513          	addi	a0,a0,892 # 800040a8 <_ZZ12printIntegermE6digits+0x10>
    80001d34:	00001097          	auipc	ra,0x1
    80001d38:	aa4080e7          	jalr	-1372(ra) # 800027d8 <__printf>
    80001d3c:	00002517          	auipc	a0,0x2
    80001d40:	35450513          	addi	a0,a0,852 # 80004090 <CONSOLE_STATUS+0x80>
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	a94080e7          	jalr	-1388(ra) # 800027d8 <__printf>
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	4ac080e7          	jalr	1196(ra) # 800031f8 <kinit>
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	148080e7          	jalr	328(ra) # 80001e9c <trapinit>
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	16c080e7          	jalr	364(ra) # 80001ec8 <trapinithart>
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	5bc080e7          	jalr	1468(ra) # 80002320 <plicinit>
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	5dc080e7          	jalr	1500(ra) # 80002348 <plicinithart>
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	078080e7          	jalr	120(ra) # 80001dec <userinit>
    80001d7c:	0ff0000f          	fence
    80001d80:	00100793          	li	a5,1
    80001d84:	00002517          	auipc	a0,0x2
    80001d88:	33c50513          	addi	a0,a0,828 # 800040c0 <_ZZ12printIntegermE6digits+0x28>
    80001d8c:	00f4a023          	sw	a5,0(s1)
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	a48080e7          	jalr	-1464(ra) # 800027d8 <__printf>
    80001d98:	0000006f          	j	80001d98 <system_main+0xd4>

0000000080001d9c <cpuid>:
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00813423          	sd	s0,8(sp)
    80001da4:	01010413          	addi	s0,sp,16
    80001da8:	00020513          	mv	a0,tp
    80001dac:	00813403          	ld	s0,8(sp)
    80001db0:	0005051b          	sext.w	a0,a0
    80001db4:	01010113          	addi	sp,sp,16
    80001db8:	00008067          	ret

0000000080001dbc <mycpu>:
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00813423          	sd	s0,8(sp)
    80001dc4:	01010413          	addi	s0,sp,16
    80001dc8:	00020793          	mv	a5,tp
    80001dcc:	00813403          	ld	s0,8(sp)
    80001dd0:	0007879b          	sext.w	a5,a5
    80001dd4:	00779793          	slli	a5,a5,0x7
    80001dd8:	00004517          	auipc	a0,0x4
    80001ddc:	97850513          	addi	a0,a0,-1672 # 80005750 <cpus>
    80001de0:	00f50533          	add	a0,a0,a5
    80001de4:	01010113          	addi	sp,sp,16
    80001de8:	00008067          	ret

0000000080001dec <userinit>:
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00813423          	sd	s0,8(sp)
    80001df4:	01010413          	addi	s0,sp,16
    80001df8:	00813403          	ld	s0,8(sp)
    80001dfc:	01010113          	addi	sp,sp,16
    80001e00:	00000317          	auipc	t1,0x0
    80001e04:	92830067          	jr	-1752(t1) # 80001728 <main>

0000000080001e08 <either_copyout>:
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00813023          	sd	s0,0(sp)
    80001e10:	00113423          	sd	ra,8(sp)
    80001e14:	01010413          	addi	s0,sp,16
    80001e18:	02051663          	bnez	a0,80001e44 <either_copyout+0x3c>
    80001e1c:	00058513          	mv	a0,a1
    80001e20:	00060593          	mv	a1,a2
    80001e24:	0006861b          	sext.w	a2,a3
    80001e28:	00002097          	auipc	ra,0x2
    80001e2c:	c5c080e7          	jalr	-932(ra) # 80003a84 <__memmove>
    80001e30:	00813083          	ld	ra,8(sp)
    80001e34:	00013403          	ld	s0,0(sp)
    80001e38:	00000513          	li	a0,0
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret
    80001e44:	00002517          	auipc	a0,0x2
    80001e48:	2bc50513          	addi	a0,a0,700 # 80004100 <_ZZ12printIntegermE6digits+0x68>
    80001e4c:	00001097          	auipc	ra,0x1
    80001e50:	930080e7          	jalr	-1744(ra) # 8000277c <panic>

0000000080001e54 <either_copyin>:
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	00113423          	sd	ra,8(sp)
    80001e60:	01010413          	addi	s0,sp,16
    80001e64:	02059463          	bnez	a1,80001e8c <either_copyin+0x38>
    80001e68:	00060593          	mv	a1,a2
    80001e6c:	0006861b          	sext.w	a2,a3
    80001e70:	00002097          	auipc	ra,0x2
    80001e74:	c14080e7          	jalr	-1004(ra) # 80003a84 <__memmove>
    80001e78:	00813083          	ld	ra,8(sp)
    80001e7c:	00013403          	ld	s0,0(sp)
    80001e80:	00000513          	li	a0,0
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret
    80001e8c:	00002517          	auipc	a0,0x2
    80001e90:	29c50513          	addi	a0,a0,668 # 80004128 <_ZZ12printIntegermE6digits+0x90>
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	8e8080e7          	jalr	-1816(ra) # 8000277c <panic>

0000000080001e9c <trapinit>:
    80001e9c:	ff010113          	addi	sp,sp,-16
    80001ea0:	00813423          	sd	s0,8(sp)
    80001ea4:	01010413          	addi	s0,sp,16
    80001ea8:	00813403          	ld	s0,8(sp)
    80001eac:	00002597          	auipc	a1,0x2
    80001eb0:	2a458593          	addi	a1,a1,676 # 80004150 <_ZZ12printIntegermE6digits+0xb8>
    80001eb4:	00004517          	auipc	a0,0x4
    80001eb8:	91c50513          	addi	a0,a0,-1764 # 800057d0 <tickslock>
    80001ebc:	01010113          	addi	sp,sp,16
    80001ec0:	00001317          	auipc	t1,0x1
    80001ec4:	5c830067          	jr	1480(t1) # 80003488 <initlock>

0000000080001ec8 <trapinithart>:
    80001ec8:	ff010113          	addi	sp,sp,-16
    80001ecc:	00813423          	sd	s0,8(sp)
    80001ed0:	01010413          	addi	s0,sp,16
    80001ed4:	00000797          	auipc	a5,0x0
    80001ed8:	2fc78793          	addi	a5,a5,764 # 800021d0 <kernelvec>
    80001edc:	10579073          	csrw	stvec,a5
    80001ee0:	00813403          	ld	s0,8(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <usertrap>:
    80001eec:	ff010113          	addi	sp,sp,-16
    80001ef0:	00813423          	sd	s0,8(sp)
    80001ef4:	01010413          	addi	s0,sp,16
    80001ef8:	00813403          	ld	s0,8(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <usertrapret>:
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00813423          	sd	s0,8(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    80001f10:	00813403          	ld	s0,8(sp)
    80001f14:	01010113          	addi	sp,sp,16
    80001f18:	00008067          	ret

0000000080001f1c <kerneltrap>:
    80001f1c:	fe010113          	addi	sp,sp,-32
    80001f20:	00813823          	sd	s0,16(sp)
    80001f24:	00113c23          	sd	ra,24(sp)
    80001f28:	00913423          	sd	s1,8(sp)
    80001f2c:	02010413          	addi	s0,sp,32
    80001f30:	142025f3          	csrr	a1,scause
    80001f34:	100027f3          	csrr	a5,sstatus
    80001f38:	0027f793          	andi	a5,a5,2
    80001f3c:	10079c63          	bnez	a5,80002054 <kerneltrap+0x138>
    80001f40:	142027f3          	csrr	a5,scause
    80001f44:	0207ce63          	bltz	a5,80001f80 <kerneltrap+0x64>
    80001f48:	00002517          	auipc	a0,0x2
    80001f4c:	25050513          	addi	a0,a0,592 # 80004198 <_ZZ12printIntegermE6digits+0x100>
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	888080e7          	jalr	-1912(ra) # 800027d8 <__printf>
    80001f58:	141025f3          	csrr	a1,sepc
    80001f5c:	14302673          	csrr	a2,stval
    80001f60:	00002517          	auipc	a0,0x2
    80001f64:	24850513          	addi	a0,a0,584 # 800041a8 <_ZZ12printIntegermE6digits+0x110>
    80001f68:	00001097          	auipc	ra,0x1
    80001f6c:	870080e7          	jalr	-1936(ra) # 800027d8 <__printf>
    80001f70:	00002517          	auipc	a0,0x2
    80001f74:	25050513          	addi	a0,a0,592 # 800041c0 <_ZZ12printIntegermE6digits+0x128>
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	804080e7          	jalr	-2044(ra) # 8000277c <panic>
    80001f80:	0ff7f713          	andi	a4,a5,255
    80001f84:	00900693          	li	a3,9
    80001f88:	04d70063          	beq	a4,a3,80001fc8 <kerneltrap+0xac>
    80001f8c:	fff00713          	li	a4,-1
    80001f90:	03f71713          	slli	a4,a4,0x3f
    80001f94:	00170713          	addi	a4,a4,1
    80001f98:	fae798e3          	bne	a5,a4,80001f48 <kerneltrap+0x2c>
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	e00080e7          	jalr	-512(ra) # 80001d9c <cpuid>
    80001fa4:	06050663          	beqz	a0,80002010 <kerneltrap+0xf4>
    80001fa8:	144027f3          	csrr	a5,sip
    80001fac:	ffd7f793          	andi	a5,a5,-3
    80001fb0:	14479073          	csrw	sip,a5
    80001fb4:	01813083          	ld	ra,24(sp)
    80001fb8:	01013403          	ld	s0,16(sp)
    80001fbc:	00813483          	ld	s1,8(sp)
    80001fc0:	02010113          	addi	sp,sp,32
    80001fc4:	00008067          	ret
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	3cc080e7          	jalr	972(ra) # 80002394 <plic_claim>
    80001fd0:	00a00793          	li	a5,10
    80001fd4:	00050493          	mv	s1,a0
    80001fd8:	06f50863          	beq	a0,a5,80002048 <kerneltrap+0x12c>
    80001fdc:	fc050ce3          	beqz	a0,80001fb4 <kerneltrap+0x98>
    80001fe0:	00050593          	mv	a1,a0
    80001fe4:	00002517          	auipc	a0,0x2
    80001fe8:	19450513          	addi	a0,a0,404 # 80004178 <_ZZ12printIntegermE6digits+0xe0>
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	7ec080e7          	jalr	2028(ra) # 800027d8 <__printf>
    80001ff4:	01013403          	ld	s0,16(sp)
    80001ff8:	01813083          	ld	ra,24(sp)
    80001ffc:	00048513          	mv	a0,s1
    80002000:	00813483          	ld	s1,8(sp)
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00000317          	auipc	t1,0x0
    8000200c:	3c430067          	jr	964(t1) # 800023cc <plic_complete>
    80002010:	00003517          	auipc	a0,0x3
    80002014:	7c050513          	addi	a0,a0,1984 # 800057d0 <tickslock>
    80002018:	00001097          	auipc	ra,0x1
    8000201c:	494080e7          	jalr	1172(ra) # 800034ac <acquire>
    80002020:	00002717          	auipc	a4,0x2
    80002024:	6ac70713          	addi	a4,a4,1708 # 800046cc <ticks>
    80002028:	00072783          	lw	a5,0(a4)
    8000202c:	00003517          	auipc	a0,0x3
    80002030:	7a450513          	addi	a0,a0,1956 # 800057d0 <tickslock>
    80002034:	0017879b          	addiw	a5,a5,1
    80002038:	00f72023          	sw	a5,0(a4)
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	53c080e7          	jalr	1340(ra) # 80003578 <release>
    80002044:	f65ff06f          	j	80001fa8 <kerneltrap+0x8c>
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	098080e7          	jalr	152(ra) # 800030e0 <uartintr>
    80002050:	fa5ff06f          	j	80001ff4 <kerneltrap+0xd8>
    80002054:	00002517          	auipc	a0,0x2
    80002058:	10450513          	addi	a0,a0,260 # 80004158 <_ZZ12printIntegermE6digits+0xc0>
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	720080e7          	jalr	1824(ra) # 8000277c <panic>

0000000080002064 <clockintr>:
    80002064:	fe010113          	addi	sp,sp,-32
    80002068:	00813823          	sd	s0,16(sp)
    8000206c:	00913423          	sd	s1,8(sp)
    80002070:	00113c23          	sd	ra,24(sp)
    80002074:	02010413          	addi	s0,sp,32
    80002078:	00003497          	auipc	s1,0x3
    8000207c:	75848493          	addi	s1,s1,1880 # 800057d0 <tickslock>
    80002080:	00048513          	mv	a0,s1
    80002084:	00001097          	auipc	ra,0x1
    80002088:	428080e7          	jalr	1064(ra) # 800034ac <acquire>
    8000208c:	00002717          	auipc	a4,0x2
    80002090:	64070713          	addi	a4,a4,1600 # 800046cc <ticks>
    80002094:	00072783          	lw	a5,0(a4)
    80002098:	01013403          	ld	s0,16(sp)
    8000209c:	01813083          	ld	ra,24(sp)
    800020a0:	00048513          	mv	a0,s1
    800020a4:	0017879b          	addiw	a5,a5,1
    800020a8:	00813483          	ld	s1,8(sp)
    800020ac:	00f72023          	sw	a5,0(a4)
    800020b0:	02010113          	addi	sp,sp,32
    800020b4:	00001317          	auipc	t1,0x1
    800020b8:	4c430067          	jr	1220(t1) # 80003578 <release>

00000000800020bc <devintr>:
    800020bc:	142027f3          	csrr	a5,scause
    800020c0:	00000513          	li	a0,0
    800020c4:	0007c463          	bltz	a5,800020cc <devintr+0x10>
    800020c8:	00008067          	ret
    800020cc:	fe010113          	addi	sp,sp,-32
    800020d0:	00813823          	sd	s0,16(sp)
    800020d4:	00113c23          	sd	ra,24(sp)
    800020d8:	00913423          	sd	s1,8(sp)
    800020dc:	02010413          	addi	s0,sp,32
    800020e0:	0ff7f713          	andi	a4,a5,255
    800020e4:	00900693          	li	a3,9
    800020e8:	04d70c63          	beq	a4,a3,80002140 <devintr+0x84>
    800020ec:	fff00713          	li	a4,-1
    800020f0:	03f71713          	slli	a4,a4,0x3f
    800020f4:	00170713          	addi	a4,a4,1
    800020f8:	00e78c63          	beq	a5,a4,80002110 <devintr+0x54>
    800020fc:	01813083          	ld	ra,24(sp)
    80002100:	01013403          	ld	s0,16(sp)
    80002104:	00813483          	ld	s1,8(sp)
    80002108:	02010113          	addi	sp,sp,32
    8000210c:	00008067          	ret
    80002110:	00000097          	auipc	ra,0x0
    80002114:	c8c080e7          	jalr	-884(ra) # 80001d9c <cpuid>
    80002118:	06050663          	beqz	a0,80002184 <devintr+0xc8>
    8000211c:	144027f3          	csrr	a5,sip
    80002120:	ffd7f793          	andi	a5,a5,-3
    80002124:	14479073          	csrw	sip,a5
    80002128:	01813083          	ld	ra,24(sp)
    8000212c:	01013403          	ld	s0,16(sp)
    80002130:	00813483          	ld	s1,8(sp)
    80002134:	00200513          	li	a0,2
    80002138:	02010113          	addi	sp,sp,32
    8000213c:	00008067          	ret
    80002140:	00000097          	auipc	ra,0x0
    80002144:	254080e7          	jalr	596(ra) # 80002394 <plic_claim>
    80002148:	00a00793          	li	a5,10
    8000214c:	00050493          	mv	s1,a0
    80002150:	06f50663          	beq	a0,a5,800021bc <devintr+0x100>
    80002154:	00100513          	li	a0,1
    80002158:	fa0482e3          	beqz	s1,800020fc <devintr+0x40>
    8000215c:	00048593          	mv	a1,s1
    80002160:	00002517          	auipc	a0,0x2
    80002164:	01850513          	addi	a0,a0,24 # 80004178 <_ZZ12printIntegermE6digits+0xe0>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	670080e7          	jalr	1648(ra) # 800027d8 <__printf>
    80002170:	00048513          	mv	a0,s1
    80002174:	00000097          	auipc	ra,0x0
    80002178:	258080e7          	jalr	600(ra) # 800023cc <plic_complete>
    8000217c:	00100513          	li	a0,1
    80002180:	f7dff06f          	j	800020fc <devintr+0x40>
    80002184:	00003517          	auipc	a0,0x3
    80002188:	64c50513          	addi	a0,a0,1612 # 800057d0 <tickslock>
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	320080e7          	jalr	800(ra) # 800034ac <acquire>
    80002194:	00002717          	auipc	a4,0x2
    80002198:	53870713          	addi	a4,a4,1336 # 800046cc <ticks>
    8000219c:	00072783          	lw	a5,0(a4)
    800021a0:	00003517          	auipc	a0,0x3
    800021a4:	63050513          	addi	a0,a0,1584 # 800057d0 <tickslock>
    800021a8:	0017879b          	addiw	a5,a5,1
    800021ac:	00f72023          	sw	a5,0(a4)
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	3c8080e7          	jalr	968(ra) # 80003578 <release>
    800021b8:	f65ff06f          	j	8000211c <devintr+0x60>
    800021bc:	00001097          	auipc	ra,0x1
    800021c0:	f24080e7          	jalr	-220(ra) # 800030e0 <uartintr>
    800021c4:	fadff06f          	j	80002170 <devintr+0xb4>
	...

00000000800021d0 <kernelvec>:
    800021d0:	f0010113          	addi	sp,sp,-256
    800021d4:	00113023          	sd	ra,0(sp)
    800021d8:	00213423          	sd	sp,8(sp)
    800021dc:	00313823          	sd	gp,16(sp)
    800021e0:	00413c23          	sd	tp,24(sp)
    800021e4:	02513023          	sd	t0,32(sp)
    800021e8:	02613423          	sd	t1,40(sp)
    800021ec:	02713823          	sd	t2,48(sp)
    800021f0:	02813c23          	sd	s0,56(sp)
    800021f4:	04913023          	sd	s1,64(sp)
    800021f8:	04a13423          	sd	a0,72(sp)
    800021fc:	04b13823          	sd	a1,80(sp)
    80002200:	04c13c23          	sd	a2,88(sp)
    80002204:	06d13023          	sd	a3,96(sp)
    80002208:	06e13423          	sd	a4,104(sp)
    8000220c:	06f13823          	sd	a5,112(sp)
    80002210:	07013c23          	sd	a6,120(sp)
    80002214:	09113023          	sd	a7,128(sp)
    80002218:	09213423          	sd	s2,136(sp)
    8000221c:	09313823          	sd	s3,144(sp)
    80002220:	09413c23          	sd	s4,152(sp)
    80002224:	0b513023          	sd	s5,160(sp)
    80002228:	0b613423          	sd	s6,168(sp)
    8000222c:	0b713823          	sd	s7,176(sp)
    80002230:	0b813c23          	sd	s8,184(sp)
    80002234:	0d913023          	sd	s9,192(sp)
    80002238:	0da13423          	sd	s10,200(sp)
    8000223c:	0db13823          	sd	s11,208(sp)
    80002240:	0dc13c23          	sd	t3,216(sp)
    80002244:	0fd13023          	sd	t4,224(sp)
    80002248:	0fe13423          	sd	t5,232(sp)
    8000224c:	0ff13823          	sd	t6,240(sp)
    80002250:	ccdff0ef          	jal	ra,80001f1c <kerneltrap>
    80002254:	00013083          	ld	ra,0(sp)
    80002258:	00813103          	ld	sp,8(sp)
    8000225c:	01013183          	ld	gp,16(sp)
    80002260:	02013283          	ld	t0,32(sp)
    80002264:	02813303          	ld	t1,40(sp)
    80002268:	03013383          	ld	t2,48(sp)
    8000226c:	03813403          	ld	s0,56(sp)
    80002270:	04013483          	ld	s1,64(sp)
    80002274:	04813503          	ld	a0,72(sp)
    80002278:	05013583          	ld	a1,80(sp)
    8000227c:	05813603          	ld	a2,88(sp)
    80002280:	06013683          	ld	a3,96(sp)
    80002284:	06813703          	ld	a4,104(sp)
    80002288:	07013783          	ld	a5,112(sp)
    8000228c:	07813803          	ld	a6,120(sp)
    80002290:	08013883          	ld	a7,128(sp)
    80002294:	08813903          	ld	s2,136(sp)
    80002298:	09013983          	ld	s3,144(sp)
    8000229c:	09813a03          	ld	s4,152(sp)
    800022a0:	0a013a83          	ld	s5,160(sp)
    800022a4:	0a813b03          	ld	s6,168(sp)
    800022a8:	0b013b83          	ld	s7,176(sp)
    800022ac:	0b813c03          	ld	s8,184(sp)
    800022b0:	0c013c83          	ld	s9,192(sp)
    800022b4:	0c813d03          	ld	s10,200(sp)
    800022b8:	0d013d83          	ld	s11,208(sp)
    800022bc:	0d813e03          	ld	t3,216(sp)
    800022c0:	0e013e83          	ld	t4,224(sp)
    800022c4:	0e813f03          	ld	t5,232(sp)
    800022c8:	0f013f83          	ld	t6,240(sp)
    800022cc:	10010113          	addi	sp,sp,256
    800022d0:	10200073          	sret
    800022d4:	00000013          	nop
    800022d8:	00000013          	nop
    800022dc:	00000013          	nop

00000000800022e0 <timervec>:
    800022e0:	34051573          	csrrw	a0,mscratch,a0
    800022e4:	00b53023          	sd	a1,0(a0)
    800022e8:	00c53423          	sd	a2,8(a0)
    800022ec:	00d53823          	sd	a3,16(a0)
    800022f0:	01853583          	ld	a1,24(a0)
    800022f4:	02053603          	ld	a2,32(a0)
    800022f8:	0005b683          	ld	a3,0(a1)
    800022fc:	00c686b3          	add	a3,a3,a2
    80002300:	00d5b023          	sd	a3,0(a1)
    80002304:	00200593          	li	a1,2
    80002308:	14459073          	csrw	sip,a1
    8000230c:	01053683          	ld	a3,16(a0)
    80002310:	00853603          	ld	a2,8(a0)
    80002314:	00053583          	ld	a1,0(a0)
    80002318:	34051573          	csrrw	a0,mscratch,a0
    8000231c:	30200073          	mret

0000000080002320 <plicinit>:
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00813423          	sd	s0,8(sp)
    80002328:	01010413          	addi	s0,sp,16
    8000232c:	00813403          	ld	s0,8(sp)
    80002330:	0c0007b7          	lui	a5,0xc000
    80002334:	00100713          	li	a4,1
    80002338:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000233c:	00e7a223          	sw	a4,4(a5)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <plicinithart>:
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00813023          	sd	s0,0(sp)
    80002350:	00113423          	sd	ra,8(sp)
    80002354:	01010413          	addi	s0,sp,16
    80002358:	00000097          	auipc	ra,0x0
    8000235c:	a44080e7          	jalr	-1468(ra) # 80001d9c <cpuid>
    80002360:	0085171b          	slliw	a4,a0,0x8
    80002364:	0c0027b7          	lui	a5,0xc002
    80002368:	00e787b3          	add	a5,a5,a4
    8000236c:	40200713          	li	a4,1026
    80002370:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002374:	00813083          	ld	ra,8(sp)
    80002378:	00013403          	ld	s0,0(sp)
    8000237c:	00d5151b          	slliw	a0,a0,0xd
    80002380:	0c2017b7          	lui	a5,0xc201
    80002384:	00a78533          	add	a0,a5,a0
    80002388:	00052023          	sw	zero,0(a0)
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret

0000000080002394 <plic_claim>:
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00813023          	sd	s0,0(sp)
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	01010413          	addi	s0,sp,16
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	9f8080e7          	jalr	-1544(ra) # 80001d9c <cpuid>
    800023ac:	00813083          	ld	ra,8(sp)
    800023b0:	00013403          	ld	s0,0(sp)
    800023b4:	00d5151b          	slliw	a0,a0,0xd
    800023b8:	0c2017b7          	lui	a5,0xc201
    800023bc:	00a78533          	add	a0,a5,a0
    800023c0:	00452503          	lw	a0,4(a0)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <plic_complete>:
    800023cc:	fe010113          	addi	sp,sp,-32
    800023d0:	00813823          	sd	s0,16(sp)
    800023d4:	00913423          	sd	s1,8(sp)
    800023d8:	00113c23          	sd	ra,24(sp)
    800023dc:	02010413          	addi	s0,sp,32
    800023e0:	00050493          	mv	s1,a0
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	9b8080e7          	jalr	-1608(ra) # 80001d9c <cpuid>
    800023ec:	01813083          	ld	ra,24(sp)
    800023f0:	01013403          	ld	s0,16(sp)
    800023f4:	00d5179b          	slliw	a5,a0,0xd
    800023f8:	0c201737          	lui	a4,0xc201
    800023fc:	00f707b3          	add	a5,a4,a5
    80002400:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002404:	00813483          	ld	s1,8(sp)
    80002408:	02010113          	addi	sp,sp,32
    8000240c:	00008067          	ret

0000000080002410 <consolewrite>:
    80002410:	fb010113          	addi	sp,sp,-80
    80002414:	04813023          	sd	s0,64(sp)
    80002418:	04113423          	sd	ra,72(sp)
    8000241c:	02913c23          	sd	s1,56(sp)
    80002420:	03213823          	sd	s2,48(sp)
    80002424:	03313423          	sd	s3,40(sp)
    80002428:	03413023          	sd	s4,32(sp)
    8000242c:	01513c23          	sd	s5,24(sp)
    80002430:	05010413          	addi	s0,sp,80
    80002434:	06c05c63          	blez	a2,800024ac <consolewrite+0x9c>
    80002438:	00060993          	mv	s3,a2
    8000243c:	00050a13          	mv	s4,a0
    80002440:	00058493          	mv	s1,a1
    80002444:	00000913          	li	s2,0
    80002448:	fff00a93          	li	s5,-1
    8000244c:	01c0006f          	j	80002468 <consolewrite+0x58>
    80002450:	fbf44503          	lbu	a0,-65(s0)
    80002454:	0019091b          	addiw	s2,s2,1
    80002458:	00148493          	addi	s1,s1,1
    8000245c:	00001097          	auipc	ra,0x1
    80002460:	a9c080e7          	jalr	-1380(ra) # 80002ef8 <uartputc>
    80002464:	03298063          	beq	s3,s2,80002484 <consolewrite+0x74>
    80002468:	00048613          	mv	a2,s1
    8000246c:	00100693          	li	a3,1
    80002470:	000a0593          	mv	a1,s4
    80002474:	fbf40513          	addi	a0,s0,-65
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	9dc080e7          	jalr	-1572(ra) # 80001e54 <either_copyin>
    80002480:	fd5518e3          	bne	a0,s5,80002450 <consolewrite+0x40>
    80002484:	04813083          	ld	ra,72(sp)
    80002488:	04013403          	ld	s0,64(sp)
    8000248c:	03813483          	ld	s1,56(sp)
    80002490:	02813983          	ld	s3,40(sp)
    80002494:	02013a03          	ld	s4,32(sp)
    80002498:	01813a83          	ld	s5,24(sp)
    8000249c:	00090513          	mv	a0,s2
    800024a0:	03013903          	ld	s2,48(sp)
    800024a4:	05010113          	addi	sp,sp,80
    800024a8:	00008067          	ret
    800024ac:	00000913          	li	s2,0
    800024b0:	fd5ff06f          	j	80002484 <consolewrite+0x74>

00000000800024b4 <consoleread>:
    800024b4:	f9010113          	addi	sp,sp,-112
    800024b8:	06813023          	sd	s0,96(sp)
    800024bc:	04913c23          	sd	s1,88(sp)
    800024c0:	05213823          	sd	s2,80(sp)
    800024c4:	05313423          	sd	s3,72(sp)
    800024c8:	05413023          	sd	s4,64(sp)
    800024cc:	03513c23          	sd	s5,56(sp)
    800024d0:	03613823          	sd	s6,48(sp)
    800024d4:	03713423          	sd	s7,40(sp)
    800024d8:	03813023          	sd	s8,32(sp)
    800024dc:	06113423          	sd	ra,104(sp)
    800024e0:	01913c23          	sd	s9,24(sp)
    800024e4:	07010413          	addi	s0,sp,112
    800024e8:	00060b93          	mv	s7,a2
    800024ec:	00050913          	mv	s2,a0
    800024f0:	00058c13          	mv	s8,a1
    800024f4:	00060b1b          	sext.w	s6,a2
    800024f8:	00003497          	auipc	s1,0x3
    800024fc:	30048493          	addi	s1,s1,768 # 800057f8 <cons>
    80002500:	00400993          	li	s3,4
    80002504:	fff00a13          	li	s4,-1
    80002508:	00a00a93          	li	s5,10
    8000250c:	05705e63          	blez	s7,80002568 <consoleread+0xb4>
    80002510:	09c4a703          	lw	a4,156(s1)
    80002514:	0984a783          	lw	a5,152(s1)
    80002518:	0007071b          	sext.w	a4,a4
    8000251c:	08e78463          	beq	a5,a4,800025a4 <consoleread+0xf0>
    80002520:	07f7f713          	andi	a4,a5,127
    80002524:	00e48733          	add	a4,s1,a4
    80002528:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000252c:	0017869b          	addiw	a3,a5,1
    80002530:	08d4ac23          	sw	a3,152(s1)
    80002534:	00070c9b          	sext.w	s9,a4
    80002538:	0b370663          	beq	a4,s3,800025e4 <consoleread+0x130>
    8000253c:	00100693          	li	a3,1
    80002540:	f9f40613          	addi	a2,s0,-97
    80002544:	000c0593          	mv	a1,s8
    80002548:	00090513          	mv	a0,s2
    8000254c:	f8e40fa3          	sb	a4,-97(s0)
    80002550:	00000097          	auipc	ra,0x0
    80002554:	8b8080e7          	jalr	-1864(ra) # 80001e08 <either_copyout>
    80002558:	01450863          	beq	a0,s4,80002568 <consoleread+0xb4>
    8000255c:	001c0c13          	addi	s8,s8,1
    80002560:	fffb8b9b          	addiw	s7,s7,-1
    80002564:	fb5c94e3          	bne	s9,s5,8000250c <consoleread+0x58>
    80002568:	000b851b          	sext.w	a0,s7
    8000256c:	06813083          	ld	ra,104(sp)
    80002570:	06013403          	ld	s0,96(sp)
    80002574:	05813483          	ld	s1,88(sp)
    80002578:	05013903          	ld	s2,80(sp)
    8000257c:	04813983          	ld	s3,72(sp)
    80002580:	04013a03          	ld	s4,64(sp)
    80002584:	03813a83          	ld	s5,56(sp)
    80002588:	02813b83          	ld	s7,40(sp)
    8000258c:	02013c03          	ld	s8,32(sp)
    80002590:	01813c83          	ld	s9,24(sp)
    80002594:	40ab053b          	subw	a0,s6,a0
    80002598:	03013b03          	ld	s6,48(sp)
    8000259c:	07010113          	addi	sp,sp,112
    800025a0:	00008067          	ret
    800025a4:	00001097          	auipc	ra,0x1
    800025a8:	1d8080e7          	jalr	472(ra) # 8000377c <push_on>
    800025ac:	0984a703          	lw	a4,152(s1)
    800025b0:	09c4a783          	lw	a5,156(s1)
    800025b4:	0007879b          	sext.w	a5,a5
    800025b8:	fef70ce3          	beq	a4,a5,800025b0 <consoleread+0xfc>
    800025bc:	00001097          	auipc	ra,0x1
    800025c0:	234080e7          	jalr	564(ra) # 800037f0 <pop_on>
    800025c4:	0984a783          	lw	a5,152(s1)
    800025c8:	07f7f713          	andi	a4,a5,127
    800025cc:	00e48733          	add	a4,s1,a4
    800025d0:	01874703          	lbu	a4,24(a4)
    800025d4:	0017869b          	addiw	a3,a5,1
    800025d8:	08d4ac23          	sw	a3,152(s1)
    800025dc:	00070c9b          	sext.w	s9,a4
    800025e0:	f5371ee3          	bne	a4,s3,8000253c <consoleread+0x88>
    800025e4:	000b851b          	sext.w	a0,s7
    800025e8:	f96bf2e3          	bgeu	s7,s6,8000256c <consoleread+0xb8>
    800025ec:	08f4ac23          	sw	a5,152(s1)
    800025f0:	f7dff06f          	j	8000256c <consoleread+0xb8>

00000000800025f4 <consputc>:
    800025f4:	10000793          	li	a5,256
    800025f8:	00f50663          	beq	a0,a5,80002604 <consputc+0x10>
    800025fc:	00001317          	auipc	t1,0x1
    80002600:	9f430067          	jr	-1548(t1) # 80002ff0 <uartputc_sync>
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00113423          	sd	ra,8(sp)
    8000260c:	00813023          	sd	s0,0(sp)
    80002610:	01010413          	addi	s0,sp,16
    80002614:	00800513          	li	a0,8
    80002618:	00001097          	auipc	ra,0x1
    8000261c:	9d8080e7          	jalr	-1576(ra) # 80002ff0 <uartputc_sync>
    80002620:	02000513          	li	a0,32
    80002624:	00001097          	auipc	ra,0x1
    80002628:	9cc080e7          	jalr	-1588(ra) # 80002ff0 <uartputc_sync>
    8000262c:	00013403          	ld	s0,0(sp)
    80002630:	00813083          	ld	ra,8(sp)
    80002634:	00800513          	li	a0,8
    80002638:	01010113          	addi	sp,sp,16
    8000263c:	00001317          	auipc	t1,0x1
    80002640:	9b430067          	jr	-1612(t1) # 80002ff0 <uartputc_sync>

0000000080002644 <consoleintr>:
    80002644:	fe010113          	addi	sp,sp,-32
    80002648:	00813823          	sd	s0,16(sp)
    8000264c:	00913423          	sd	s1,8(sp)
    80002650:	01213023          	sd	s2,0(sp)
    80002654:	00113c23          	sd	ra,24(sp)
    80002658:	02010413          	addi	s0,sp,32
    8000265c:	00003917          	auipc	s2,0x3
    80002660:	19c90913          	addi	s2,s2,412 # 800057f8 <cons>
    80002664:	00050493          	mv	s1,a0
    80002668:	00090513          	mv	a0,s2
    8000266c:	00001097          	auipc	ra,0x1
    80002670:	e40080e7          	jalr	-448(ra) # 800034ac <acquire>
    80002674:	02048c63          	beqz	s1,800026ac <consoleintr+0x68>
    80002678:	0a092783          	lw	a5,160(s2)
    8000267c:	09892703          	lw	a4,152(s2)
    80002680:	07f00693          	li	a3,127
    80002684:	40e7873b          	subw	a4,a5,a4
    80002688:	02e6e263          	bltu	a3,a4,800026ac <consoleintr+0x68>
    8000268c:	00d00713          	li	a4,13
    80002690:	04e48063          	beq	s1,a4,800026d0 <consoleintr+0x8c>
    80002694:	07f7f713          	andi	a4,a5,127
    80002698:	00e90733          	add	a4,s2,a4
    8000269c:	0017879b          	addiw	a5,a5,1
    800026a0:	0af92023          	sw	a5,160(s2)
    800026a4:	00970c23          	sb	s1,24(a4)
    800026a8:	08f92e23          	sw	a5,156(s2)
    800026ac:	01013403          	ld	s0,16(sp)
    800026b0:	01813083          	ld	ra,24(sp)
    800026b4:	00813483          	ld	s1,8(sp)
    800026b8:	00013903          	ld	s2,0(sp)
    800026bc:	00003517          	auipc	a0,0x3
    800026c0:	13c50513          	addi	a0,a0,316 # 800057f8 <cons>
    800026c4:	02010113          	addi	sp,sp,32
    800026c8:	00001317          	auipc	t1,0x1
    800026cc:	eb030067          	jr	-336(t1) # 80003578 <release>
    800026d0:	00a00493          	li	s1,10
    800026d4:	fc1ff06f          	j	80002694 <consoleintr+0x50>

00000000800026d8 <consoleinit>:
    800026d8:	fe010113          	addi	sp,sp,-32
    800026dc:	00113c23          	sd	ra,24(sp)
    800026e0:	00813823          	sd	s0,16(sp)
    800026e4:	00913423          	sd	s1,8(sp)
    800026e8:	02010413          	addi	s0,sp,32
    800026ec:	00003497          	auipc	s1,0x3
    800026f0:	10c48493          	addi	s1,s1,268 # 800057f8 <cons>
    800026f4:	00048513          	mv	a0,s1
    800026f8:	00002597          	auipc	a1,0x2
    800026fc:	ad858593          	addi	a1,a1,-1320 # 800041d0 <_ZZ12printIntegermE6digits+0x138>
    80002700:	00001097          	auipc	ra,0x1
    80002704:	d88080e7          	jalr	-632(ra) # 80003488 <initlock>
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	7ac080e7          	jalr	1964(ra) # 80002eb4 <uartinit>
    80002710:	01813083          	ld	ra,24(sp)
    80002714:	01013403          	ld	s0,16(sp)
    80002718:	00000797          	auipc	a5,0x0
    8000271c:	d9c78793          	addi	a5,a5,-612 # 800024b4 <consoleread>
    80002720:	0af4bc23          	sd	a5,184(s1)
    80002724:	00000797          	auipc	a5,0x0
    80002728:	cec78793          	addi	a5,a5,-788 # 80002410 <consolewrite>
    8000272c:	0cf4b023          	sd	a5,192(s1)
    80002730:	00813483          	ld	s1,8(sp)
    80002734:	02010113          	addi	sp,sp,32
    80002738:	00008067          	ret

000000008000273c <console_read>:
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00813423          	sd	s0,8(sp)
    80002744:	01010413          	addi	s0,sp,16
    80002748:	00813403          	ld	s0,8(sp)
    8000274c:	00003317          	auipc	t1,0x3
    80002750:	16433303          	ld	t1,356(t1) # 800058b0 <devsw+0x10>
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00030067          	jr	t1

000000008000275c <console_write>:
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00813423          	sd	s0,8(sp)
    80002764:	01010413          	addi	s0,sp,16
    80002768:	00813403          	ld	s0,8(sp)
    8000276c:	00003317          	auipc	t1,0x3
    80002770:	14c33303          	ld	t1,332(t1) # 800058b8 <devsw+0x18>
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00030067          	jr	t1

000000008000277c <panic>:
    8000277c:	fe010113          	addi	sp,sp,-32
    80002780:	00113c23          	sd	ra,24(sp)
    80002784:	00813823          	sd	s0,16(sp)
    80002788:	00913423          	sd	s1,8(sp)
    8000278c:	02010413          	addi	s0,sp,32
    80002790:	00050493          	mv	s1,a0
    80002794:	00002517          	auipc	a0,0x2
    80002798:	a4450513          	addi	a0,a0,-1468 # 800041d8 <_ZZ12printIntegermE6digits+0x140>
    8000279c:	00003797          	auipc	a5,0x3
    800027a0:	1a07ae23          	sw	zero,444(a5) # 80005958 <pr+0x18>
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	034080e7          	jalr	52(ra) # 800027d8 <__printf>
    800027ac:	00048513          	mv	a0,s1
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	028080e7          	jalr	40(ra) # 800027d8 <__printf>
    800027b8:	00002517          	auipc	a0,0x2
    800027bc:	8d850513          	addi	a0,a0,-1832 # 80004090 <CONSOLE_STATUS+0x80>
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	018080e7          	jalr	24(ra) # 800027d8 <__printf>
    800027c8:	00100793          	li	a5,1
    800027cc:	00002717          	auipc	a4,0x2
    800027d0:	f0f72223          	sw	a5,-252(a4) # 800046d0 <panicked>
    800027d4:	0000006f          	j	800027d4 <panic+0x58>

00000000800027d8 <__printf>:
    800027d8:	f3010113          	addi	sp,sp,-208
    800027dc:	08813023          	sd	s0,128(sp)
    800027e0:	07313423          	sd	s3,104(sp)
    800027e4:	09010413          	addi	s0,sp,144
    800027e8:	05813023          	sd	s8,64(sp)
    800027ec:	08113423          	sd	ra,136(sp)
    800027f0:	06913c23          	sd	s1,120(sp)
    800027f4:	07213823          	sd	s2,112(sp)
    800027f8:	07413023          	sd	s4,96(sp)
    800027fc:	05513c23          	sd	s5,88(sp)
    80002800:	05613823          	sd	s6,80(sp)
    80002804:	05713423          	sd	s7,72(sp)
    80002808:	03913c23          	sd	s9,56(sp)
    8000280c:	03a13823          	sd	s10,48(sp)
    80002810:	03b13423          	sd	s11,40(sp)
    80002814:	00003317          	auipc	t1,0x3
    80002818:	12c30313          	addi	t1,t1,300 # 80005940 <pr>
    8000281c:	01832c03          	lw	s8,24(t1)
    80002820:	00b43423          	sd	a1,8(s0)
    80002824:	00c43823          	sd	a2,16(s0)
    80002828:	00d43c23          	sd	a3,24(s0)
    8000282c:	02e43023          	sd	a4,32(s0)
    80002830:	02f43423          	sd	a5,40(s0)
    80002834:	03043823          	sd	a6,48(s0)
    80002838:	03143c23          	sd	a7,56(s0)
    8000283c:	00050993          	mv	s3,a0
    80002840:	4a0c1663          	bnez	s8,80002cec <__printf+0x514>
    80002844:	60098c63          	beqz	s3,80002e5c <__printf+0x684>
    80002848:	0009c503          	lbu	a0,0(s3)
    8000284c:	00840793          	addi	a5,s0,8
    80002850:	f6f43c23          	sd	a5,-136(s0)
    80002854:	00000493          	li	s1,0
    80002858:	22050063          	beqz	a0,80002a78 <__printf+0x2a0>
    8000285c:	00002a37          	lui	s4,0x2
    80002860:	00018ab7          	lui	s5,0x18
    80002864:	000f4b37          	lui	s6,0xf4
    80002868:	00989bb7          	lui	s7,0x989
    8000286c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002870:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002874:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002878:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000287c:	00148c9b          	addiw	s9,s1,1
    80002880:	02500793          	li	a5,37
    80002884:	01998933          	add	s2,s3,s9
    80002888:	38f51263          	bne	a0,a5,80002c0c <__printf+0x434>
    8000288c:	00094783          	lbu	a5,0(s2)
    80002890:	00078c9b          	sext.w	s9,a5
    80002894:	1e078263          	beqz	a5,80002a78 <__printf+0x2a0>
    80002898:	0024849b          	addiw	s1,s1,2
    8000289c:	07000713          	li	a4,112
    800028a0:	00998933          	add	s2,s3,s1
    800028a4:	38e78a63          	beq	a5,a4,80002c38 <__printf+0x460>
    800028a8:	20f76863          	bltu	a4,a5,80002ab8 <__printf+0x2e0>
    800028ac:	42a78863          	beq	a5,a0,80002cdc <__printf+0x504>
    800028b0:	06400713          	li	a4,100
    800028b4:	40e79663          	bne	a5,a4,80002cc0 <__printf+0x4e8>
    800028b8:	f7843783          	ld	a5,-136(s0)
    800028bc:	0007a603          	lw	a2,0(a5)
    800028c0:	00878793          	addi	a5,a5,8
    800028c4:	f6f43c23          	sd	a5,-136(s0)
    800028c8:	42064a63          	bltz	a2,80002cfc <__printf+0x524>
    800028cc:	00a00713          	li	a4,10
    800028d0:	02e677bb          	remuw	a5,a2,a4
    800028d4:	00002d97          	auipc	s11,0x2
    800028d8:	92cd8d93          	addi	s11,s11,-1748 # 80004200 <digits>
    800028dc:	00900593          	li	a1,9
    800028e0:	0006051b          	sext.w	a0,a2
    800028e4:	00000c93          	li	s9,0
    800028e8:	02079793          	slli	a5,a5,0x20
    800028ec:	0207d793          	srli	a5,a5,0x20
    800028f0:	00fd87b3          	add	a5,s11,a5
    800028f4:	0007c783          	lbu	a5,0(a5)
    800028f8:	02e656bb          	divuw	a3,a2,a4
    800028fc:	f8f40023          	sb	a5,-128(s0)
    80002900:	14c5d863          	bge	a1,a2,80002a50 <__printf+0x278>
    80002904:	06300593          	li	a1,99
    80002908:	00100c93          	li	s9,1
    8000290c:	02e6f7bb          	remuw	a5,a3,a4
    80002910:	02079793          	slli	a5,a5,0x20
    80002914:	0207d793          	srli	a5,a5,0x20
    80002918:	00fd87b3          	add	a5,s11,a5
    8000291c:	0007c783          	lbu	a5,0(a5)
    80002920:	02e6d73b          	divuw	a4,a3,a4
    80002924:	f8f400a3          	sb	a5,-127(s0)
    80002928:	12a5f463          	bgeu	a1,a0,80002a50 <__printf+0x278>
    8000292c:	00a00693          	li	a3,10
    80002930:	00900593          	li	a1,9
    80002934:	02d777bb          	remuw	a5,a4,a3
    80002938:	02079793          	slli	a5,a5,0x20
    8000293c:	0207d793          	srli	a5,a5,0x20
    80002940:	00fd87b3          	add	a5,s11,a5
    80002944:	0007c503          	lbu	a0,0(a5)
    80002948:	02d757bb          	divuw	a5,a4,a3
    8000294c:	f8a40123          	sb	a0,-126(s0)
    80002950:	48e5f263          	bgeu	a1,a4,80002dd4 <__printf+0x5fc>
    80002954:	06300513          	li	a0,99
    80002958:	02d7f5bb          	remuw	a1,a5,a3
    8000295c:	02059593          	slli	a1,a1,0x20
    80002960:	0205d593          	srli	a1,a1,0x20
    80002964:	00bd85b3          	add	a1,s11,a1
    80002968:	0005c583          	lbu	a1,0(a1)
    8000296c:	02d7d7bb          	divuw	a5,a5,a3
    80002970:	f8b401a3          	sb	a1,-125(s0)
    80002974:	48e57263          	bgeu	a0,a4,80002df8 <__printf+0x620>
    80002978:	3e700513          	li	a0,999
    8000297c:	02d7f5bb          	remuw	a1,a5,a3
    80002980:	02059593          	slli	a1,a1,0x20
    80002984:	0205d593          	srli	a1,a1,0x20
    80002988:	00bd85b3          	add	a1,s11,a1
    8000298c:	0005c583          	lbu	a1,0(a1)
    80002990:	02d7d7bb          	divuw	a5,a5,a3
    80002994:	f8b40223          	sb	a1,-124(s0)
    80002998:	46e57663          	bgeu	a0,a4,80002e04 <__printf+0x62c>
    8000299c:	02d7f5bb          	remuw	a1,a5,a3
    800029a0:	02059593          	slli	a1,a1,0x20
    800029a4:	0205d593          	srli	a1,a1,0x20
    800029a8:	00bd85b3          	add	a1,s11,a1
    800029ac:	0005c583          	lbu	a1,0(a1)
    800029b0:	02d7d7bb          	divuw	a5,a5,a3
    800029b4:	f8b402a3          	sb	a1,-123(s0)
    800029b8:	46ea7863          	bgeu	s4,a4,80002e28 <__printf+0x650>
    800029bc:	02d7f5bb          	remuw	a1,a5,a3
    800029c0:	02059593          	slli	a1,a1,0x20
    800029c4:	0205d593          	srli	a1,a1,0x20
    800029c8:	00bd85b3          	add	a1,s11,a1
    800029cc:	0005c583          	lbu	a1,0(a1)
    800029d0:	02d7d7bb          	divuw	a5,a5,a3
    800029d4:	f8b40323          	sb	a1,-122(s0)
    800029d8:	3eeaf863          	bgeu	s5,a4,80002dc8 <__printf+0x5f0>
    800029dc:	02d7f5bb          	remuw	a1,a5,a3
    800029e0:	02059593          	slli	a1,a1,0x20
    800029e4:	0205d593          	srli	a1,a1,0x20
    800029e8:	00bd85b3          	add	a1,s11,a1
    800029ec:	0005c583          	lbu	a1,0(a1)
    800029f0:	02d7d7bb          	divuw	a5,a5,a3
    800029f4:	f8b403a3          	sb	a1,-121(s0)
    800029f8:	42eb7e63          	bgeu	s6,a4,80002e34 <__printf+0x65c>
    800029fc:	02d7f5bb          	remuw	a1,a5,a3
    80002a00:	02059593          	slli	a1,a1,0x20
    80002a04:	0205d593          	srli	a1,a1,0x20
    80002a08:	00bd85b3          	add	a1,s11,a1
    80002a0c:	0005c583          	lbu	a1,0(a1)
    80002a10:	02d7d7bb          	divuw	a5,a5,a3
    80002a14:	f8b40423          	sb	a1,-120(s0)
    80002a18:	42ebfc63          	bgeu	s7,a4,80002e50 <__printf+0x678>
    80002a1c:	02079793          	slli	a5,a5,0x20
    80002a20:	0207d793          	srli	a5,a5,0x20
    80002a24:	00fd8db3          	add	s11,s11,a5
    80002a28:	000dc703          	lbu	a4,0(s11)
    80002a2c:	00a00793          	li	a5,10
    80002a30:	00900c93          	li	s9,9
    80002a34:	f8e404a3          	sb	a4,-119(s0)
    80002a38:	00065c63          	bgez	a2,80002a50 <__printf+0x278>
    80002a3c:	f9040713          	addi	a4,s0,-112
    80002a40:	00f70733          	add	a4,a4,a5
    80002a44:	02d00693          	li	a3,45
    80002a48:	fed70823          	sb	a3,-16(a4)
    80002a4c:	00078c93          	mv	s9,a5
    80002a50:	f8040793          	addi	a5,s0,-128
    80002a54:	01978cb3          	add	s9,a5,s9
    80002a58:	f7f40d13          	addi	s10,s0,-129
    80002a5c:	000cc503          	lbu	a0,0(s9)
    80002a60:	fffc8c93          	addi	s9,s9,-1
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	b90080e7          	jalr	-1136(ra) # 800025f4 <consputc>
    80002a6c:	ffac98e3          	bne	s9,s10,80002a5c <__printf+0x284>
    80002a70:	00094503          	lbu	a0,0(s2)
    80002a74:	e00514e3          	bnez	a0,8000287c <__printf+0xa4>
    80002a78:	1a0c1663          	bnez	s8,80002c24 <__printf+0x44c>
    80002a7c:	08813083          	ld	ra,136(sp)
    80002a80:	08013403          	ld	s0,128(sp)
    80002a84:	07813483          	ld	s1,120(sp)
    80002a88:	07013903          	ld	s2,112(sp)
    80002a8c:	06813983          	ld	s3,104(sp)
    80002a90:	06013a03          	ld	s4,96(sp)
    80002a94:	05813a83          	ld	s5,88(sp)
    80002a98:	05013b03          	ld	s6,80(sp)
    80002a9c:	04813b83          	ld	s7,72(sp)
    80002aa0:	04013c03          	ld	s8,64(sp)
    80002aa4:	03813c83          	ld	s9,56(sp)
    80002aa8:	03013d03          	ld	s10,48(sp)
    80002aac:	02813d83          	ld	s11,40(sp)
    80002ab0:	0d010113          	addi	sp,sp,208
    80002ab4:	00008067          	ret
    80002ab8:	07300713          	li	a4,115
    80002abc:	1ce78a63          	beq	a5,a4,80002c90 <__printf+0x4b8>
    80002ac0:	07800713          	li	a4,120
    80002ac4:	1ee79e63          	bne	a5,a4,80002cc0 <__printf+0x4e8>
    80002ac8:	f7843783          	ld	a5,-136(s0)
    80002acc:	0007a703          	lw	a4,0(a5)
    80002ad0:	00878793          	addi	a5,a5,8
    80002ad4:	f6f43c23          	sd	a5,-136(s0)
    80002ad8:	28074263          	bltz	a4,80002d5c <__printf+0x584>
    80002adc:	00001d97          	auipc	s11,0x1
    80002ae0:	724d8d93          	addi	s11,s11,1828 # 80004200 <digits>
    80002ae4:	00f77793          	andi	a5,a4,15
    80002ae8:	00fd87b3          	add	a5,s11,a5
    80002aec:	0007c683          	lbu	a3,0(a5)
    80002af0:	00f00613          	li	a2,15
    80002af4:	0007079b          	sext.w	a5,a4
    80002af8:	f8d40023          	sb	a3,-128(s0)
    80002afc:	0047559b          	srliw	a1,a4,0x4
    80002b00:	0047569b          	srliw	a3,a4,0x4
    80002b04:	00000c93          	li	s9,0
    80002b08:	0ee65063          	bge	a2,a4,80002be8 <__printf+0x410>
    80002b0c:	00f6f693          	andi	a3,a3,15
    80002b10:	00dd86b3          	add	a3,s11,a3
    80002b14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002b18:	0087d79b          	srliw	a5,a5,0x8
    80002b1c:	00100c93          	li	s9,1
    80002b20:	f8d400a3          	sb	a3,-127(s0)
    80002b24:	0cb67263          	bgeu	a2,a1,80002be8 <__printf+0x410>
    80002b28:	00f7f693          	andi	a3,a5,15
    80002b2c:	00dd86b3          	add	a3,s11,a3
    80002b30:	0006c583          	lbu	a1,0(a3)
    80002b34:	00f00613          	li	a2,15
    80002b38:	0047d69b          	srliw	a3,a5,0x4
    80002b3c:	f8b40123          	sb	a1,-126(s0)
    80002b40:	0047d593          	srli	a1,a5,0x4
    80002b44:	28f67e63          	bgeu	a2,a5,80002de0 <__printf+0x608>
    80002b48:	00f6f693          	andi	a3,a3,15
    80002b4c:	00dd86b3          	add	a3,s11,a3
    80002b50:	0006c503          	lbu	a0,0(a3)
    80002b54:	0087d813          	srli	a6,a5,0x8
    80002b58:	0087d69b          	srliw	a3,a5,0x8
    80002b5c:	f8a401a3          	sb	a0,-125(s0)
    80002b60:	28b67663          	bgeu	a2,a1,80002dec <__printf+0x614>
    80002b64:	00f6f693          	andi	a3,a3,15
    80002b68:	00dd86b3          	add	a3,s11,a3
    80002b6c:	0006c583          	lbu	a1,0(a3)
    80002b70:	00c7d513          	srli	a0,a5,0xc
    80002b74:	00c7d69b          	srliw	a3,a5,0xc
    80002b78:	f8b40223          	sb	a1,-124(s0)
    80002b7c:	29067a63          	bgeu	a2,a6,80002e10 <__printf+0x638>
    80002b80:	00f6f693          	andi	a3,a3,15
    80002b84:	00dd86b3          	add	a3,s11,a3
    80002b88:	0006c583          	lbu	a1,0(a3)
    80002b8c:	0107d813          	srli	a6,a5,0x10
    80002b90:	0107d69b          	srliw	a3,a5,0x10
    80002b94:	f8b402a3          	sb	a1,-123(s0)
    80002b98:	28a67263          	bgeu	a2,a0,80002e1c <__printf+0x644>
    80002b9c:	00f6f693          	andi	a3,a3,15
    80002ba0:	00dd86b3          	add	a3,s11,a3
    80002ba4:	0006c683          	lbu	a3,0(a3)
    80002ba8:	0147d79b          	srliw	a5,a5,0x14
    80002bac:	f8d40323          	sb	a3,-122(s0)
    80002bb0:	21067663          	bgeu	a2,a6,80002dbc <__printf+0x5e4>
    80002bb4:	02079793          	slli	a5,a5,0x20
    80002bb8:	0207d793          	srli	a5,a5,0x20
    80002bbc:	00fd8db3          	add	s11,s11,a5
    80002bc0:	000dc683          	lbu	a3,0(s11)
    80002bc4:	00800793          	li	a5,8
    80002bc8:	00700c93          	li	s9,7
    80002bcc:	f8d403a3          	sb	a3,-121(s0)
    80002bd0:	00075c63          	bgez	a4,80002be8 <__printf+0x410>
    80002bd4:	f9040713          	addi	a4,s0,-112
    80002bd8:	00f70733          	add	a4,a4,a5
    80002bdc:	02d00693          	li	a3,45
    80002be0:	fed70823          	sb	a3,-16(a4)
    80002be4:	00078c93          	mv	s9,a5
    80002be8:	f8040793          	addi	a5,s0,-128
    80002bec:	01978cb3          	add	s9,a5,s9
    80002bf0:	f7f40d13          	addi	s10,s0,-129
    80002bf4:	000cc503          	lbu	a0,0(s9)
    80002bf8:	fffc8c93          	addi	s9,s9,-1
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	9f8080e7          	jalr	-1544(ra) # 800025f4 <consputc>
    80002c04:	ff9d18e3          	bne	s10,s9,80002bf4 <__printf+0x41c>
    80002c08:	0100006f          	j	80002c18 <__printf+0x440>
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	9e8080e7          	jalr	-1560(ra) # 800025f4 <consputc>
    80002c14:	000c8493          	mv	s1,s9
    80002c18:	00094503          	lbu	a0,0(s2)
    80002c1c:	c60510e3          	bnez	a0,8000287c <__printf+0xa4>
    80002c20:	e40c0ee3          	beqz	s8,80002a7c <__printf+0x2a4>
    80002c24:	00003517          	auipc	a0,0x3
    80002c28:	d1c50513          	addi	a0,a0,-740 # 80005940 <pr>
    80002c2c:	00001097          	auipc	ra,0x1
    80002c30:	94c080e7          	jalr	-1716(ra) # 80003578 <release>
    80002c34:	e49ff06f          	j	80002a7c <__printf+0x2a4>
    80002c38:	f7843783          	ld	a5,-136(s0)
    80002c3c:	03000513          	li	a0,48
    80002c40:	01000d13          	li	s10,16
    80002c44:	00878713          	addi	a4,a5,8
    80002c48:	0007bc83          	ld	s9,0(a5)
    80002c4c:	f6e43c23          	sd	a4,-136(s0)
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	9a4080e7          	jalr	-1628(ra) # 800025f4 <consputc>
    80002c58:	07800513          	li	a0,120
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	998080e7          	jalr	-1640(ra) # 800025f4 <consputc>
    80002c64:	00001d97          	auipc	s11,0x1
    80002c68:	59cd8d93          	addi	s11,s11,1436 # 80004200 <digits>
    80002c6c:	03ccd793          	srli	a5,s9,0x3c
    80002c70:	00fd87b3          	add	a5,s11,a5
    80002c74:	0007c503          	lbu	a0,0(a5)
    80002c78:	fffd0d1b          	addiw	s10,s10,-1
    80002c7c:	004c9c93          	slli	s9,s9,0x4
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	974080e7          	jalr	-1676(ra) # 800025f4 <consputc>
    80002c88:	fe0d12e3          	bnez	s10,80002c6c <__printf+0x494>
    80002c8c:	f8dff06f          	j	80002c18 <__printf+0x440>
    80002c90:	f7843783          	ld	a5,-136(s0)
    80002c94:	0007bc83          	ld	s9,0(a5)
    80002c98:	00878793          	addi	a5,a5,8
    80002c9c:	f6f43c23          	sd	a5,-136(s0)
    80002ca0:	000c9a63          	bnez	s9,80002cb4 <__printf+0x4dc>
    80002ca4:	1080006f          	j	80002dac <__printf+0x5d4>
    80002ca8:	001c8c93          	addi	s9,s9,1
    80002cac:	00000097          	auipc	ra,0x0
    80002cb0:	948080e7          	jalr	-1720(ra) # 800025f4 <consputc>
    80002cb4:	000cc503          	lbu	a0,0(s9)
    80002cb8:	fe0518e3          	bnez	a0,80002ca8 <__printf+0x4d0>
    80002cbc:	f5dff06f          	j	80002c18 <__printf+0x440>
    80002cc0:	02500513          	li	a0,37
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	930080e7          	jalr	-1744(ra) # 800025f4 <consputc>
    80002ccc:	000c8513          	mv	a0,s9
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	924080e7          	jalr	-1756(ra) # 800025f4 <consputc>
    80002cd8:	f41ff06f          	j	80002c18 <__printf+0x440>
    80002cdc:	02500513          	li	a0,37
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	914080e7          	jalr	-1772(ra) # 800025f4 <consputc>
    80002ce8:	f31ff06f          	j	80002c18 <__printf+0x440>
    80002cec:	00030513          	mv	a0,t1
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	7bc080e7          	jalr	1980(ra) # 800034ac <acquire>
    80002cf8:	b4dff06f          	j	80002844 <__printf+0x6c>
    80002cfc:	40c0053b          	negw	a0,a2
    80002d00:	00a00713          	li	a4,10
    80002d04:	02e576bb          	remuw	a3,a0,a4
    80002d08:	00001d97          	auipc	s11,0x1
    80002d0c:	4f8d8d93          	addi	s11,s11,1272 # 80004200 <digits>
    80002d10:	ff700593          	li	a1,-9
    80002d14:	02069693          	slli	a3,a3,0x20
    80002d18:	0206d693          	srli	a3,a3,0x20
    80002d1c:	00dd86b3          	add	a3,s11,a3
    80002d20:	0006c683          	lbu	a3,0(a3)
    80002d24:	02e557bb          	divuw	a5,a0,a4
    80002d28:	f8d40023          	sb	a3,-128(s0)
    80002d2c:	10b65e63          	bge	a2,a1,80002e48 <__printf+0x670>
    80002d30:	06300593          	li	a1,99
    80002d34:	02e7f6bb          	remuw	a3,a5,a4
    80002d38:	02069693          	slli	a3,a3,0x20
    80002d3c:	0206d693          	srli	a3,a3,0x20
    80002d40:	00dd86b3          	add	a3,s11,a3
    80002d44:	0006c683          	lbu	a3,0(a3)
    80002d48:	02e7d73b          	divuw	a4,a5,a4
    80002d4c:	00200793          	li	a5,2
    80002d50:	f8d400a3          	sb	a3,-127(s0)
    80002d54:	bca5ece3          	bltu	a1,a0,8000292c <__printf+0x154>
    80002d58:	ce5ff06f          	j	80002a3c <__printf+0x264>
    80002d5c:	40e007bb          	negw	a5,a4
    80002d60:	00001d97          	auipc	s11,0x1
    80002d64:	4a0d8d93          	addi	s11,s11,1184 # 80004200 <digits>
    80002d68:	00f7f693          	andi	a3,a5,15
    80002d6c:	00dd86b3          	add	a3,s11,a3
    80002d70:	0006c583          	lbu	a1,0(a3)
    80002d74:	ff100613          	li	a2,-15
    80002d78:	0047d69b          	srliw	a3,a5,0x4
    80002d7c:	f8b40023          	sb	a1,-128(s0)
    80002d80:	0047d59b          	srliw	a1,a5,0x4
    80002d84:	0ac75e63          	bge	a4,a2,80002e40 <__printf+0x668>
    80002d88:	00f6f693          	andi	a3,a3,15
    80002d8c:	00dd86b3          	add	a3,s11,a3
    80002d90:	0006c603          	lbu	a2,0(a3)
    80002d94:	00f00693          	li	a3,15
    80002d98:	0087d79b          	srliw	a5,a5,0x8
    80002d9c:	f8c400a3          	sb	a2,-127(s0)
    80002da0:	d8b6e4e3          	bltu	a3,a1,80002b28 <__printf+0x350>
    80002da4:	00200793          	li	a5,2
    80002da8:	e2dff06f          	j	80002bd4 <__printf+0x3fc>
    80002dac:	00001c97          	auipc	s9,0x1
    80002db0:	434c8c93          	addi	s9,s9,1076 # 800041e0 <_ZZ12printIntegermE6digits+0x148>
    80002db4:	02800513          	li	a0,40
    80002db8:	ef1ff06f          	j	80002ca8 <__printf+0x4d0>
    80002dbc:	00700793          	li	a5,7
    80002dc0:	00600c93          	li	s9,6
    80002dc4:	e0dff06f          	j	80002bd0 <__printf+0x3f8>
    80002dc8:	00700793          	li	a5,7
    80002dcc:	00600c93          	li	s9,6
    80002dd0:	c69ff06f          	j	80002a38 <__printf+0x260>
    80002dd4:	00300793          	li	a5,3
    80002dd8:	00200c93          	li	s9,2
    80002ddc:	c5dff06f          	j	80002a38 <__printf+0x260>
    80002de0:	00300793          	li	a5,3
    80002de4:	00200c93          	li	s9,2
    80002de8:	de9ff06f          	j	80002bd0 <__printf+0x3f8>
    80002dec:	00400793          	li	a5,4
    80002df0:	00300c93          	li	s9,3
    80002df4:	dddff06f          	j	80002bd0 <__printf+0x3f8>
    80002df8:	00400793          	li	a5,4
    80002dfc:	00300c93          	li	s9,3
    80002e00:	c39ff06f          	j	80002a38 <__printf+0x260>
    80002e04:	00500793          	li	a5,5
    80002e08:	00400c93          	li	s9,4
    80002e0c:	c2dff06f          	j	80002a38 <__printf+0x260>
    80002e10:	00500793          	li	a5,5
    80002e14:	00400c93          	li	s9,4
    80002e18:	db9ff06f          	j	80002bd0 <__printf+0x3f8>
    80002e1c:	00600793          	li	a5,6
    80002e20:	00500c93          	li	s9,5
    80002e24:	dadff06f          	j	80002bd0 <__printf+0x3f8>
    80002e28:	00600793          	li	a5,6
    80002e2c:	00500c93          	li	s9,5
    80002e30:	c09ff06f          	j	80002a38 <__printf+0x260>
    80002e34:	00800793          	li	a5,8
    80002e38:	00700c93          	li	s9,7
    80002e3c:	bfdff06f          	j	80002a38 <__printf+0x260>
    80002e40:	00100793          	li	a5,1
    80002e44:	d91ff06f          	j	80002bd4 <__printf+0x3fc>
    80002e48:	00100793          	li	a5,1
    80002e4c:	bf1ff06f          	j	80002a3c <__printf+0x264>
    80002e50:	00900793          	li	a5,9
    80002e54:	00800c93          	li	s9,8
    80002e58:	be1ff06f          	j	80002a38 <__printf+0x260>
    80002e5c:	00001517          	auipc	a0,0x1
    80002e60:	38c50513          	addi	a0,a0,908 # 800041e8 <_ZZ12printIntegermE6digits+0x150>
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	918080e7          	jalr	-1768(ra) # 8000277c <panic>

0000000080002e6c <printfinit>:
    80002e6c:	fe010113          	addi	sp,sp,-32
    80002e70:	00813823          	sd	s0,16(sp)
    80002e74:	00913423          	sd	s1,8(sp)
    80002e78:	00113c23          	sd	ra,24(sp)
    80002e7c:	02010413          	addi	s0,sp,32
    80002e80:	00003497          	auipc	s1,0x3
    80002e84:	ac048493          	addi	s1,s1,-1344 # 80005940 <pr>
    80002e88:	00048513          	mv	a0,s1
    80002e8c:	00001597          	auipc	a1,0x1
    80002e90:	36c58593          	addi	a1,a1,876 # 800041f8 <_ZZ12printIntegermE6digits+0x160>
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	5f4080e7          	jalr	1524(ra) # 80003488 <initlock>
    80002e9c:	01813083          	ld	ra,24(sp)
    80002ea0:	01013403          	ld	s0,16(sp)
    80002ea4:	0004ac23          	sw	zero,24(s1)
    80002ea8:	00813483          	ld	s1,8(sp)
    80002eac:	02010113          	addi	sp,sp,32
    80002eb0:	00008067          	ret

0000000080002eb4 <uartinit>:
    80002eb4:	ff010113          	addi	sp,sp,-16
    80002eb8:	00813423          	sd	s0,8(sp)
    80002ebc:	01010413          	addi	s0,sp,16
    80002ec0:	100007b7          	lui	a5,0x10000
    80002ec4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002ec8:	f8000713          	li	a4,-128
    80002ecc:	00e781a3          	sb	a4,3(a5)
    80002ed0:	00300713          	li	a4,3
    80002ed4:	00e78023          	sb	a4,0(a5)
    80002ed8:	000780a3          	sb	zero,1(a5)
    80002edc:	00e781a3          	sb	a4,3(a5)
    80002ee0:	00700693          	li	a3,7
    80002ee4:	00d78123          	sb	a3,2(a5)
    80002ee8:	00e780a3          	sb	a4,1(a5)
    80002eec:	00813403          	ld	s0,8(sp)
    80002ef0:	01010113          	addi	sp,sp,16
    80002ef4:	00008067          	ret

0000000080002ef8 <uartputc>:
    80002ef8:	00001797          	auipc	a5,0x1
    80002efc:	7d87a783          	lw	a5,2008(a5) # 800046d0 <panicked>
    80002f00:	00078463          	beqz	a5,80002f08 <uartputc+0x10>
    80002f04:	0000006f          	j	80002f04 <uartputc+0xc>
    80002f08:	fd010113          	addi	sp,sp,-48
    80002f0c:	02813023          	sd	s0,32(sp)
    80002f10:	00913c23          	sd	s1,24(sp)
    80002f14:	01213823          	sd	s2,16(sp)
    80002f18:	01313423          	sd	s3,8(sp)
    80002f1c:	02113423          	sd	ra,40(sp)
    80002f20:	03010413          	addi	s0,sp,48
    80002f24:	00001917          	auipc	s2,0x1
    80002f28:	7b490913          	addi	s2,s2,1972 # 800046d8 <uart_tx_r>
    80002f2c:	00093783          	ld	a5,0(s2)
    80002f30:	00001497          	auipc	s1,0x1
    80002f34:	7b048493          	addi	s1,s1,1968 # 800046e0 <uart_tx_w>
    80002f38:	0004b703          	ld	a4,0(s1)
    80002f3c:	02078693          	addi	a3,a5,32
    80002f40:	00050993          	mv	s3,a0
    80002f44:	02e69c63          	bne	a3,a4,80002f7c <uartputc+0x84>
    80002f48:	00001097          	auipc	ra,0x1
    80002f4c:	834080e7          	jalr	-1996(ra) # 8000377c <push_on>
    80002f50:	00093783          	ld	a5,0(s2)
    80002f54:	0004b703          	ld	a4,0(s1)
    80002f58:	02078793          	addi	a5,a5,32
    80002f5c:	00e79463          	bne	a5,a4,80002f64 <uartputc+0x6c>
    80002f60:	0000006f          	j	80002f60 <uartputc+0x68>
    80002f64:	00001097          	auipc	ra,0x1
    80002f68:	88c080e7          	jalr	-1908(ra) # 800037f0 <pop_on>
    80002f6c:	00093783          	ld	a5,0(s2)
    80002f70:	0004b703          	ld	a4,0(s1)
    80002f74:	02078693          	addi	a3,a5,32
    80002f78:	fce688e3          	beq	a3,a4,80002f48 <uartputc+0x50>
    80002f7c:	01f77693          	andi	a3,a4,31
    80002f80:	00003597          	auipc	a1,0x3
    80002f84:	9e058593          	addi	a1,a1,-1568 # 80005960 <uart_tx_buf>
    80002f88:	00d586b3          	add	a3,a1,a3
    80002f8c:	00170713          	addi	a4,a4,1
    80002f90:	01368023          	sb	s3,0(a3)
    80002f94:	00e4b023          	sd	a4,0(s1)
    80002f98:	10000637          	lui	a2,0x10000
    80002f9c:	02f71063          	bne	a4,a5,80002fbc <uartputc+0xc4>
    80002fa0:	0340006f          	j	80002fd4 <uartputc+0xdc>
    80002fa4:	00074703          	lbu	a4,0(a4)
    80002fa8:	00f93023          	sd	a5,0(s2)
    80002fac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002fb0:	00093783          	ld	a5,0(s2)
    80002fb4:	0004b703          	ld	a4,0(s1)
    80002fb8:	00f70e63          	beq	a4,a5,80002fd4 <uartputc+0xdc>
    80002fbc:	00564683          	lbu	a3,5(a2)
    80002fc0:	01f7f713          	andi	a4,a5,31
    80002fc4:	00e58733          	add	a4,a1,a4
    80002fc8:	0206f693          	andi	a3,a3,32
    80002fcc:	00178793          	addi	a5,a5,1
    80002fd0:	fc069ae3          	bnez	a3,80002fa4 <uartputc+0xac>
    80002fd4:	02813083          	ld	ra,40(sp)
    80002fd8:	02013403          	ld	s0,32(sp)
    80002fdc:	01813483          	ld	s1,24(sp)
    80002fe0:	01013903          	ld	s2,16(sp)
    80002fe4:	00813983          	ld	s3,8(sp)
    80002fe8:	03010113          	addi	sp,sp,48
    80002fec:	00008067          	ret

0000000080002ff0 <uartputc_sync>:
    80002ff0:	ff010113          	addi	sp,sp,-16
    80002ff4:	00813423          	sd	s0,8(sp)
    80002ff8:	01010413          	addi	s0,sp,16
    80002ffc:	00001717          	auipc	a4,0x1
    80003000:	6d472703          	lw	a4,1748(a4) # 800046d0 <panicked>
    80003004:	02071663          	bnez	a4,80003030 <uartputc_sync+0x40>
    80003008:	00050793          	mv	a5,a0
    8000300c:	100006b7          	lui	a3,0x10000
    80003010:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003014:	02077713          	andi	a4,a4,32
    80003018:	fe070ce3          	beqz	a4,80003010 <uartputc_sync+0x20>
    8000301c:	0ff7f793          	andi	a5,a5,255
    80003020:	00f68023          	sb	a5,0(a3)
    80003024:	00813403          	ld	s0,8(sp)
    80003028:	01010113          	addi	sp,sp,16
    8000302c:	00008067          	ret
    80003030:	0000006f          	j	80003030 <uartputc_sync+0x40>

0000000080003034 <uartstart>:
    80003034:	ff010113          	addi	sp,sp,-16
    80003038:	00813423          	sd	s0,8(sp)
    8000303c:	01010413          	addi	s0,sp,16
    80003040:	00001617          	auipc	a2,0x1
    80003044:	69860613          	addi	a2,a2,1688 # 800046d8 <uart_tx_r>
    80003048:	00001517          	auipc	a0,0x1
    8000304c:	69850513          	addi	a0,a0,1688 # 800046e0 <uart_tx_w>
    80003050:	00063783          	ld	a5,0(a2)
    80003054:	00053703          	ld	a4,0(a0)
    80003058:	04f70263          	beq	a4,a5,8000309c <uartstart+0x68>
    8000305c:	100005b7          	lui	a1,0x10000
    80003060:	00003817          	auipc	a6,0x3
    80003064:	90080813          	addi	a6,a6,-1792 # 80005960 <uart_tx_buf>
    80003068:	01c0006f          	j	80003084 <uartstart+0x50>
    8000306c:	0006c703          	lbu	a4,0(a3)
    80003070:	00f63023          	sd	a5,0(a2)
    80003074:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003078:	00063783          	ld	a5,0(a2)
    8000307c:	00053703          	ld	a4,0(a0)
    80003080:	00f70e63          	beq	a4,a5,8000309c <uartstart+0x68>
    80003084:	01f7f713          	andi	a4,a5,31
    80003088:	00e806b3          	add	a3,a6,a4
    8000308c:	0055c703          	lbu	a4,5(a1)
    80003090:	00178793          	addi	a5,a5,1
    80003094:	02077713          	andi	a4,a4,32
    80003098:	fc071ae3          	bnez	a4,8000306c <uartstart+0x38>
    8000309c:	00813403          	ld	s0,8(sp)
    800030a0:	01010113          	addi	sp,sp,16
    800030a4:	00008067          	ret

00000000800030a8 <uartgetc>:
    800030a8:	ff010113          	addi	sp,sp,-16
    800030ac:	00813423          	sd	s0,8(sp)
    800030b0:	01010413          	addi	s0,sp,16
    800030b4:	10000737          	lui	a4,0x10000
    800030b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800030bc:	0017f793          	andi	a5,a5,1
    800030c0:	00078c63          	beqz	a5,800030d8 <uartgetc+0x30>
    800030c4:	00074503          	lbu	a0,0(a4)
    800030c8:	0ff57513          	andi	a0,a0,255
    800030cc:	00813403          	ld	s0,8(sp)
    800030d0:	01010113          	addi	sp,sp,16
    800030d4:	00008067          	ret
    800030d8:	fff00513          	li	a0,-1
    800030dc:	ff1ff06f          	j	800030cc <uartgetc+0x24>

00000000800030e0 <uartintr>:
    800030e0:	100007b7          	lui	a5,0x10000
    800030e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800030e8:	0017f793          	andi	a5,a5,1
    800030ec:	0a078463          	beqz	a5,80003194 <uartintr+0xb4>
    800030f0:	fe010113          	addi	sp,sp,-32
    800030f4:	00813823          	sd	s0,16(sp)
    800030f8:	00913423          	sd	s1,8(sp)
    800030fc:	00113c23          	sd	ra,24(sp)
    80003100:	02010413          	addi	s0,sp,32
    80003104:	100004b7          	lui	s1,0x10000
    80003108:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000310c:	0ff57513          	andi	a0,a0,255
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	534080e7          	jalr	1332(ra) # 80002644 <consoleintr>
    80003118:	0054c783          	lbu	a5,5(s1)
    8000311c:	0017f793          	andi	a5,a5,1
    80003120:	fe0794e3          	bnez	a5,80003108 <uartintr+0x28>
    80003124:	00001617          	auipc	a2,0x1
    80003128:	5b460613          	addi	a2,a2,1460 # 800046d8 <uart_tx_r>
    8000312c:	00001517          	auipc	a0,0x1
    80003130:	5b450513          	addi	a0,a0,1460 # 800046e0 <uart_tx_w>
    80003134:	00063783          	ld	a5,0(a2)
    80003138:	00053703          	ld	a4,0(a0)
    8000313c:	04f70263          	beq	a4,a5,80003180 <uartintr+0xa0>
    80003140:	100005b7          	lui	a1,0x10000
    80003144:	00003817          	auipc	a6,0x3
    80003148:	81c80813          	addi	a6,a6,-2020 # 80005960 <uart_tx_buf>
    8000314c:	01c0006f          	j	80003168 <uartintr+0x88>
    80003150:	0006c703          	lbu	a4,0(a3)
    80003154:	00f63023          	sd	a5,0(a2)
    80003158:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000315c:	00063783          	ld	a5,0(a2)
    80003160:	00053703          	ld	a4,0(a0)
    80003164:	00f70e63          	beq	a4,a5,80003180 <uartintr+0xa0>
    80003168:	01f7f713          	andi	a4,a5,31
    8000316c:	00e806b3          	add	a3,a6,a4
    80003170:	0055c703          	lbu	a4,5(a1)
    80003174:	00178793          	addi	a5,a5,1
    80003178:	02077713          	andi	a4,a4,32
    8000317c:	fc071ae3          	bnez	a4,80003150 <uartintr+0x70>
    80003180:	01813083          	ld	ra,24(sp)
    80003184:	01013403          	ld	s0,16(sp)
    80003188:	00813483          	ld	s1,8(sp)
    8000318c:	02010113          	addi	sp,sp,32
    80003190:	00008067          	ret
    80003194:	00001617          	auipc	a2,0x1
    80003198:	54460613          	addi	a2,a2,1348 # 800046d8 <uart_tx_r>
    8000319c:	00001517          	auipc	a0,0x1
    800031a0:	54450513          	addi	a0,a0,1348 # 800046e0 <uart_tx_w>
    800031a4:	00063783          	ld	a5,0(a2)
    800031a8:	00053703          	ld	a4,0(a0)
    800031ac:	04f70263          	beq	a4,a5,800031f0 <uartintr+0x110>
    800031b0:	100005b7          	lui	a1,0x10000
    800031b4:	00002817          	auipc	a6,0x2
    800031b8:	7ac80813          	addi	a6,a6,1964 # 80005960 <uart_tx_buf>
    800031bc:	01c0006f          	j	800031d8 <uartintr+0xf8>
    800031c0:	0006c703          	lbu	a4,0(a3)
    800031c4:	00f63023          	sd	a5,0(a2)
    800031c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031cc:	00063783          	ld	a5,0(a2)
    800031d0:	00053703          	ld	a4,0(a0)
    800031d4:	02f70063          	beq	a4,a5,800031f4 <uartintr+0x114>
    800031d8:	01f7f713          	andi	a4,a5,31
    800031dc:	00e806b3          	add	a3,a6,a4
    800031e0:	0055c703          	lbu	a4,5(a1)
    800031e4:	00178793          	addi	a5,a5,1
    800031e8:	02077713          	andi	a4,a4,32
    800031ec:	fc071ae3          	bnez	a4,800031c0 <uartintr+0xe0>
    800031f0:	00008067          	ret
    800031f4:	00008067          	ret

00000000800031f8 <kinit>:
    800031f8:	fc010113          	addi	sp,sp,-64
    800031fc:	02913423          	sd	s1,40(sp)
    80003200:	fffff7b7          	lui	a5,0xfffff
    80003204:	00003497          	auipc	s1,0x3
    80003208:	78b48493          	addi	s1,s1,1931 # 8000698f <end+0xfff>
    8000320c:	02813823          	sd	s0,48(sp)
    80003210:	01313c23          	sd	s3,24(sp)
    80003214:	00f4f4b3          	and	s1,s1,a5
    80003218:	02113c23          	sd	ra,56(sp)
    8000321c:	03213023          	sd	s2,32(sp)
    80003220:	01413823          	sd	s4,16(sp)
    80003224:	01513423          	sd	s5,8(sp)
    80003228:	04010413          	addi	s0,sp,64
    8000322c:	000017b7          	lui	a5,0x1
    80003230:	01100993          	li	s3,17
    80003234:	00f487b3          	add	a5,s1,a5
    80003238:	01b99993          	slli	s3,s3,0x1b
    8000323c:	06f9e063          	bltu	s3,a5,8000329c <kinit+0xa4>
    80003240:	00002a97          	auipc	s5,0x2
    80003244:	750a8a93          	addi	s5,s5,1872 # 80005990 <end>
    80003248:	0754ec63          	bltu	s1,s5,800032c0 <kinit+0xc8>
    8000324c:	0734fa63          	bgeu	s1,s3,800032c0 <kinit+0xc8>
    80003250:	00088a37          	lui	s4,0x88
    80003254:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003258:	00001917          	auipc	s2,0x1
    8000325c:	49090913          	addi	s2,s2,1168 # 800046e8 <kmem>
    80003260:	00ca1a13          	slli	s4,s4,0xc
    80003264:	0140006f          	j	80003278 <kinit+0x80>
    80003268:	000017b7          	lui	a5,0x1
    8000326c:	00f484b3          	add	s1,s1,a5
    80003270:	0554e863          	bltu	s1,s5,800032c0 <kinit+0xc8>
    80003274:	0534f663          	bgeu	s1,s3,800032c0 <kinit+0xc8>
    80003278:	00001637          	lui	a2,0x1
    8000327c:	00100593          	li	a1,1
    80003280:	00048513          	mv	a0,s1
    80003284:	00000097          	auipc	ra,0x0
    80003288:	5e4080e7          	jalr	1508(ra) # 80003868 <__memset>
    8000328c:	00093783          	ld	a5,0(s2)
    80003290:	00f4b023          	sd	a5,0(s1)
    80003294:	00993023          	sd	s1,0(s2)
    80003298:	fd4498e3          	bne	s1,s4,80003268 <kinit+0x70>
    8000329c:	03813083          	ld	ra,56(sp)
    800032a0:	03013403          	ld	s0,48(sp)
    800032a4:	02813483          	ld	s1,40(sp)
    800032a8:	02013903          	ld	s2,32(sp)
    800032ac:	01813983          	ld	s3,24(sp)
    800032b0:	01013a03          	ld	s4,16(sp)
    800032b4:	00813a83          	ld	s5,8(sp)
    800032b8:	04010113          	addi	sp,sp,64
    800032bc:	00008067          	ret
    800032c0:	00001517          	auipc	a0,0x1
    800032c4:	f5850513          	addi	a0,a0,-168 # 80004218 <digits+0x18>
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	4b4080e7          	jalr	1204(ra) # 8000277c <panic>

00000000800032d0 <freerange>:
    800032d0:	fc010113          	addi	sp,sp,-64
    800032d4:	000017b7          	lui	a5,0x1
    800032d8:	02913423          	sd	s1,40(sp)
    800032dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800032e0:	009504b3          	add	s1,a0,s1
    800032e4:	fffff537          	lui	a0,0xfffff
    800032e8:	02813823          	sd	s0,48(sp)
    800032ec:	02113c23          	sd	ra,56(sp)
    800032f0:	03213023          	sd	s2,32(sp)
    800032f4:	01313c23          	sd	s3,24(sp)
    800032f8:	01413823          	sd	s4,16(sp)
    800032fc:	01513423          	sd	s5,8(sp)
    80003300:	01613023          	sd	s6,0(sp)
    80003304:	04010413          	addi	s0,sp,64
    80003308:	00a4f4b3          	and	s1,s1,a0
    8000330c:	00f487b3          	add	a5,s1,a5
    80003310:	06f5e463          	bltu	a1,a5,80003378 <freerange+0xa8>
    80003314:	00002a97          	auipc	s5,0x2
    80003318:	67ca8a93          	addi	s5,s5,1660 # 80005990 <end>
    8000331c:	0954e263          	bltu	s1,s5,800033a0 <freerange+0xd0>
    80003320:	01100993          	li	s3,17
    80003324:	01b99993          	slli	s3,s3,0x1b
    80003328:	0734fc63          	bgeu	s1,s3,800033a0 <freerange+0xd0>
    8000332c:	00058a13          	mv	s4,a1
    80003330:	00001917          	auipc	s2,0x1
    80003334:	3b890913          	addi	s2,s2,952 # 800046e8 <kmem>
    80003338:	00002b37          	lui	s6,0x2
    8000333c:	0140006f          	j	80003350 <freerange+0x80>
    80003340:	000017b7          	lui	a5,0x1
    80003344:	00f484b3          	add	s1,s1,a5
    80003348:	0554ec63          	bltu	s1,s5,800033a0 <freerange+0xd0>
    8000334c:	0534fa63          	bgeu	s1,s3,800033a0 <freerange+0xd0>
    80003350:	00001637          	lui	a2,0x1
    80003354:	00100593          	li	a1,1
    80003358:	00048513          	mv	a0,s1
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	50c080e7          	jalr	1292(ra) # 80003868 <__memset>
    80003364:	00093703          	ld	a4,0(s2)
    80003368:	016487b3          	add	a5,s1,s6
    8000336c:	00e4b023          	sd	a4,0(s1)
    80003370:	00993023          	sd	s1,0(s2)
    80003374:	fcfa76e3          	bgeu	s4,a5,80003340 <freerange+0x70>
    80003378:	03813083          	ld	ra,56(sp)
    8000337c:	03013403          	ld	s0,48(sp)
    80003380:	02813483          	ld	s1,40(sp)
    80003384:	02013903          	ld	s2,32(sp)
    80003388:	01813983          	ld	s3,24(sp)
    8000338c:	01013a03          	ld	s4,16(sp)
    80003390:	00813a83          	ld	s5,8(sp)
    80003394:	00013b03          	ld	s6,0(sp)
    80003398:	04010113          	addi	sp,sp,64
    8000339c:	00008067          	ret
    800033a0:	00001517          	auipc	a0,0x1
    800033a4:	e7850513          	addi	a0,a0,-392 # 80004218 <digits+0x18>
    800033a8:	fffff097          	auipc	ra,0xfffff
    800033ac:	3d4080e7          	jalr	980(ra) # 8000277c <panic>

00000000800033b0 <kfree>:
    800033b0:	fe010113          	addi	sp,sp,-32
    800033b4:	00813823          	sd	s0,16(sp)
    800033b8:	00113c23          	sd	ra,24(sp)
    800033bc:	00913423          	sd	s1,8(sp)
    800033c0:	02010413          	addi	s0,sp,32
    800033c4:	03451793          	slli	a5,a0,0x34
    800033c8:	04079c63          	bnez	a5,80003420 <kfree+0x70>
    800033cc:	00002797          	auipc	a5,0x2
    800033d0:	5c478793          	addi	a5,a5,1476 # 80005990 <end>
    800033d4:	00050493          	mv	s1,a0
    800033d8:	04f56463          	bltu	a0,a5,80003420 <kfree+0x70>
    800033dc:	01100793          	li	a5,17
    800033e0:	01b79793          	slli	a5,a5,0x1b
    800033e4:	02f57e63          	bgeu	a0,a5,80003420 <kfree+0x70>
    800033e8:	00001637          	lui	a2,0x1
    800033ec:	00100593          	li	a1,1
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	478080e7          	jalr	1144(ra) # 80003868 <__memset>
    800033f8:	00001797          	auipc	a5,0x1
    800033fc:	2f078793          	addi	a5,a5,752 # 800046e8 <kmem>
    80003400:	0007b703          	ld	a4,0(a5)
    80003404:	01813083          	ld	ra,24(sp)
    80003408:	01013403          	ld	s0,16(sp)
    8000340c:	00e4b023          	sd	a4,0(s1)
    80003410:	0097b023          	sd	s1,0(a5)
    80003414:	00813483          	ld	s1,8(sp)
    80003418:	02010113          	addi	sp,sp,32
    8000341c:	00008067          	ret
    80003420:	00001517          	auipc	a0,0x1
    80003424:	df850513          	addi	a0,a0,-520 # 80004218 <digits+0x18>
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	354080e7          	jalr	852(ra) # 8000277c <panic>

0000000080003430 <kalloc>:
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00813823          	sd	s0,16(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	00113c23          	sd	ra,24(sp)
    80003440:	02010413          	addi	s0,sp,32
    80003444:	00001797          	auipc	a5,0x1
    80003448:	2a478793          	addi	a5,a5,676 # 800046e8 <kmem>
    8000344c:	0007b483          	ld	s1,0(a5)
    80003450:	02048063          	beqz	s1,80003470 <kalloc+0x40>
    80003454:	0004b703          	ld	a4,0(s1)
    80003458:	00001637          	lui	a2,0x1
    8000345c:	00500593          	li	a1,5
    80003460:	00048513          	mv	a0,s1
    80003464:	00e7b023          	sd	a4,0(a5)
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	400080e7          	jalr	1024(ra) # 80003868 <__memset>
    80003470:	01813083          	ld	ra,24(sp)
    80003474:	01013403          	ld	s0,16(sp)
    80003478:	00048513          	mv	a0,s1
    8000347c:	00813483          	ld	s1,8(sp)
    80003480:	02010113          	addi	sp,sp,32
    80003484:	00008067          	ret

0000000080003488 <initlock>:
    80003488:	ff010113          	addi	sp,sp,-16
    8000348c:	00813423          	sd	s0,8(sp)
    80003490:	01010413          	addi	s0,sp,16
    80003494:	00813403          	ld	s0,8(sp)
    80003498:	00b53423          	sd	a1,8(a0)
    8000349c:	00052023          	sw	zero,0(a0)
    800034a0:	00053823          	sd	zero,16(a0)
    800034a4:	01010113          	addi	sp,sp,16
    800034a8:	00008067          	ret

00000000800034ac <acquire>:
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00813823          	sd	s0,16(sp)
    800034b4:	00913423          	sd	s1,8(sp)
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	01213023          	sd	s2,0(sp)
    800034c0:	02010413          	addi	s0,sp,32
    800034c4:	00050493          	mv	s1,a0
    800034c8:	10002973          	csrr	s2,sstatus
    800034cc:	100027f3          	csrr	a5,sstatus
    800034d0:	ffd7f793          	andi	a5,a5,-3
    800034d4:	10079073          	csrw	sstatus,a5
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	8e4080e7          	jalr	-1820(ra) # 80001dbc <mycpu>
    800034e0:	07852783          	lw	a5,120(a0)
    800034e4:	06078e63          	beqz	a5,80003560 <acquire+0xb4>
    800034e8:	fffff097          	auipc	ra,0xfffff
    800034ec:	8d4080e7          	jalr	-1836(ra) # 80001dbc <mycpu>
    800034f0:	07852783          	lw	a5,120(a0)
    800034f4:	0004a703          	lw	a4,0(s1)
    800034f8:	0017879b          	addiw	a5,a5,1
    800034fc:	06f52c23          	sw	a5,120(a0)
    80003500:	04071063          	bnez	a4,80003540 <acquire+0x94>
    80003504:	00100713          	li	a4,1
    80003508:	00070793          	mv	a5,a4
    8000350c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003510:	0007879b          	sext.w	a5,a5
    80003514:	fe079ae3          	bnez	a5,80003508 <acquire+0x5c>
    80003518:	0ff0000f          	fence
    8000351c:	fffff097          	auipc	ra,0xfffff
    80003520:	8a0080e7          	jalr	-1888(ra) # 80001dbc <mycpu>
    80003524:	01813083          	ld	ra,24(sp)
    80003528:	01013403          	ld	s0,16(sp)
    8000352c:	00a4b823          	sd	a0,16(s1)
    80003530:	00013903          	ld	s2,0(sp)
    80003534:	00813483          	ld	s1,8(sp)
    80003538:	02010113          	addi	sp,sp,32
    8000353c:	00008067          	ret
    80003540:	0104b903          	ld	s2,16(s1)
    80003544:	fffff097          	auipc	ra,0xfffff
    80003548:	878080e7          	jalr	-1928(ra) # 80001dbc <mycpu>
    8000354c:	faa91ce3          	bne	s2,a0,80003504 <acquire+0x58>
    80003550:	00001517          	auipc	a0,0x1
    80003554:	cd050513          	addi	a0,a0,-816 # 80004220 <digits+0x20>
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	224080e7          	jalr	548(ra) # 8000277c <panic>
    80003560:	00195913          	srli	s2,s2,0x1
    80003564:	fffff097          	auipc	ra,0xfffff
    80003568:	858080e7          	jalr	-1960(ra) # 80001dbc <mycpu>
    8000356c:	00197913          	andi	s2,s2,1
    80003570:	07252e23          	sw	s2,124(a0)
    80003574:	f75ff06f          	j	800034e8 <acquire+0x3c>

0000000080003578 <release>:
    80003578:	fe010113          	addi	sp,sp,-32
    8000357c:	00813823          	sd	s0,16(sp)
    80003580:	00113c23          	sd	ra,24(sp)
    80003584:	00913423          	sd	s1,8(sp)
    80003588:	01213023          	sd	s2,0(sp)
    8000358c:	02010413          	addi	s0,sp,32
    80003590:	00052783          	lw	a5,0(a0)
    80003594:	00079a63          	bnez	a5,800035a8 <release+0x30>
    80003598:	00001517          	auipc	a0,0x1
    8000359c:	c9050513          	addi	a0,a0,-880 # 80004228 <digits+0x28>
    800035a0:	fffff097          	auipc	ra,0xfffff
    800035a4:	1dc080e7          	jalr	476(ra) # 8000277c <panic>
    800035a8:	01053903          	ld	s2,16(a0)
    800035ac:	00050493          	mv	s1,a0
    800035b0:	fffff097          	auipc	ra,0xfffff
    800035b4:	80c080e7          	jalr	-2036(ra) # 80001dbc <mycpu>
    800035b8:	fea910e3          	bne	s2,a0,80003598 <release+0x20>
    800035bc:	0004b823          	sd	zero,16(s1)
    800035c0:	0ff0000f          	fence
    800035c4:	0f50000f          	fence	iorw,ow
    800035c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	7f0080e7          	jalr	2032(ra) # 80001dbc <mycpu>
    800035d4:	100027f3          	csrr	a5,sstatus
    800035d8:	0027f793          	andi	a5,a5,2
    800035dc:	04079a63          	bnez	a5,80003630 <release+0xb8>
    800035e0:	07852783          	lw	a5,120(a0)
    800035e4:	02f05e63          	blez	a5,80003620 <release+0xa8>
    800035e8:	fff7871b          	addiw	a4,a5,-1
    800035ec:	06e52c23          	sw	a4,120(a0)
    800035f0:	00071c63          	bnez	a4,80003608 <release+0x90>
    800035f4:	07c52783          	lw	a5,124(a0)
    800035f8:	00078863          	beqz	a5,80003608 <release+0x90>
    800035fc:	100027f3          	csrr	a5,sstatus
    80003600:	0027e793          	ori	a5,a5,2
    80003604:	10079073          	csrw	sstatus,a5
    80003608:	01813083          	ld	ra,24(sp)
    8000360c:	01013403          	ld	s0,16(sp)
    80003610:	00813483          	ld	s1,8(sp)
    80003614:	00013903          	ld	s2,0(sp)
    80003618:	02010113          	addi	sp,sp,32
    8000361c:	00008067          	ret
    80003620:	00001517          	auipc	a0,0x1
    80003624:	c2850513          	addi	a0,a0,-984 # 80004248 <digits+0x48>
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	154080e7          	jalr	340(ra) # 8000277c <panic>
    80003630:	00001517          	auipc	a0,0x1
    80003634:	c0050513          	addi	a0,a0,-1024 # 80004230 <digits+0x30>
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	144080e7          	jalr	324(ra) # 8000277c <panic>

0000000080003640 <holding>:
    80003640:	00052783          	lw	a5,0(a0)
    80003644:	00079663          	bnez	a5,80003650 <holding+0x10>
    80003648:	00000513          	li	a0,0
    8000364c:	00008067          	ret
    80003650:	fe010113          	addi	sp,sp,-32
    80003654:	00813823          	sd	s0,16(sp)
    80003658:	00913423          	sd	s1,8(sp)
    8000365c:	00113c23          	sd	ra,24(sp)
    80003660:	02010413          	addi	s0,sp,32
    80003664:	01053483          	ld	s1,16(a0)
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	754080e7          	jalr	1876(ra) # 80001dbc <mycpu>
    80003670:	01813083          	ld	ra,24(sp)
    80003674:	01013403          	ld	s0,16(sp)
    80003678:	40a48533          	sub	a0,s1,a0
    8000367c:	00153513          	seqz	a0,a0
    80003680:	00813483          	ld	s1,8(sp)
    80003684:	02010113          	addi	sp,sp,32
    80003688:	00008067          	ret

000000008000368c <push_off>:
    8000368c:	fe010113          	addi	sp,sp,-32
    80003690:	00813823          	sd	s0,16(sp)
    80003694:	00113c23          	sd	ra,24(sp)
    80003698:	00913423          	sd	s1,8(sp)
    8000369c:	02010413          	addi	s0,sp,32
    800036a0:	100024f3          	csrr	s1,sstatus
    800036a4:	100027f3          	csrr	a5,sstatus
    800036a8:	ffd7f793          	andi	a5,a5,-3
    800036ac:	10079073          	csrw	sstatus,a5
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	70c080e7          	jalr	1804(ra) # 80001dbc <mycpu>
    800036b8:	07852783          	lw	a5,120(a0)
    800036bc:	02078663          	beqz	a5,800036e8 <push_off+0x5c>
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	6fc080e7          	jalr	1788(ra) # 80001dbc <mycpu>
    800036c8:	07852783          	lw	a5,120(a0)
    800036cc:	01813083          	ld	ra,24(sp)
    800036d0:	01013403          	ld	s0,16(sp)
    800036d4:	0017879b          	addiw	a5,a5,1
    800036d8:	06f52c23          	sw	a5,120(a0)
    800036dc:	00813483          	ld	s1,8(sp)
    800036e0:	02010113          	addi	sp,sp,32
    800036e4:	00008067          	ret
    800036e8:	0014d493          	srli	s1,s1,0x1
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	6d0080e7          	jalr	1744(ra) # 80001dbc <mycpu>
    800036f4:	0014f493          	andi	s1,s1,1
    800036f8:	06952e23          	sw	s1,124(a0)
    800036fc:	fc5ff06f          	j	800036c0 <push_off+0x34>

0000000080003700 <pop_off>:
    80003700:	ff010113          	addi	sp,sp,-16
    80003704:	00813023          	sd	s0,0(sp)
    80003708:	00113423          	sd	ra,8(sp)
    8000370c:	01010413          	addi	s0,sp,16
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	6ac080e7          	jalr	1708(ra) # 80001dbc <mycpu>
    80003718:	100027f3          	csrr	a5,sstatus
    8000371c:	0027f793          	andi	a5,a5,2
    80003720:	04079663          	bnez	a5,8000376c <pop_off+0x6c>
    80003724:	07852783          	lw	a5,120(a0)
    80003728:	02f05a63          	blez	a5,8000375c <pop_off+0x5c>
    8000372c:	fff7871b          	addiw	a4,a5,-1
    80003730:	06e52c23          	sw	a4,120(a0)
    80003734:	00071c63          	bnez	a4,8000374c <pop_off+0x4c>
    80003738:	07c52783          	lw	a5,124(a0)
    8000373c:	00078863          	beqz	a5,8000374c <pop_off+0x4c>
    80003740:	100027f3          	csrr	a5,sstatus
    80003744:	0027e793          	ori	a5,a5,2
    80003748:	10079073          	csrw	sstatus,a5
    8000374c:	00813083          	ld	ra,8(sp)
    80003750:	00013403          	ld	s0,0(sp)
    80003754:	01010113          	addi	sp,sp,16
    80003758:	00008067          	ret
    8000375c:	00001517          	auipc	a0,0x1
    80003760:	aec50513          	addi	a0,a0,-1300 # 80004248 <digits+0x48>
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	018080e7          	jalr	24(ra) # 8000277c <panic>
    8000376c:	00001517          	auipc	a0,0x1
    80003770:	ac450513          	addi	a0,a0,-1340 # 80004230 <digits+0x30>
    80003774:	fffff097          	auipc	ra,0xfffff
    80003778:	008080e7          	jalr	8(ra) # 8000277c <panic>

000000008000377c <push_on>:
    8000377c:	fe010113          	addi	sp,sp,-32
    80003780:	00813823          	sd	s0,16(sp)
    80003784:	00113c23          	sd	ra,24(sp)
    80003788:	00913423          	sd	s1,8(sp)
    8000378c:	02010413          	addi	s0,sp,32
    80003790:	100024f3          	csrr	s1,sstatus
    80003794:	100027f3          	csrr	a5,sstatus
    80003798:	0027e793          	ori	a5,a5,2
    8000379c:	10079073          	csrw	sstatus,a5
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	61c080e7          	jalr	1564(ra) # 80001dbc <mycpu>
    800037a8:	07852783          	lw	a5,120(a0)
    800037ac:	02078663          	beqz	a5,800037d8 <push_on+0x5c>
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	60c080e7          	jalr	1548(ra) # 80001dbc <mycpu>
    800037b8:	07852783          	lw	a5,120(a0)
    800037bc:	01813083          	ld	ra,24(sp)
    800037c0:	01013403          	ld	s0,16(sp)
    800037c4:	0017879b          	addiw	a5,a5,1
    800037c8:	06f52c23          	sw	a5,120(a0)
    800037cc:	00813483          	ld	s1,8(sp)
    800037d0:	02010113          	addi	sp,sp,32
    800037d4:	00008067          	ret
    800037d8:	0014d493          	srli	s1,s1,0x1
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	5e0080e7          	jalr	1504(ra) # 80001dbc <mycpu>
    800037e4:	0014f493          	andi	s1,s1,1
    800037e8:	06952e23          	sw	s1,124(a0)
    800037ec:	fc5ff06f          	j	800037b0 <push_on+0x34>

00000000800037f0 <pop_on>:
    800037f0:	ff010113          	addi	sp,sp,-16
    800037f4:	00813023          	sd	s0,0(sp)
    800037f8:	00113423          	sd	ra,8(sp)
    800037fc:	01010413          	addi	s0,sp,16
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	5bc080e7          	jalr	1468(ra) # 80001dbc <mycpu>
    80003808:	100027f3          	csrr	a5,sstatus
    8000380c:	0027f793          	andi	a5,a5,2
    80003810:	04078463          	beqz	a5,80003858 <pop_on+0x68>
    80003814:	07852783          	lw	a5,120(a0)
    80003818:	02f05863          	blez	a5,80003848 <pop_on+0x58>
    8000381c:	fff7879b          	addiw	a5,a5,-1
    80003820:	06f52c23          	sw	a5,120(a0)
    80003824:	07853783          	ld	a5,120(a0)
    80003828:	00079863          	bnez	a5,80003838 <pop_on+0x48>
    8000382c:	100027f3          	csrr	a5,sstatus
    80003830:	ffd7f793          	andi	a5,a5,-3
    80003834:	10079073          	csrw	sstatus,a5
    80003838:	00813083          	ld	ra,8(sp)
    8000383c:	00013403          	ld	s0,0(sp)
    80003840:	01010113          	addi	sp,sp,16
    80003844:	00008067          	ret
    80003848:	00001517          	auipc	a0,0x1
    8000384c:	a2850513          	addi	a0,a0,-1496 # 80004270 <digits+0x70>
    80003850:	fffff097          	auipc	ra,0xfffff
    80003854:	f2c080e7          	jalr	-212(ra) # 8000277c <panic>
    80003858:	00001517          	auipc	a0,0x1
    8000385c:	9f850513          	addi	a0,a0,-1544 # 80004250 <digits+0x50>
    80003860:	fffff097          	auipc	ra,0xfffff
    80003864:	f1c080e7          	jalr	-228(ra) # 8000277c <panic>

0000000080003868 <__memset>:
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00813423          	sd	s0,8(sp)
    80003870:	01010413          	addi	s0,sp,16
    80003874:	1a060e63          	beqz	a2,80003a30 <__memset+0x1c8>
    80003878:	40a007b3          	neg	a5,a0
    8000387c:	0077f793          	andi	a5,a5,7
    80003880:	00778693          	addi	a3,a5,7
    80003884:	00b00813          	li	a6,11
    80003888:	0ff5f593          	andi	a1,a1,255
    8000388c:	fff6071b          	addiw	a4,a2,-1
    80003890:	1b06e663          	bltu	a3,a6,80003a3c <__memset+0x1d4>
    80003894:	1cd76463          	bltu	a4,a3,80003a5c <__memset+0x1f4>
    80003898:	1a078e63          	beqz	a5,80003a54 <__memset+0x1ec>
    8000389c:	00b50023          	sb	a1,0(a0)
    800038a0:	00100713          	li	a4,1
    800038a4:	1ae78463          	beq	a5,a4,80003a4c <__memset+0x1e4>
    800038a8:	00b500a3          	sb	a1,1(a0)
    800038ac:	00200713          	li	a4,2
    800038b0:	1ae78a63          	beq	a5,a4,80003a64 <__memset+0x1fc>
    800038b4:	00b50123          	sb	a1,2(a0)
    800038b8:	00300713          	li	a4,3
    800038bc:	18e78463          	beq	a5,a4,80003a44 <__memset+0x1dc>
    800038c0:	00b501a3          	sb	a1,3(a0)
    800038c4:	00400713          	li	a4,4
    800038c8:	1ae78263          	beq	a5,a4,80003a6c <__memset+0x204>
    800038cc:	00b50223          	sb	a1,4(a0)
    800038d0:	00500713          	li	a4,5
    800038d4:	1ae78063          	beq	a5,a4,80003a74 <__memset+0x20c>
    800038d8:	00b502a3          	sb	a1,5(a0)
    800038dc:	00700713          	li	a4,7
    800038e0:	18e79e63          	bne	a5,a4,80003a7c <__memset+0x214>
    800038e4:	00b50323          	sb	a1,6(a0)
    800038e8:	00700e93          	li	t4,7
    800038ec:	00859713          	slli	a4,a1,0x8
    800038f0:	00e5e733          	or	a4,a1,a4
    800038f4:	01059e13          	slli	t3,a1,0x10
    800038f8:	01c76e33          	or	t3,a4,t3
    800038fc:	01859313          	slli	t1,a1,0x18
    80003900:	006e6333          	or	t1,t3,t1
    80003904:	02059893          	slli	a7,a1,0x20
    80003908:	40f60e3b          	subw	t3,a2,a5
    8000390c:	011368b3          	or	a7,t1,a7
    80003910:	02859813          	slli	a6,a1,0x28
    80003914:	0108e833          	or	a6,a7,a6
    80003918:	03059693          	slli	a3,a1,0x30
    8000391c:	003e589b          	srliw	a7,t3,0x3
    80003920:	00d866b3          	or	a3,a6,a3
    80003924:	03859713          	slli	a4,a1,0x38
    80003928:	00389813          	slli	a6,a7,0x3
    8000392c:	00f507b3          	add	a5,a0,a5
    80003930:	00e6e733          	or	a4,a3,a4
    80003934:	000e089b          	sext.w	a7,t3
    80003938:	00f806b3          	add	a3,a6,a5
    8000393c:	00e7b023          	sd	a4,0(a5)
    80003940:	00878793          	addi	a5,a5,8
    80003944:	fed79ce3          	bne	a5,a3,8000393c <__memset+0xd4>
    80003948:	ff8e7793          	andi	a5,t3,-8
    8000394c:	0007871b          	sext.w	a4,a5
    80003950:	01d787bb          	addw	a5,a5,t4
    80003954:	0ce88e63          	beq	a7,a4,80003a30 <__memset+0x1c8>
    80003958:	00f50733          	add	a4,a0,a5
    8000395c:	00b70023          	sb	a1,0(a4)
    80003960:	0017871b          	addiw	a4,a5,1
    80003964:	0cc77663          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    80003968:	00e50733          	add	a4,a0,a4
    8000396c:	00b70023          	sb	a1,0(a4)
    80003970:	0027871b          	addiw	a4,a5,2
    80003974:	0ac77e63          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    80003978:	00e50733          	add	a4,a0,a4
    8000397c:	00b70023          	sb	a1,0(a4)
    80003980:	0037871b          	addiw	a4,a5,3
    80003984:	0ac77663          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    80003988:	00e50733          	add	a4,a0,a4
    8000398c:	00b70023          	sb	a1,0(a4)
    80003990:	0047871b          	addiw	a4,a5,4
    80003994:	08c77e63          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    80003998:	00e50733          	add	a4,a0,a4
    8000399c:	00b70023          	sb	a1,0(a4)
    800039a0:	0057871b          	addiw	a4,a5,5
    800039a4:	08c77663          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    800039a8:	00e50733          	add	a4,a0,a4
    800039ac:	00b70023          	sb	a1,0(a4)
    800039b0:	0067871b          	addiw	a4,a5,6
    800039b4:	06c77e63          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    800039b8:	00e50733          	add	a4,a0,a4
    800039bc:	00b70023          	sb	a1,0(a4)
    800039c0:	0077871b          	addiw	a4,a5,7
    800039c4:	06c77663          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    800039c8:	00e50733          	add	a4,a0,a4
    800039cc:	00b70023          	sb	a1,0(a4)
    800039d0:	0087871b          	addiw	a4,a5,8
    800039d4:	04c77e63          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    800039d8:	00e50733          	add	a4,a0,a4
    800039dc:	00b70023          	sb	a1,0(a4)
    800039e0:	0097871b          	addiw	a4,a5,9
    800039e4:	04c77663          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    800039e8:	00e50733          	add	a4,a0,a4
    800039ec:	00b70023          	sb	a1,0(a4)
    800039f0:	00a7871b          	addiw	a4,a5,10
    800039f4:	02c77e63          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    800039f8:	00e50733          	add	a4,a0,a4
    800039fc:	00b70023          	sb	a1,0(a4)
    80003a00:	00b7871b          	addiw	a4,a5,11
    80003a04:	02c77663          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    80003a08:	00e50733          	add	a4,a0,a4
    80003a0c:	00b70023          	sb	a1,0(a4)
    80003a10:	00c7871b          	addiw	a4,a5,12
    80003a14:	00c77e63          	bgeu	a4,a2,80003a30 <__memset+0x1c8>
    80003a18:	00e50733          	add	a4,a0,a4
    80003a1c:	00b70023          	sb	a1,0(a4)
    80003a20:	00d7879b          	addiw	a5,a5,13
    80003a24:	00c7f663          	bgeu	a5,a2,80003a30 <__memset+0x1c8>
    80003a28:	00f507b3          	add	a5,a0,a5
    80003a2c:	00b78023          	sb	a1,0(a5)
    80003a30:	00813403          	ld	s0,8(sp)
    80003a34:	01010113          	addi	sp,sp,16
    80003a38:	00008067          	ret
    80003a3c:	00b00693          	li	a3,11
    80003a40:	e55ff06f          	j	80003894 <__memset+0x2c>
    80003a44:	00300e93          	li	t4,3
    80003a48:	ea5ff06f          	j	800038ec <__memset+0x84>
    80003a4c:	00100e93          	li	t4,1
    80003a50:	e9dff06f          	j	800038ec <__memset+0x84>
    80003a54:	00000e93          	li	t4,0
    80003a58:	e95ff06f          	j	800038ec <__memset+0x84>
    80003a5c:	00000793          	li	a5,0
    80003a60:	ef9ff06f          	j	80003958 <__memset+0xf0>
    80003a64:	00200e93          	li	t4,2
    80003a68:	e85ff06f          	j	800038ec <__memset+0x84>
    80003a6c:	00400e93          	li	t4,4
    80003a70:	e7dff06f          	j	800038ec <__memset+0x84>
    80003a74:	00500e93          	li	t4,5
    80003a78:	e75ff06f          	j	800038ec <__memset+0x84>
    80003a7c:	00600e93          	li	t4,6
    80003a80:	e6dff06f          	j	800038ec <__memset+0x84>

0000000080003a84 <__memmove>:
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00813423          	sd	s0,8(sp)
    80003a8c:	01010413          	addi	s0,sp,16
    80003a90:	0e060863          	beqz	a2,80003b80 <__memmove+0xfc>
    80003a94:	fff6069b          	addiw	a3,a2,-1
    80003a98:	0006881b          	sext.w	a6,a3
    80003a9c:	0ea5e863          	bltu	a1,a0,80003b8c <__memmove+0x108>
    80003aa0:	00758713          	addi	a4,a1,7
    80003aa4:	00a5e7b3          	or	a5,a1,a0
    80003aa8:	40a70733          	sub	a4,a4,a0
    80003aac:	0077f793          	andi	a5,a5,7
    80003ab0:	00f73713          	sltiu	a4,a4,15
    80003ab4:	00174713          	xori	a4,a4,1
    80003ab8:	0017b793          	seqz	a5,a5
    80003abc:	00e7f7b3          	and	a5,a5,a4
    80003ac0:	10078863          	beqz	a5,80003bd0 <__memmove+0x14c>
    80003ac4:	00900793          	li	a5,9
    80003ac8:	1107f463          	bgeu	a5,a6,80003bd0 <__memmove+0x14c>
    80003acc:	0036581b          	srliw	a6,a2,0x3
    80003ad0:	fff8081b          	addiw	a6,a6,-1
    80003ad4:	02081813          	slli	a6,a6,0x20
    80003ad8:	01d85893          	srli	a7,a6,0x1d
    80003adc:	00858813          	addi	a6,a1,8
    80003ae0:	00058793          	mv	a5,a1
    80003ae4:	00050713          	mv	a4,a0
    80003ae8:	01088833          	add	a6,a7,a6
    80003aec:	0007b883          	ld	a7,0(a5)
    80003af0:	00878793          	addi	a5,a5,8
    80003af4:	00870713          	addi	a4,a4,8
    80003af8:	ff173c23          	sd	a7,-8(a4)
    80003afc:	ff0798e3          	bne	a5,a6,80003aec <__memmove+0x68>
    80003b00:	ff867713          	andi	a4,a2,-8
    80003b04:	02071793          	slli	a5,a4,0x20
    80003b08:	0207d793          	srli	a5,a5,0x20
    80003b0c:	00f585b3          	add	a1,a1,a5
    80003b10:	40e686bb          	subw	a3,a3,a4
    80003b14:	00f507b3          	add	a5,a0,a5
    80003b18:	06e60463          	beq	a2,a4,80003b80 <__memmove+0xfc>
    80003b1c:	0005c703          	lbu	a4,0(a1)
    80003b20:	00e78023          	sb	a4,0(a5)
    80003b24:	04068e63          	beqz	a3,80003b80 <__memmove+0xfc>
    80003b28:	0015c603          	lbu	a2,1(a1)
    80003b2c:	00100713          	li	a4,1
    80003b30:	00c780a3          	sb	a2,1(a5)
    80003b34:	04e68663          	beq	a3,a4,80003b80 <__memmove+0xfc>
    80003b38:	0025c603          	lbu	a2,2(a1)
    80003b3c:	00200713          	li	a4,2
    80003b40:	00c78123          	sb	a2,2(a5)
    80003b44:	02e68e63          	beq	a3,a4,80003b80 <__memmove+0xfc>
    80003b48:	0035c603          	lbu	a2,3(a1)
    80003b4c:	00300713          	li	a4,3
    80003b50:	00c781a3          	sb	a2,3(a5)
    80003b54:	02e68663          	beq	a3,a4,80003b80 <__memmove+0xfc>
    80003b58:	0045c603          	lbu	a2,4(a1)
    80003b5c:	00400713          	li	a4,4
    80003b60:	00c78223          	sb	a2,4(a5)
    80003b64:	00e68e63          	beq	a3,a4,80003b80 <__memmove+0xfc>
    80003b68:	0055c603          	lbu	a2,5(a1)
    80003b6c:	00500713          	li	a4,5
    80003b70:	00c782a3          	sb	a2,5(a5)
    80003b74:	00e68663          	beq	a3,a4,80003b80 <__memmove+0xfc>
    80003b78:	0065c703          	lbu	a4,6(a1)
    80003b7c:	00e78323          	sb	a4,6(a5)
    80003b80:	00813403          	ld	s0,8(sp)
    80003b84:	01010113          	addi	sp,sp,16
    80003b88:	00008067          	ret
    80003b8c:	02061713          	slli	a4,a2,0x20
    80003b90:	02075713          	srli	a4,a4,0x20
    80003b94:	00e587b3          	add	a5,a1,a4
    80003b98:	f0f574e3          	bgeu	a0,a5,80003aa0 <__memmove+0x1c>
    80003b9c:	02069613          	slli	a2,a3,0x20
    80003ba0:	02065613          	srli	a2,a2,0x20
    80003ba4:	fff64613          	not	a2,a2
    80003ba8:	00e50733          	add	a4,a0,a4
    80003bac:	00c78633          	add	a2,a5,a2
    80003bb0:	fff7c683          	lbu	a3,-1(a5)
    80003bb4:	fff78793          	addi	a5,a5,-1
    80003bb8:	fff70713          	addi	a4,a4,-1
    80003bbc:	00d70023          	sb	a3,0(a4)
    80003bc0:	fec798e3          	bne	a5,a2,80003bb0 <__memmove+0x12c>
    80003bc4:	00813403          	ld	s0,8(sp)
    80003bc8:	01010113          	addi	sp,sp,16
    80003bcc:	00008067          	ret
    80003bd0:	02069713          	slli	a4,a3,0x20
    80003bd4:	02075713          	srli	a4,a4,0x20
    80003bd8:	00170713          	addi	a4,a4,1
    80003bdc:	00e50733          	add	a4,a0,a4
    80003be0:	00050793          	mv	a5,a0
    80003be4:	0005c683          	lbu	a3,0(a1)
    80003be8:	00178793          	addi	a5,a5,1
    80003bec:	00158593          	addi	a1,a1,1
    80003bf0:	fed78fa3          	sb	a3,-1(a5)
    80003bf4:	fee798e3          	bne	a5,a4,80003be4 <__memmove+0x160>
    80003bf8:	f89ff06f          	j	80003b80 <__memmove+0xfc>

0000000080003bfc <__mem_free>:
    80003bfc:	ff010113          	addi	sp,sp,-16
    80003c00:	00813423          	sd	s0,8(sp)
    80003c04:	01010413          	addi	s0,sp,16
    80003c08:	00001597          	auipc	a1,0x1
    80003c0c:	ae858593          	addi	a1,a1,-1304 # 800046f0 <freep>
    80003c10:	0005b783          	ld	a5,0(a1)
    80003c14:	ff050693          	addi	a3,a0,-16
    80003c18:	0007b703          	ld	a4,0(a5)
    80003c1c:	00d7fc63          	bgeu	a5,a3,80003c34 <__mem_free+0x38>
    80003c20:	00e6ee63          	bltu	a3,a4,80003c3c <__mem_free+0x40>
    80003c24:	00e7fc63          	bgeu	a5,a4,80003c3c <__mem_free+0x40>
    80003c28:	00070793          	mv	a5,a4
    80003c2c:	0007b703          	ld	a4,0(a5)
    80003c30:	fed7e8e3          	bltu	a5,a3,80003c20 <__mem_free+0x24>
    80003c34:	fee7eae3          	bltu	a5,a4,80003c28 <__mem_free+0x2c>
    80003c38:	fee6f8e3          	bgeu	a3,a4,80003c28 <__mem_free+0x2c>
    80003c3c:	ff852803          	lw	a6,-8(a0)
    80003c40:	02081613          	slli	a2,a6,0x20
    80003c44:	01c65613          	srli	a2,a2,0x1c
    80003c48:	00c68633          	add	a2,a3,a2
    80003c4c:	02c70a63          	beq	a4,a2,80003c80 <__mem_free+0x84>
    80003c50:	fee53823          	sd	a4,-16(a0)
    80003c54:	0087a503          	lw	a0,8(a5)
    80003c58:	02051613          	slli	a2,a0,0x20
    80003c5c:	01c65613          	srli	a2,a2,0x1c
    80003c60:	00c78633          	add	a2,a5,a2
    80003c64:	04c68263          	beq	a3,a2,80003ca8 <__mem_free+0xac>
    80003c68:	00813403          	ld	s0,8(sp)
    80003c6c:	00d7b023          	sd	a3,0(a5)
    80003c70:	00f5b023          	sd	a5,0(a1)
    80003c74:	00000513          	li	a0,0
    80003c78:	01010113          	addi	sp,sp,16
    80003c7c:	00008067          	ret
    80003c80:	00872603          	lw	a2,8(a4)
    80003c84:	00073703          	ld	a4,0(a4)
    80003c88:	0106083b          	addw	a6,a2,a6
    80003c8c:	ff052c23          	sw	a6,-8(a0)
    80003c90:	fee53823          	sd	a4,-16(a0)
    80003c94:	0087a503          	lw	a0,8(a5)
    80003c98:	02051613          	slli	a2,a0,0x20
    80003c9c:	01c65613          	srli	a2,a2,0x1c
    80003ca0:	00c78633          	add	a2,a5,a2
    80003ca4:	fcc692e3          	bne	a3,a2,80003c68 <__mem_free+0x6c>
    80003ca8:	00813403          	ld	s0,8(sp)
    80003cac:	0105053b          	addw	a0,a0,a6
    80003cb0:	00a7a423          	sw	a0,8(a5)
    80003cb4:	00e7b023          	sd	a4,0(a5)
    80003cb8:	00f5b023          	sd	a5,0(a1)
    80003cbc:	00000513          	li	a0,0
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	00008067          	ret

0000000080003cc8 <__mem_alloc>:
    80003cc8:	fc010113          	addi	sp,sp,-64
    80003ccc:	02813823          	sd	s0,48(sp)
    80003cd0:	02913423          	sd	s1,40(sp)
    80003cd4:	03213023          	sd	s2,32(sp)
    80003cd8:	01513423          	sd	s5,8(sp)
    80003cdc:	02113c23          	sd	ra,56(sp)
    80003ce0:	01313c23          	sd	s3,24(sp)
    80003ce4:	01413823          	sd	s4,16(sp)
    80003ce8:	01613023          	sd	s6,0(sp)
    80003cec:	04010413          	addi	s0,sp,64
    80003cf0:	00001a97          	auipc	s5,0x1
    80003cf4:	a00a8a93          	addi	s5,s5,-1536 # 800046f0 <freep>
    80003cf8:	00f50913          	addi	s2,a0,15
    80003cfc:	000ab683          	ld	a3,0(s5)
    80003d00:	00495913          	srli	s2,s2,0x4
    80003d04:	0019049b          	addiw	s1,s2,1
    80003d08:	00048913          	mv	s2,s1
    80003d0c:	0c068c63          	beqz	a3,80003de4 <__mem_alloc+0x11c>
    80003d10:	0006b503          	ld	a0,0(a3)
    80003d14:	00852703          	lw	a4,8(a0)
    80003d18:	10977063          	bgeu	a4,s1,80003e18 <__mem_alloc+0x150>
    80003d1c:	000017b7          	lui	a5,0x1
    80003d20:	0009099b          	sext.w	s3,s2
    80003d24:	0af4e863          	bltu	s1,a5,80003dd4 <__mem_alloc+0x10c>
    80003d28:	02099a13          	slli	s4,s3,0x20
    80003d2c:	01ca5a13          	srli	s4,s4,0x1c
    80003d30:	fff00b13          	li	s6,-1
    80003d34:	0100006f          	j	80003d44 <__mem_alloc+0x7c>
    80003d38:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003d3c:	00852703          	lw	a4,8(a0)
    80003d40:	04977463          	bgeu	a4,s1,80003d88 <__mem_alloc+0xc0>
    80003d44:	00050793          	mv	a5,a0
    80003d48:	fea698e3          	bne	a3,a0,80003d38 <__mem_alloc+0x70>
    80003d4c:	000a0513          	mv	a0,s4
    80003d50:	00000097          	auipc	ra,0x0
    80003d54:	1f0080e7          	jalr	496(ra) # 80003f40 <kvmincrease>
    80003d58:	00050793          	mv	a5,a0
    80003d5c:	01050513          	addi	a0,a0,16
    80003d60:	07678e63          	beq	a5,s6,80003ddc <__mem_alloc+0x114>
    80003d64:	0137a423          	sw	s3,8(a5)
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	e94080e7          	jalr	-364(ra) # 80003bfc <__mem_free>
    80003d70:	000ab783          	ld	a5,0(s5)
    80003d74:	06078463          	beqz	a5,80003ddc <__mem_alloc+0x114>
    80003d78:	0007b503          	ld	a0,0(a5)
    80003d7c:	00078693          	mv	a3,a5
    80003d80:	00852703          	lw	a4,8(a0)
    80003d84:	fc9760e3          	bltu	a4,s1,80003d44 <__mem_alloc+0x7c>
    80003d88:	08e48263          	beq	s1,a4,80003e0c <__mem_alloc+0x144>
    80003d8c:	4127073b          	subw	a4,a4,s2
    80003d90:	02071693          	slli	a3,a4,0x20
    80003d94:	01c6d693          	srli	a3,a3,0x1c
    80003d98:	00e52423          	sw	a4,8(a0)
    80003d9c:	00d50533          	add	a0,a0,a3
    80003da0:	01252423          	sw	s2,8(a0)
    80003da4:	00fab023          	sd	a5,0(s5)
    80003da8:	01050513          	addi	a0,a0,16
    80003dac:	03813083          	ld	ra,56(sp)
    80003db0:	03013403          	ld	s0,48(sp)
    80003db4:	02813483          	ld	s1,40(sp)
    80003db8:	02013903          	ld	s2,32(sp)
    80003dbc:	01813983          	ld	s3,24(sp)
    80003dc0:	01013a03          	ld	s4,16(sp)
    80003dc4:	00813a83          	ld	s5,8(sp)
    80003dc8:	00013b03          	ld	s6,0(sp)
    80003dcc:	04010113          	addi	sp,sp,64
    80003dd0:	00008067          	ret
    80003dd4:	000019b7          	lui	s3,0x1
    80003dd8:	f51ff06f          	j	80003d28 <__mem_alloc+0x60>
    80003ddc:	00000513          	li	a0,0
    80003de0:	fcdff06f          	j	80003dac <__mem_alloc+0xe4>
    80003de4:	00002797          	auipc	a5,0x2
    80003de8:	b9c78793          	addi	a5,a5,-1124 # 80005980 <base>
    80003dec:	00078513          	mv	a0,a5
    80003df0:	00fab023          	sd	a5,0(s5)
    80003df4:	00f7b023          	sd	a5,0(a5)
    80003df8:	00000713          	li	a4,0
    80003dfc:	00002797          	auipc	a5,0x2
    80003e00:	b807a623          	sw	zero,-1140(a5) # 80005988 <base+0x8>
    80003e04:	00050693          	mv	a3,a0
    80003e08:	f11ff06f          	j	80003d18 <__mem_alloc+0x50>
    80003e0c:	00053703          	ld	a4,0(a0)
    80003e10:	00e7b023          	sd	a4,0(a5)
    80003e14:	f91ff06f          	j	80003da4 <__mem_alloc+0xdc>
    80003e18:	00068793          	mv	a5,a3
    80003e1c:	f6dff06f          	j	80003d88 <__mem_alloc+0xc0>

0000000080003e20 <__putc>:
    80003e20:	fe010113          	addi	sp,sp,-32
    80003e24:	00813823          	sd	s0,16(sp)
    80003e28:	00113c23          	sd	ra,24(sp)
    80003e2c:	02010413          	addi	s0,sp,32
    80003e30:	00050793          	mv	a5,a0
    80003e34:	fef40593          	addi	a1,s0,-17
    80003e38:	00100613          	li	a2,1
    80003e3c:	00000513          	li	a0,0
    80003e40:	fef407a3          	sb	a5,-17(s0)
    80003e44:	fffff097          	auipc	ra,0xfffff
    80003e48:	918080e7          	jalr	-1768(ra) # 8000275c <console_write>
    80003e4c:	01813083          	ld	ra,24(sp)
    80003e50:	01013403          	ld	s0,16(sp)
    80003e54:	02010113          	addi	sp,sp,32
    80003e58:	00008067          	ret

0000000080003e5c <__getc>:
    80003e5c:	fe010113          	addi	sp,sp,-32
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00113c23          	sd	ra,24(sp)
    80003e68:	02010413          	addi	s0,sp,32
    80003e6c:	fe840593          	addi	a1,s0,-24
    80003e70:	00100613          	li	a2,1
    80003e74:	00000513          	li	a0,0
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	8c4080e7          	jalr	-1852(ra) # 8000273c <console_read>
    80003e80:	fe844503          	lbu	a0,-24(s0)
    80003e84:	01813083          	ld	ra,24(sp)
    80003e88:	01013403          	ld	s0,16(sp)
    80003e8c:	02010113          	addi	sp,sp,32
    80003e90:	00008067          	ret

0000000080003e94 <console_handler>:
    80003e94:	fe010113          	addi	sp,sp,-32
    80003e98:	00813823          	sd	s0,16(sp)
    80003e9c:	00113c23          	sd	ra,24(sp)
    80003ea0:	00913423          	sd	s1,8(sp)
    80003ea4:	02010413          	addi	s0,sp,32
    80003ea8:	14202773          	csrr	a4,scause
    80003eac:	100027f3          	csrr	a5,sstatus
    80003eb0:	0027f793          	andi	a5,a5,2
    80003eb4:	06079e63          	bnez	a5,80003f30 <console_handler+0x9c>
    80003eb8:	00074c63          	bltz	a4,80003ed0 <console_handler+0x3c>
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	02010113          	addi	sp,sp,32
    80003ecc:	00008067          	ret
    80003ed0:	0ff77713          	andi	a4,a4,255
    80003ed4:	00900793          	li	a5,9
    80003ed8:	fef712e3          	bne	a4,a5,80003ebc <console_handler+0x28>
    80003edc:	ffffe097          	auipc	ra,0xffffe
    80003ee0:	4b8080e7          	jalr	1208(ra) # 80002394 <plic_claim>
    80003ee4:	00a00793          	li	a5,10
    80003ee8:	00050493          	mv	s1,a0
    80003eec:	02f50c63          	beq	a0,a5,80003f24 <console_handler+0x90>
    80003ef0:	fc0506e3          	beqz	a0,80003ebc <console_handler+0x28>
    80003ef4:	00050593          	mv	a1,a0
    80003ef8:	00000517          	auipc	a0,0x0
    80003efc:	28050513          	addi	a0,a0,640 # 80004178 <_ZZ12printIntegermE6digits+0xe0>
    80003f00:	fffff097          	auipc	ra,0xfffff
    80003f04:	8d8080e7          	jalr	-1832(ra) # 800027d8 <__printf>
    80003f08:	01013403          	ld	s0,16(sp)
    80003f0c:	01813083          	ld	ra,24(sp)
    80003f10:	00048513          	mv	a0,s1
    80003f14:	00813483          	ld	s1,8(sp)
    80003f18:	02010113          	addi	sp,sp,32
    80003f1c:	ffffe317          	auipc	t1,0xffffe
    80003f20:	4b030067          	jr	1200(t1) # 800023cc <plic_complete>
    80003f24:	fffff097          	auipc	ra,0xfffff
    80003f28:	1bc080e7          	jalr	444(ra) # 800030e0 <uartintr>
    80003f2c:	fddff06f          	j	80003f08 <console_handler+0x74>
    80003f30:	00000517          	auipc	a0,0x0
    80003f34:	34850513          	addi	a0,a0,840 # 80004278 <digits+0x78>
    80003f38:	fffff097          	auipc	ra,0xfffff
    80003f3c:	844080e7          	jalr	-1980(ra) # 8000277c <panic>

0000000080003f40 <kvmincrease>:
    80003f40:	fe010113          	addi	sp,sp,-32
    80003f44:	01213023          	sd	s2,0(sp)
    80003f48:	00001937          	lui	s2,0x1
    80003f4c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003f50:	00813823          	sd	s0,16(sp)
    80003f54:	00113c23          	sd	ra,24(sp)
    80003f58:	00913423          	sd	s1,8(sp)
    80003f5c:	02010413          	addi	s0,sp,32
    80003f60:	01250933          	add	s2,a0,s2
    80003f64:	00c95913          	srli	s2,s2,0xc
    80003f68:	02090863          	beqz	s2,80003f98 <kvmincrease+0x58>
    80003f6c:	00000493          	li	s1,0
    80003f70:	00148493          	addi	s1,s1,1
    80003f74:	fffff097          	auipc	ra,0xfffff
    80003f78:	4bc080e7          	jalr	1212(ra) # 80003430 <kalloc>
    80003f7c:	fe991ae3          	bne	s2,s1,80003f70 <kvmincrease+0x30>
    80003f80:	01813083          	ld	ra,24(sp)
    80003f84:	01013403          	ld	s0,16(sp)
    80003f88:	00813483          	ld	s1,8(sp)
    80003f8c:	00013903          	ld	s2,0(sp)
    80003f90:	02010113          	addi	sp,sp,32
    80003f94:	00008067          	ret
    80003f98:	01813083          	ld	ra,24(sp)
    80003f9c:	01013403          	ld	s0,16(sp)
    80003fa0:	00813483          	ld	s1,8(sp)
    80003fa4:	00013903          	ld	s2,0(sp)
    80003fa8:	00000513          	li	a0,0
    80003fac:	02010113          	addi	sp,sp,32
    80003fb0:	00008067          	ret
	...
