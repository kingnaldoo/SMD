void setup() {
    size(260, 200);
    for (int mes = 1; mes <= 12; mes++) {
        int vendas = int(random(11));
        int x = mes * 20;
        int y = vendas * 20;
        ellipse(x, y, 10, 10);
        println("Mes: " + mes + " / Vendas: " + vendas);
    }
}