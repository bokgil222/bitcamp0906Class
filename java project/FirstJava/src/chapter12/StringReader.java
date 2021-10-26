package chapter12;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class StringReader {

	public static void main(String[] args) throws IOException {
		
		BufferedReader in = new BufferedReader(new FileReader("String.txt"));

		// 한 라인의 문자열을 받을 변수
		String str;
		
		while(true) {
			
			str = in.readLine();
			
			if(str == null) {
				break;   // 반복문 탈출
			}
			System.out.println(str);
		}	
		in.close();
	}
}