// Need to calculate Electricity bill for every two months based on below tariffs.  
// For domestic
// For first 100 units Rs 0/unit
// For next 100 units Rs 3.50/unit
// For next 300 units Rs 4.60/unit
// For unit above 500  Rs 6.60/unit
// Fixed charges for two months Rs.50/service

// For Commercial
// For first 100 units Rs 5.00/unit
// Consumption above 100 units bi monthly 8.05/unit
// Fixed charges for two months Rs.290/service

// Get random numbers as daily consumable units. For domestic random number generation should be in between 1 - 10. For commercial 10 - 100

import Foundation
let bill = "commercial"
var amount:Double = 0
var total:Double = 0
var perDayUnitFortwoMonth : [Int] = []
if bill == "Domestic"
{
let surchargeForDomestic:Double = 50
for eachday in 0..<60
{
let perDayUnit = Int.random(in:1...10)
perDayUnitFortwoMonth.append(perDayUnit)
}
let units  = perDayUnitFortwoMonth.reduce(0,+)
print("The unit for two month is", units)
if(units <= 100)
{
    amount = Double(units * 0)
    total = Double(amount + surchargeForDomestic)
    print("The Electricity bill for domestic is",total)
}
else if(units >= 101 && units <= 200 )
{
    amount = Double(units * 0) + (Double(units - 100) * 3.50)
    total = Double(amount + surchargeForDomestic)
    print("The Electricity bill for domestic is",total)
}
else if(units >= 201 && units <= 500)
{
    amount =  Double(units * 0) + (Double(units - 100) * 3.50) + (Double(units - 200) * 4.60)
    total = Double(amount + surchargeForDomestic)
    print("The Electricity bill is",total)
  
}
else
{
    amount = Double(units) * 6.60
    total = Double(amount + surchargeForDomestic)
    print("The Electricity bill is",total)
}
}
else 
{
let surchargeForCommercial:Double  = 290
for eachday in 0..<60
{
let perDayUnit = Int.random(in:10...100)
perDayUnitFortwoMonth.append(perDayUnit)
}
let units  = perDayUnitFortwoMonth.reduce(0,+)
print("The unit is", units)
  
if(units >= 100)
{
    amount = Double(units) * 5.00
    total = Double(amount + surchargeForCommercial)
    print("The Electricity bill for Commercial is",total)
}
else
{
    amount =  Double(units) * 5.00 + Double(units - 100) * 8.05
    total = Double(amount + surchargeForCommercial)
    print("The Electricity bill for Commercial is",total)

}
}
