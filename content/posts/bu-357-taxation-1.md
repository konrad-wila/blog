---
title: "BU 357 Taxation 1"
date: 2023-05-09T15:01:54-04:00
draft: false
tags: [
    "university",
]
---

## Structure of the Act

- DivisionA - liability
- Division B - computation of income
  - subdiv. a - employment income
  - subdiv. b - business and property income
  - subdiv. c - capital gains/losses
  - subdiv. d - other income
  - subdiv. e - other deductions
- Division C - taxable income
- Division D - non-residents
- Division E - tax payable

## Liability

All persons (individuals and corporations) who were a resident of Canada \[sec 2(1)] at any time in the year owe taxes on taxable income.

Taxable income\[Sec 2(2)] is the taxpayer's income for the year plus additions and minus the deductions permitted by Division C.

### Residency: Individuals

- Full-time resident
  - Taxed on _worldwide income_ for the whole year
  - Common law
    - Continuing state of relationship / ties with Canada
      - dwelling, family, personal properties and social ties
  - Deemed
    - applies to foreigners who sojourned (temp. stay) for 183 days or more \[sec 250(1)(a)]
- Part-time resident
  - Clean break or fresh start
  - Taxed on worldwide income for the part of the year while resident; taxed as non-resident for the part of the year while non-resident
  - fresh start: immigrant who moved to Canada
  - clean break: leaving the country for work
    - more ties given up, more likely to get clean break

### Non-resident \[sec 2(3)]

Applies to both individuals and corporations.

- taxed on income from being employed in Canada
- carrying business in Canada
  - permanent place
- disposing of a taxable canadian property, at any time in the year or a previous year
- interest income from canadian bonds do not count

### Residency: Corporations

- Deemed resident
  - incorporated in Canada after April 26, 1965 \[sec 250(4)(a)]
  - HQ or control in Canada
  - Incorporated before April 26, 1965 and had carrying business in Canada
- Non-resident

### Exercises

- Sara lives in Windsor, Ontario with her family. She commutes daily to Detroit, Michigan, where she is employed by Auto Inc. She works 10:00am - 5:00pm, five days a week.
  - Full-time common law due to continuing state of relationship in Canada
  - Taxes paid to foreign governments is a tax credit towards Canadian tax payable
  - vice-versa would be non-resident

- Larry, a US resident, is a travelling salesman. In the
year, he stayed in Canada for business purposes from
March 1st to September 15th. His house, his family
and his supplies are all in the US.
  - Probably fulltime deemed

- Zoe is married and has two sons. Her question is that,
“My husband just accepted a one-year job in the US starting in
July 2023. The boys and I will not be moving with him, and he
plans to return to Canada when the year is up. Can you explain
to me some of the factors that will impact the determination of
his residency status for Canadian tax purposes? I would also
like to know how the income he earned in the US will be taxed
in Canada”.
  - coming back to Canada in a year
  - family ties
  - therefore there is enough continuing ties for full time common law

- Mining Ltd. was incorporated in Canada in 2001. All income
is derived from sources originating in Mexico. All the directors
reside permanently in Mexico, where they make the major
decisions.
  - deemed resident since it is incorporated in Canada after April 26, 1965.

## Employment Income

Court determines whether individual is an employee or an independent contractor.

- Economic reality test
  - control
    - who gives instructions on how to do the work
  - ownership of tools
  - chance of profit/risk of loss

### Wiebe Door Services Ltd. v. M.N.R

- Workers have their own trucks and tools
- Work is guaranteed for one year
- Contractors can refuse to work
- Workers are responsible for defects
- Some specialized equipment exists

### Structure

sec 5 basic inclusion + sec 6 beefits + allowance
+ sec 7 stock option benefits - sec 8 deductions allowed.

sec 5: salary, wages, and other remuneration including gratuities received.

Payroll example

```text
Salary gross                                118,000
  Payroll deductions:
    Income tax withheld         17,000  # not deductive
    Registered Pension plan  2,000  # deductible
    CPP                                   3,500 # not deductible but credit
    EI                                          953 # not deductible but credit
    Union dues                            500 # deductible
Net salary                                        84,047
```

### Employee Benefits \[sec 6(1)(a)]

- include all benefits except
  - retirement plans
  - insurances
  - social club membership that benefit employer
    - workshops
    - training
    - employer paid financial counselling is included
    - non-cash holiday gifts under $500 is excluded
    - computers that benefit the employer

Examples: fitness memberships to reduce overtime stress, tuition costs,
gift certificates with value from $100 - $500.

not taxable, taxable, taxable.

### Housing loss/cost benefits

Employer paid for the loss of employee's home sale

- Eligible housing loss
  - work location moved and you have to move for work
  - at least 40km closer
- One-half of any amount above $15,000 is a taxable benefit

### Automobiles

Taxable benefit is equal to

1. Standby charge benefit \[sec 6(1)(e),6(2)]
    - automobile provided by employer-owned
      - A = B if primarily non-work (>= 50%) use else less of personal km and B
      - B = 1,667 x number of months available
      - C = Cost of the car including sales tax
      - D = months available in the year
      <img class=equation-tall src="https://latex.codecogs.com/svg.image?\frac{A}{B}\times0.02\times{C}\times{D}">

    - leased
      <img class=equation-tall src="https://latex.codecogs.com/svg.image?\frac{A}{B}\times\frac{2}{3}\times{E-F}">
2. Plus operating cost benefit
    - employer pays operating cost

    <img class=equation-tall src="https://latex.codecogs.com/svg.image?0.29\times{personal\_km}">

    OR

    half of standby charge if primarily for work.
3. Subtract reimbursed amount

Example

```txt
Mitch’s employer provides him an employer-owned car throughout the
year.
Capital cost of the car (include sales taxes). . . . .. . . . . . $38,772
Capital cost allowance claimed by the employer . . . . . . 6,375
Operating costs paid by the employer . . . . . . . . . . . . . . 4,250
Kilometres (as calculated from Mitch’s log):
Employment. . . 8,000km Personal . . . 10,000km
Amount reimbursed by Mitch to the company for the personal use at 14
cents per km = 10,000km x 14 cents . . . . . . $ 1,400
Discuss the benefits that are included in Mitch’s employment income.
What if Mitch drove 10,000km for work and 8,000km for personal?
```

<details><summary>Answer</summary>

```py
# Standby charge
>>> C = 38772
>>> D = 12
>>> benefit = 0.02 * C * D
>>> 9305.28
# Operating cost benefit
>>> benefit / 2
4652.64
>>> benefit / 2 - 1400
3252.64
>>> op_benefit = 0.29 * 10000
>>> op_benefit
2900.0
>>> benefit + op_benefit - 1400
>>> 10805

# 10km for work instead
>>> B = 1667 * 12
>>> A = min(B, 8000)
>>> benefit = A/B * (0.02 * C * D)
>>> benefit
3721.37
>>> op_benefit = min(0.5 * benefit, 0.29 * 8000)
>>> op_benefit
1860.68
>>> benefit + op_benefit - 0.14 * 8000
>>> 4462.05
```

</details>

### Employee loans \[sec 6(9),80.4]

- low-interest or interest free loans provided by employers are taxable benefits
- taxable benefit is `principal amounts * (prescribed rate - interest rate paid)`
- prescribed rate is the annual rate of the 3-month T-bill which is disclosed every quarter. Use the average of the quarters that the loan was taken from.

For home loans:

(i) the prescribed rate in each quarter the loan
was outstanding
(ii) The prescribed rate in effect at the time the
loan was granted

Example

```txt
Mr. Maple borrowed $30,000 from his
employer on Feb. 1 at an annual rate of 1%, to
purchase common shares of a public firm.
Interest was payable monthly. The prescribed
rates are: Q1 3%, Q2 2%, Q3 3%, Q4 4%
Calculate the taxable benefit of the loan.
• What if the loan was used to buy a home?
```

<details><summary>Answer</summary>

```py
>>> q1 = 30000 * (0.03 - 0.01) / 12 * 2
>>> avg_i = (0.02 + 0.03 + 0.04) / 3
>>> q3_4 = 30000 * (avg_i - 0.01) / 12 * 9
>>> q1 + q3_4
>>> 550
```

</details>