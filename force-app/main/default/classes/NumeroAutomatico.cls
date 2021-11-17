public class NumeroAutomatico 
{
    @invocableMethod
    public static List<Integer> gerarNumero()
    {
        return new List<Integer>{Integer.valueOf(Math.random() * 10)};
    }
}