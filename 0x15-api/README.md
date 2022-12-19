# API

This project contains tasks for learning about how to consume RESTful APIs.

## Tasks To Complete

+ [x] 0. Gather data from an API<br/>_**[0-gather_data_from_an_API.py](0-gather_data_from_an_API.py)**_ contains a Python script that uses this [REST API](https://jsonplaceholder.typicode.com/), and for a given employee ID, returns information about his/her TODO list progress.
  + Requirements:
    + You must use `urllib` or `requests` module.
    + The script must accept an integer as a parameter, which is the employee ID.
    + The script must display on the standard output the employee TODO list progress in this exact format:
      + First line: `Employee EMPLOYEE_NAME is done with tasks(NUMBER_OF_DONE_TASKS/TOTAL_NUMBER_OF_TASKS):`
        + `EMPLOYEE_NAME`: name of the employee.
        + `NUMBER_OF_DONE_TASKS`: number of completed tasks.
        + `TOTAL_NUMBER_OF_TASKS`: total number of tasks, which is the sum of completed and non-completed tasks.
      + Second and N next lines display the title of completed tasks: `TASK_TITLE` (with 1 tabulation and 1 space before the `TASK_TITLE`).

+ [x] 1. Export to CSV<br/>_**[1-export_to_CSV.py](1-export_to_CSV.py)**_ contains a Python script that uses what was done in task #0 to export data in the CSV format.
  + Requirements:
    + Records all tasks that are owned by this employee.
    + Format must be: `"USER_ID","USERNAME","TASK_COMPLETED_STATUS","TASK_TITLE"`.
    + File name must be: `USER_ID.csv`.

+ [x] 2. Export to JSON<br/>_**[2-export_to_JSON.py](2-export_to_JSON.py)**_ contains a Python script that uses what was done in task #0 to export data in the JSON format.
  + Requirements:
    + Records all tasks that are owned by this employee.
    + Format must be: `{ "USER_ID": [{"task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS, "username": "USERNAME"}, {"task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS, "username": "USERNAME"}, ... ]}`.
    + File name must be: `USER_ID.json`.

+ [x] 3. Dictionary of list of dictionaries<br/>_**[3-dictionary_of_list_of_dictionaries.py](3-dictionary_of_list_of_dictionaries.py)**_ contains a Python script that uses what was done in task #0 to export data in the JSON format.
  + Requirements:
    + Records all tasks from all employees
    + Format must be: `{ "USER_ID": [ {"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, {"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, ... ], "USER_ID": [ {"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, {"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, ... ]}`.
    + File name must be: `todo_all_employees.json`.
