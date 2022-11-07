//
// Created by os on 11/4/22.
//

#ifndef PROJECT_BASE__THREAD_H
#define PROJECT_BASE__THREAD_H


class _thread {
public:
    int thread_create (_thread** handle, void(*start_routine)(void*), void* arg);

};


#endif //PROJECT_BASE__THREAD_H
