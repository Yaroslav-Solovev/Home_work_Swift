// sum — первоначальная сумма вклада
// rate — годовая ставка
// date — количество дней вклада
// dayInYear — количество дней в году — 365 или 366
// ((sum * rate * date)/dayInYear)/100 — выплаченные проценты
func deposit(sum: Double, rate: Double, date: Double, dayInYear: Double) -> Double{
    return sum + ((sum * rate * date)/dayInYear)/100
}

print(deposit(sum: 100, rate: 5, date: 365, dayInYear: 365))