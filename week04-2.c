int maximumCount(int* nums, int numsSize) {
    int pos=0, neg=0;//�j��e��,���O0
    for(int i=0; i<numsSize; i++){
        if(nums[i]>0)pos++;//����
        if(nums[i]<0)neg++;//�t��
    }//�j�餤��,��s,�ק復

    //�j��᭱,�⥦���ӧ�
    if(pos>neg) return pos;//���Ƥ���h,����
    else return neg;//���M,�N�t��
}
