<%@page contentType="text/html; charset=EUC-KR" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%
    //String saveFolder = "���ϰ��";
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

        out.println("����� ���� �̸� : " + fileName + "<br/>");
        out.println("���� ���� �̸� : " + original + "<br/>");
        out.println("���� Ÿ�� : " + type + "<br/>");

        String rawFile = saveFolder +"/"+ fileName;

        if (f != null) {
            out.println("ũ�� : " + f.length()+"����Ʈ");
            out.println("<br/>");
        }
        %>
        <button onclick=location.href='parsing.jsp?fullFile=<% out.print(rawFile); %>&fileName=<% out.print(fileName); %>'>Ȯ��</button>
    <%
    } catch (IOException ioe) {
        System.out.println(ioe);
    } catch (Exception ex) {
        System.out.println(ex);
    }

    %>

