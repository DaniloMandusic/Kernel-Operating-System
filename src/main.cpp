#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/MemoryAllocator.h"
#include "../h/CCB.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"

//typedef uint64 size_t;

void main(){
    __putc('o');
    __putc('s');
    __putc('1');
    __putc('\n');

//    size_t size = sizeof (char) * 3;
//    //char* array = (char*) mem_alloc(size);
//    char* array = mem_alloc(size);
//    array[0] = '1';
//    array[1] = '2';
//    array[2] = '3';
//
//    __putc(array[0]);
//
//    __putc('\n');
//
//    __putc(array[1]);
//
//    __putc('\n');
//
//    __putc(array[4]);
//
//    __putc('\n');
//
//    __putc(array[2]);
//    __putc('\n');
//
//    mem_free(array);
//
//    array = mem_alloc(size);
//
//    __putc(array[0]);
//    __putc('\n');
//
//    __putc(array[1]);
//    __putc('\n');
//
//    __putc(array[4]);
//    __putc('\n');
//
//    __putc(array[2]);
//    __putc('\n');
    CCB *coroutines[3];

    coroutines[0] = CCB::createCorutine(nullptr);
    CCB::running = coroutines[0];

    coroutines[1] = CCB::createCorutine(workerBodyA);
    printString("CorA created\n");

    coroutines[2] = CCB::createCorutine(workerBodyB);
    printString("CorB created\n");

    while(!(coroutines[1]->isFinished() && coroutines[2]->isFinished())){
        CCB::yield();
    }

    for(auto &coroutine: coroutines){
        delete coroutine;
    }

    printString("Finished\n");

}