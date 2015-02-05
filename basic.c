//
//  basic.c
//  
//
//  Created by Ethan on 15/2/3.
//
//

#include "basic.h"

main(){
    int a[];
    a[] = {1,2,3,4};
    printArray(a, 4)
    
    
    
    return 0;
}

printArray(int *a, size){
    for (int i =0; i < size; i++) {
        printf("%6d\n");
    }
}