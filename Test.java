import java.util.HashMap;
import java.util.Iterator;
import java.util.Set; 
import java.util.Map.Entry;

public class Test {
 public static void main(String[] args) {
  	HashMap<String, String> map = new HashMap<String, String>();
	map.put("name1", "Andy");
	map.put("city1","Shanghai");	
	map.put("name2","Annie");
	map.put("city2","Beijing");
	 map.put("name3","Anna");
	 map.put("city3","Nanjing");
	 map.put("name4","Angela");

	Set<Entry<String, String>> sets = map.entrySet();  
        for(Entry<String, String> entry : sets) {  
            System.out.print(entry.getKey() + ", ");  
            System.out.println(entry.getValue());  
        }  
}
}
