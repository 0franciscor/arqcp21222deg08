int join_bits(int a, int b, int pos){      
    int maskB = 0;
    int maskA = 0;

    int tempA = a;
    int tempB = b;

    maskA = 1 << (pos + 1);
    maskA -= 1;

    for(int i = (pos+1); i < 32; i++){
        maskB = maskB + (1 << i);
    }

    int resultB = tempB & maskB;
    int resultA = tempA & maskA;

    int finalResult = resultA | resultB;

    return finalResult;
}