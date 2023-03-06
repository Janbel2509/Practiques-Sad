import java.io.*;

public class TestReadLine {
  public static void main(String[] args) {
  BufferedReader in = new EditableBufferedReader(
    new InputStreamReader(System.in));
  String str = null;
  try {
    str = in.readLine();
  } catch (IOException e) {}
  System.out.println("\nline is: " + str);
}
}