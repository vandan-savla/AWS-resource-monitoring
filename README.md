## This is Simple Script to monitor basic AWS resources of Your Organizarion.
### Steps to make it work
- Download AWS cli using
  ``` sudo apt-get install awscli ```
- Generate AWS Acess keyID and AWS secret Access Key from your AWS account
- Configure aws using ``` aws configure ``` and follow as prompted.
- Clone the repository
- Give executrable permissions to the script
- Run the script

### Key Features
- Logs the resource information to a file
- Implemented cronjob to run this script everyday or as required (Note: Need to configure by yourself)
