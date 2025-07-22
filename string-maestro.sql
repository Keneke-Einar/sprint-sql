SELECT first_name, last_name, SUBSTR(email, INSTR(email, '@') + 1) AS email_domain
FROM students