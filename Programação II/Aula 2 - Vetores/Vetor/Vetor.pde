void setup() {
    size(500, 500);

    int[] vec;
    vec = new int[10]; 

    vec[0] = 2; 
    vec[9] = 3;

    int[] aux;
    aux = new int[100];

    for(int i=0; i<10; i++){
        aux[i] = vec[i];
    }

    vec = aux;

    for(int i=10; i<100; i++){
        vec[i] = i;
    }

    for(int i=0; i<100; i++){
        print(vec[i]);
    }
}
