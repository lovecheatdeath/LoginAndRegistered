package com.jnshu.utils;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.*;

@Component
public class FileUpLoad {
    /**
     * 处理文件上传方法封装(单张图片)
     * @param imageFile
     * @param request
     * @return
     * @throws Exception
     */
    public static String fileUpLoad(MultipartFile imageFile,HttpServletRequest request) throws Exception{
        String imagePath = null;
        if(imageFile!=null&&!imageFile.isEmpty()){
            //用UUID给图片重命名
            String name= UUID.randomUUID().toString().replaceAll("-","");
            //获取文件拓展名
            String ext= FilenameUtils.getExtension(imageFile.getOriginalFilename());
            //获取项目根路径
            String url = request.getSession().getServletContext().getRealPath("/image");
            //检验文件夹是否存在
            isFolderExists(url);
            //以绝对路径保存重名命后的图片
            imageFile.transferTo(new File(url+"/"+name+"."+ext));
            //返回图片地址
            imagePath="image/"+name+"."+ext;

        }
        //返回文件名字供保存
        return imagePath;
    }
    public static boolean isFolderExists(String strFolder){
        File file = new File(strFolder);

        if (!file.exists())
        {
            if (file.mkdir())
            {
                return true;
            }
            else{
                return false;
            }
        }
        return true;
    }

    /**
     * 获取目录下所有文件(按时间排序)
     * @param path
     * @return
     */
    public static List<File> getFileSort(String path) {
        List<File> list = getFiles(path, new ArrayList<File>());
        if (list != null && list.size() > 0) {
            Collections.sort(list, new Comparator<File>() {
                public int compare(File file, File newFile) {
                    if (file.lastModified() < newFile.lastModified()) {//降序<;升序>
                        return 1;
                    } else if (file.lastModified() == newFile.lastModified()) {
                        return 0;
                    } else {
                        return -1;
                    }
                }
            });
        }
        return list;
    }
    /**
     *  获取目录下所有文件
     * @param realpath
     * @param files
     * @return
     */
    public static List<File> getFiles(String realpath, List<File> files) {
        File realFile = new File(realpath);
        if (realFile.isDirectory()) {
            File[] subfiles = realFile.listFiles();
            for (File file : subfiles) {
                if (file.isDirectory()) {
                    getFiles(file.getAbsolutePath(), files);
                } else {
                    files.add(file);
                }
            }
        }
        return files;
    }

}