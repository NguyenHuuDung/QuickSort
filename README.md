# QuickSort

## 1.Mở đầu

** Đây là một ví dụ về QuickSort nhằm giải thích để hiểu rõ hơn về thuật toán này ( được làm bằng ngôn ngữ swift ) **
* Ví dụ : Cho một list các phần tử [0,1,4,8,2,6,4,9,10,4,1,2,1]. Hãy sắp xếp các phần tử trong list theo thứ tự tăng dần (bằng thuật toán QuickSort) 

#### ý tưởng:

 <ul> Tìm key ,key ở đây được cho là phần tử chính giữa của list .
 Sau khi tìm được key ta tiến hành so sánh key với các phần tử khác trong list, ta chia list đó thành 3 phần (mỗi phần là một list) <li> phần thứ nhất : đây là phần tập hợp của các phần tử nhỏ hơn key </li>
      <li> phần thư hai : đây là phần tập hợp của các phần tử bằng key </li>
      <li> phần thứ ba : đây là phần tập hợp của các phần tử lớn hơn key </li> 
Tiếp tục tìm key với từng phần một để sau đó cho ra được kết quả như mong đợi là sắp xếp list theo thứ tự tăng dần 
</ul> 

