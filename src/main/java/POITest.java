import org.apache.poi.hwpf.extractor.WordExtractor;


import java.io.*;

public class POITest {
    public static void main(String[] args) {
        String src = "C:\\dev\\data\\test.doc";
        String text = null;

        try {
            File file = new File(src);
            InputStream is = new FileInputStream(file);

            WordExtractor wd = new WordExtractor(is);
            text = wd.getText();

            File wFile = new File("C:\\dev\\creationData\\test.txt");
            FileWriter fw = new FileWriter(wFile, true);

            fw.write(text);
            fw.flush();

            fw.close();
        }catch (FileNotFoundException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}