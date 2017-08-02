# QuickSort

## 1.Mở đầu

** Đây là một ví dụ về QuickSort nhằm giải thích để hiểu rõ hơn về thuật toán này ( được làm bằng ngôn ngữ swift ) **
* Ví dụ : Cho một list các phần tử [0,1,4,8,2,6,4,9,10,4,1,2,1]. Hãy sắp xếp các phần tử trong list theo thứ tự tăng dần (bằng thuật toán QuickSort) 

#### ý tưởng:

 <ul> Tìm key ,key ở đây được cho là phần tử chính giữa của list .
 Sau khi tìm được key ta tiến hành so sánh key với các phần tử khác trong list, ta chia list đó thành 3 phần (mỗi phần là một list) <li> phần thứ nhất : đây là phần tập hợp của các phần tử nhỏ hơn key </li><li> phần thứ hai : đây là phần tập hợp của các phần tử bằng key </li><li> phần thứ ba : đây là phần tập hợp của các phần tử lớn hơn key </li>.
Sau khi đã phân được 3 phần xong ta tiến hành ghép với nhau vào thành 1 list 
Tiếp tục tìm key với từng phần một để sau đó cho ra được kết quả như mong đợi là sắp xếp list theo thứ tự tăng dần 
</ul> 

## 2.Thực Hiện  

```sh 
  let list = [0,1,4,8,2,6,4,9,10,4,1,2,1]
  
    func quickSort1(a: [Int]) -> [Int] {
        guard a.count > 1 else { return a }
        
        let key = a[a.count/2]
        let less = a.filter { $0 < key }
        let equal = a.filter { $0 == key }
        let greater = a.filter { $0 > key }
        
        return quickSort1(a: less) + equal + quickSort1(a: greater)
    }
    
      print(quickSort1(a: list))
      
  ```

* Giải thích *

Tạo một list :   let list = [0,1,4,8,2,6,4,9,10,4,1,2,1] 
![img](http://imgur.com/KaVl9pb"img")
Trong hàm ta bắt đầu đi tìm key của list 

Đặt 1 biến key với key là phần tử ở chính giữa của list :

` let key = a[a.count/2] `

<img src="http://imgur.com/aIWDbby">

Ta tìm được phần tử key là số 4 ở vị trí chính giữa của list 

Sau khi tìm được key ta tạo ra 3 phần ( 3 list để chứa các phần tử nhỏ hơn , bằng và lớn hơn key) 

Phần nhỏ hơn  đặt tên là less 
` let less ` : <img src="http://imgur.com/N31xi9O">
Phần bằng đặt tên là equal 
` let equal ` :<img src="http://imgur.com/bGvzLeK">
Phần lớn hơn  đặt tên là greater 
` let greater ` :<img src="http://imgur.com/031Mj7P">
Tiếp tục tiến hành : ta so sánh key với từng phần tử trong list để tìm ra các phần less, equal và greater 
Bắt đầu với phần tử đầu tiên :

<img src="http://imgur.com/DAHs41x">
Ta thấy phần tử đầu tiên của list ở đây là số 0 tức là phần tử đầu tiên nhỏ hơn key
Ta tiến hành lưu phần tử này vào list less 
<img src="http://imgur.com/H9srpYP">
Tiếp tục đến phần tử thứ 2 :
<img src="http://imgur.com/YF3S8pu">
Ta thấy phần tử thứ 2 nhỏ hơn key => lưu nó vào list less 
<img src="http://imgur.com/c2UdigF">
Tiếp tục với phần tử số 3 :
<img src="http://imgur.com/69dpHIa">
À phần tử số 3 ta thấy rằng nó bằng với key vậy ta sẽ lưu nó vào list equal 
<img src="http://imgur.com/4mNIOOV">
Tiếp tục với phần tử số 4 :
<img src="http://imgur.com/rI2GJSR">
Phần tử này có giá trị lớn hơn key => cho nó vào list greater 
<img src="http://imgur.com/t4GI3uO">
.
.
.
Tiếp tục cứ như vậy cho đến hết các phần tử trong list ta tìm ra được list less , list equal , list greater 

<img src="http://imgur.com/ZbAnTMf">
<img src="http://imgur.com/YQzgTiM">
<img src="http://imgur.com/QgREP5m">

Nhưng hiện tại list less , list equal , list greater vẫn chưa sắp xếp vậy ta tiến hành đệ quy cho chúng theo như trên đã làm với list trùm => xong rồi in ra thôi , gọi ra nhé ` print(quickSort1(a: list)) ` 










