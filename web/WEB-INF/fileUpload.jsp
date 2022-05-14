<%@page contentType="text/html; charset=EUC-KR" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%
    //String saveFolder = "파일경로";
    String saveFolder = application.getRealPath("/filestorage") ;
    out.println(saveFolder + "<br>");
    String encType = "EUC-KR";
    int maxSize = 5 * 1024 * 1024;
    try {
        MultipartRequest multi = null;
        multi = new MultipartRequest(request, saveFolder, maxSize, encType, new DefaultFileRenamePolicy());

        String fileName = multi.getFilesystemName("uploadFile");
        String original = multi.getOriginalFileName("uploadFile");
        String type = multi.getContentType("uploadFile");
        File f = multi.getFile("uploadFile");

        out.println("저장된 파일 이름 : " + fileName + "<br/>");
        out.println("실제 파일 이름 : " + original + "<br/>");
        out.println("파일 타입 : " + type + "<br/>");

        String rawFile = saveFolder +"/"+ fileName;

        if (f != null) {
            out.println("크기 : " + f.length()+"바이트");
            out.println("<br/>");
        }
        %>
        <button onclick=location.href='parsing.jsp?fullFile=<% out.print(rawFile); %>&fileName=<% out.print(fileName); %>'>확인</button>
    <%
    } catch (IOException ioe) {
        System.out.println(ioe);
    } catch (Exception ex) {
        System.out.println(ex);
    }

    %>

