public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    

    public Cluster(int len, int x, int y)
    {
      //Tendril one = new Tendril(len, (Math.random() * 2/7 * Math.PI), x, y);
      //one.show();
      //Tendril two = new Tendril(len, (Math.random() * 4/7 * Math.PI), x, y);
      //two.show();
      //Tendril three = new Tendril(len, (Math.random() * 6/7 * Math.PI), x, y);
      //three.show();
      //Tendril four = new Tendril(len, (Math.random() * 8/7 * Math.PI), x, y);
      //four.show();
      //Tendril five = new Tendril(len, (Math.random() * 10/7 * Math.PI), x, y);
      //five.show();
      //Tendril six = new Tendril(len, (Math.random() * 12/7 * Math.PI), x, y);
      //six.show();
      //Tendril seven = new Tendril(len, (Math.random() * 14/7 * Math.PI), x, y);
      //seven.show();
      
      Tendril [ ] arr = new Tendril[NUM_STEMS];
      for(int i = 1; i < arr.length; i++) {
        arr[i] = new Tendril(len, (Math.random() * (i*2)/7 * Math.PI), x, y);
        arr[i].show();
      }
    }
}
