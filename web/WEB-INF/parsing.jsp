<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="org.apache.poi.hwpf.extractor.WordExtractor" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%
    String fullFile = request.getParameter("fullFile");
    String fileName = request.getParameter("fileName");
    String txtFile = fileName.replace(".doc", ".txt");

    String src = fullFile;
    String text = null;



    try {
        File file = new File(src);
        InputStream is = new FileInputStream(file);

        WordExtractor wd = new WordExtractor(is);
        text = wd.getText();

        File wFile = new File("/home/hw/tomcat_www/web/WEB-INF/creationData/" + txtFile);
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
%>
<audio src="" controls></audio>