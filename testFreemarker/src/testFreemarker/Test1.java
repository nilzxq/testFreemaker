package testFreemarker;

import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;



/**
 * @author nilzxq
 * @date：2017年2月23日 上午10:24:48
 * @version 1.0
 */
public class Test1 {
	public static void main(String[] args) throws TemplateException, IOException {
         //创建Freemarker配置实例
		Configuration cfg=new Configuration();
		cfg.setDirectoryForTemplateLoading(new File("templates"));
		//创建数据模型
		Map root=new HashMap<>();
		root.put("user", "老高");
		root.put("random",new Random().nextInt(100));
		
		List list = new ArrayList();
		list.add(new Address("中国","北京"));
		list.add(new Address("中国","上海"));
		list.add(new Address("美国","纽约"));
		root.put("lst", list);
		root.put("htm2", "<b>粗体</b>");
		root.put("date1", new Date());
		//加载模板文件
		Template t1= cfg.getTemplate("a.ftl");
		//显示生成的数据
		Writer out=new OutputStreamWriter(System.out);
		t1.process(root,out);
		out.flush();
		out.close();
	}
}
