var k: Int = 9
var word: String = "Next"

var array = [Int]() // Формирование массива из нечетных чисел в диапазоне от 10 до 50
for i in 10...50 {
  if i % 2 == 1 {
    array.append(i)
  }
}
//print(array) // Проверка

for num: Int in array {
  if (num + k) % 2 == 0{
    k += 1
  } else {
    print(word)
    break
  }
}
//print(k) // Проверка