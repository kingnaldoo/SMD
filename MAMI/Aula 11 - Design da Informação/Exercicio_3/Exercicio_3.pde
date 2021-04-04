void setup() {
    size(260, 200);
    for (int mes = 1; mes <= 12; mes++) {
        int vendas = int(random(11));
        int x = mes * 20;
        int y = 200 - vendas * 20;
        rect(x, y, 16, 200);
        println("Mes: " + mes + " / Vendas: " + vendas);
    }
}