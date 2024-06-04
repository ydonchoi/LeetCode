import pandas as pd

def calculate_special_bonus(employees: pd.DataFrame) -> pd.DataFrame:
    employees['bonus'] = employees.salary
    employees.loc[(employees.employee_id % 2 == 0) | (employees.name.str.contains('M')), 'bonus'] = 0
    employees.sort_values(by='employee_id', inplace=True)
    
    return employees[['employee_id', 'bonus']]