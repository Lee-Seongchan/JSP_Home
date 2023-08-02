package basic;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Ran {

	public static void main(String[] args) {
		
		List<Integer> lotto = new ArrayList<>();
		
		while(lotto.size()<6){
			
			int rn = (int)(Math.random()*45)+1;
			if(!lotto.contains(rn)){
				lotto.add(rn);
			}else{
				
			}
			Collections.sort(lotto);
			
		}
		
		for(int num : lotto) {
			System.out.println(num);
		}
	}
}
