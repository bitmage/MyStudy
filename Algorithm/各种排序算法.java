package iot.mike.othertest.somethingelse;

import java.util.Random;

public class 各种排序算法 {
	public static void main(String[] args) {
	}
	
	/**
	 * 进行归并排序,从小到大。
	 * @param nums 排序数组
	 * @param i 起始地址
	 * @param j 结束地址
	 */
	public static void mergesort(int[] nums, int i, int j) {
		if (j - i == 0) {
			return;
		}
		
		if (j - i == 1) {
			if (nums[i] >= nums[j]) {
				int temp = nums[j];
				nums[j] = nums[i];
				nums[i] = temp;
				return;
			}else {
				return;
			}
		}
		
		if (j - i >= 2) {
			int m = (i + j)/2;
			mergesort(nums, i, m);
			mergesort(nums, m + 1, j);
			
			int[] nums_t = new int[j - i + 1];
			int x = i, y = m + 1;
			for (int k = 0; k < nums_t.length; k++) {
				if (nums[x] > nums[y]) {
					nums_t[k] = nums[y];
					y++;
					if (y == j + 1) {
						for (int k2 = x; k2 <= m; k2++) {
							k++;
							nums_t[k] = nums[k2];
						}
						break;
					}
				}else {
					nums_t[k] = nums[x];
					x++;
					if (x == m + 1) {
						for (int k2 = y; k2 <= j; k2++) {
							k++;
							nums_t[k] = nums[k2];
						}
						break;
					}
				}
			}
			for (int k = 0; k < nums_t.length; k++) {
				nums[i] = nums_t[k];
				i++;
			}
			return;
		}
	}

	/**
	 * 插入排序算法
	 */
	public static void insert_sort(int nums[]) {
	    for (int i = 1; i < nums.length; i++) {
	        for (int j = 0; j < i; j++) {
	            if (nums[j] > nums[i]) {//J为前的数,I为选中的数
	                int temp = nums[i];
	                for (int k = i; k > j; k--) {
	                    nums[k] = nums[k - 1];
	                }
	                nums[j] = temp;
	            }
	        }
	    }
	}

	/**
	 * 冒泡排序
	 */
	public static void bubble_sort(int nums[]) {
        /*
        function bubblesort (A : list[0..n-1]) {
            var int i, j;
            for i from n-1 downto 0 {
                for j from 0 to i - 1 { 
                    if (A[j] > A[j+1])
                        swap(A[j], A[j+1])
                }
            }
        }*/
        for (int i = nums.length - 1; i > 0 ; i--) {
            for (int j = 0; j <= i-1; j++) {
                if (nums[j] > nums[j+1]) {
                    nums[j] = nums[j+1]^nums[j];
                    nums[j+1] = nums[j]^nums[j+1];
                    nums[j] = nums[j]^nums[j+1];
                }
            }
        }
    }
	
	/**
	 * 选择排序
	 */
	public static void select_sort(int nums[]) {
	    for (int i = 0; i < nums.length - 1; i++) {
	        for (int j = i+1; j < nums.length; j++) {
	            if (nums[i] > nums[j]) {
	                nums[i] = nums[i]^nums[j];
	                nums[j] = nums[i]^nums[j];
	                nums[i] = nums[i]^nums[j];
	            }
	        }
	    }
	}
}
