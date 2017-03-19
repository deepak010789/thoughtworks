## Thoughtworks

#### Prerequisites
- AWS Account
- Create this file in S3 bucket e.g thoughtworks-1mg

  Name: access.sh
```
#!/bin/bash
export AWS_ACCESS_KEY_ID='XXXXXXXXXXXXXXXXXXXXX'
export AWS_SECRET_ACCESS_KEY='xxxxxxxxxxYYYYxxxxxxxxxxYYxxxxx'
```

- Update this bucket name in ```thoughtworks.json``` file at line no 246.

#### Now create cloudformation stack using ```thoughtworks.json```
