# Robot Framework Complex Keyword Assignments

ให้น้องเขียนตัวอย่าง วิธีใช้ keyword พวกนี้ โดยให้อ่าน Documentation แล้ว เขียนเทสเคส ไปเรียก keyword พวกนี้
เนื่องจาก assignment นี้มุ่งเน้นให้น้องฝึกอ่าน Documentation, ดังนั้น มันจะรันไม่ได้จริง และเทสเคสที่น้องทำ มันจะเฟล ไม่ต้องกังวล
พี่แค่อยากรู้ว่า น้องจะเรียกใช้งาน keyword พวกนี้ยังไง จากการอ่าน documentation

## ตัวอย่าง
**Keywords** `Add Two Numbers`

**Documentation**
This keyword adds two numbers and returns the result.
**Arguments**
- `${first_number}`: The first number to add.
- `${second_number}`: The second number to add.

สิ่งที่พี่จะทำส่งมาคือ
```
*** test cases ***
Example Assignment
  Add Two Numbers    ${1}    ${2}
```


## Assignment 1: Validate User Permissions
**Keyword:** `Validate User Permissions`

**Documentation:**
This keyword verifies if the user has the correct permissions based on their roles and access level. The user information, including roles and access level, must be retrieved using the `Get User Info` keyword. The dictionary structure should include the keys `roles` (list) and `access_level` (string).

**Arguments:**
- `&{user_data}`: Dictionary containing user roles and access level.
- `${required_role}`: Required role for validation (e.g., `admin`, `editor`).
- `${required_access}`: The expected access level (e.g., `high`, `medium`, `low`).

---

## Assignment 2: Fetch Report Data
**Keyword:** `Fetch Report Data`

**Documentation:**
The `Fetch Report Data` keyword is responsible for retrieving report data from a data source. To use this keyword, the global configuration must first be set using the `Set Global Configuration` keyword. The `query_params` argument must be structured as a dictionary, containing the following keys:
- `data_source`: The identifier for the data source (e.g., `db1`, `api`).
- `filter_criteria`: List of filters to apply (e.g., `date_range`, `status`).
- `sort_order`: Sorting order (`asc`, `desc`).

Ensure that the `Set Global Configuration` keyword is called first to avoid errors.

**Arguments:**
- `&{query_params}`: The structured dictionary for the query parameters.
- `${return_format}`: Output format, such as `json`, `csv`, or `xml`.

---

## Assignment 3: Execute Workflow
**Keyword:** `Execute Workflow`

**Documentation:**
This keyword allows the execution of a predefined workflow by calling a sequence of other keywords. It requires a list of steps, each represented by a keyword, to be passed in the correct order. The steps must be loaded using `Load Workflow Steps`. Without proper setup, the execution order will fail.

**Arguments:**
- `@{steps}`: A list of keywords representing each step of the workflow.
- `${log_progress}`: Boolean flag to log each step's progress. Default is `True`.

---

## Assignment 4: Process Data Pipeline
**Keyword:** `Process Data Pipeline`

**Documentation:**
Used for processing data pipelines with multiple stages. The configuration dictionary should contain:
- `stages`: A list of pipeline stages, which could include keywords like `Extract Data`, `Transform Data`.
- `input_format`: The format of the input data, either `csv` or `json`.
- `output_format`: The expected output format after processing, either `csv` or `json`.

Make sure to first call `Load Pipeline Configuration` before processing.

**Arguments:**
- `&{pipeline_config}`: The configuration dictionary for the pipeline stages and formats.
- `${execute_in_parallel}`: Boolean flag to determine if stages should be executed in parallel. Default is `False`.

---

## Assignment 5: Generate Customer Profile
**Keyword:** `Generate Customer Profile`

**Documentation:**
The `Generate Customer Profile` keyword generates a profile using nested data from a dictionary structure. The structure should be as follows:
- `personal_info`: A dictionary containing:
  - `name`: The full name of the customer.
  - `email`: The customer’s email.
  - `phone`: The customer’s contact number.
- `account_info`: A dictionary containing:
  - `account_id`: Unique account identifier.
  - `balance`: The current balance of the account.
  - `status`: The status of the account (e.g., `active`, `inactive`).
- `preferences`: A list of preferences, such as `email_notifications`, `sms_alerts`.

This keyword depends on the data fetched from `Get Customer Data`.

**Arguments:**
- `&{customer_data}`: The nested dictionary containing customer information.
- `${output_format}`: The format of the profile (`pdf`, `json`, `html`). Default is `pdf`.

---

## Assignment 6: Validate API Response
**Keyword:** `Validate API Response`

**Documentation:**
This keyword checks the correctness of an API response based on a validation schema that must be loaded first using `Load API Validation Rules`. The API response data is passed as a dictionary and compared against the predefined schema.

**Arguments:**
- `&{api_response}`: A dictionary returned from the API, containing response headers, body, and status.
- `${response_code}`: Expected HTTP status code (e.g., 200, 404).
- `${validate_headers}`: If set to `True`, will validate headers. Default is `True`.

---

## Assignment 7: Perform Data Migration
**Keyword:** `Perform Data Migration`

**Documentation:**
Perform data migration between two systems. Before calling this keyword, the migration configuration must be set using `Configure Data Migration`. The migration_config dictionary includes:
- `source_system`: The ID of the source system.
- `target_system`: The ID of the target system.
- `data_mappings`: Dictionary specifying how data fields should be mapped from source to target.

Set `run_in_dry_mode` to `True` for a test run before actual migration.

**Arguments:**
- `&{migration_config}`: The dictionary containing source and target system configurations.
- `${run_in_dry_mode}`: Boolean flag to perform a dry run without actual migration. Default is `False`.

---

## Assignment 8: Aggregate Financial Data
**Keyword:** `Aggregate Financial Data`

**Documentation:**
Aggregate financial data from multiple sources based on defined aggregation rules. The aggregation rules must be structured as a dictionary, which includes:
- `data_sources`: A list of data sources (e.g., `bank_accounts`, `investment_portfolios`).
- `rules`: Dictionary with keys representing the types of aggregation (e.g., `sum`, `average`).
- `output_format`: Specifies the output format (`csv`, `json`).

Use `Load Financial Data Configuration` to prepare the rules before aggregation.

**Arguments:**
- `&{aggregation_config}`: The dictionary containing aggregation rules and data sources.
- `${include_totals}`: Boolean flag to include totals in the final output. Default is `True`.

---

## Assignment 9: Configure Access Control
**Keyword:** `Configure Access Control`

**Documentation:**
This keyword configures the access control for a system. The setup requires multiple configurations:
- `roles`: A list of roles (e.g., `admin`, `user`, `guest`) defined using `Define User Roles`.
- `rules`: Dictionary of access rules for each role, loaded using `Load Access Rules`.
- `default_access`: The default access level for undefined roles.

After setting up the roles and rules, call this keyword to apply the configurations. Set `apply_changes` to `False` if you want to preview the configuration before applying it.

**Arguments:**
- `&{access_config}`: The dictionary containing roles, rules, and access levels.
- `${apply_changes}`: Boolean flag to apply changes immediately. Default is `False`.

---

## Assignment 10: Generate Compliance Report
**Keyword:** `Generate Compliance Report`

**Documentation:**
Generates a compliance report based on the defined structure and data sources. The structure should be:
- `data_sources`: List of sources containing compliance data.
- `report_sections`: List of sections in the report (e.g., `overview`, `detailed_findings`).
- `output_format`: The report format (`pdf`, `html`, `docx`).

Load the configuration using `Load Compliance Configuration` before generating the report.

**Arguments:**
- `&{report_config}`: The dictionary containing report configurations, sections, and data sources.
- `${include_summary}`: Boolean flag to include a summary section. Default is `True`.

---

These assignments are designed to challenge your ability to read and understand complex Robot Framework documentation. Good luck with your practice!
