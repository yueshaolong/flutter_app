void main(){
    int i = 10;
//    print(i);

    List<int> n = new List();
    n.add(1);
    n.add(100);
    n.add(19);
//    print(n[1]);

    //冒泡排序
    List<int> arr = [5,78,-65,1,-4,35,176,0,16];
    int temp;
    for(int i = 0; i < arr.length - 1; i++){
        for(int j = 0; j < arr.length - 1 - i; j++){
            if(arr[j] > arr[j+1]){
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
    print(arr);
    /*//选择排序
    List<int> arr = [5,78,65,1,4,35,76,0,16];
    for (int i = 0; i < arr.length - 1; i++) {
        int minIndex = i; // 用来记录最小值的索引位置，默认值为i
        for (int j = i + 1; j < arr.length; j++) {
            if (arr[j] < arr[minIndex]) {
                minIndex = j; // 遍历 i+1~length 的值，找到其中最小值的位置
            }
        }
        // 交换当前索引 i 和最小值索引 minIndex 两处的值
        if (i != minIndex) {
            int temp = arr[i];
            arr[i] = arr[minIndex];
            arr[minIndex] = temp;
        }
        // 执行完一次循环，当前索引 i 处的值为最小值，直到循环结束即可完成排序
    }
    print(arr);*/
}