//
// Created by os on 10/18/22.
//

#include "../h/CCB.hpp"
#include "../h/scheduler.hpp"

extern "C" void pushRegisters();
extern "C" void popRegisters();

CCB *CCB::running = nullptr;

CCB *CCB::createCorutine(Body body) {

    return new CCB(body);
}

void CCB::yield() {
    pushRegisters();

    CCB::dispatch();

    popRegisters();
}

void CCB::dispatch(){
    CCB *old = running;
    if(!old->isFinished()){
        Scheduler::put(old);
    }
    running = Scheduler::get();

    CCB::contextSwitch(&old->context, &running->context);

}