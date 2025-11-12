Profile: KenyaClaims
Parent: Claim
Id: kenya-claims
Title: "Claims Profile"
Description: "Standardise the format of electronic claims / pre-authorizations / pre-determinations."

* extension contains
    KenyaCountiesExtension named county 0..1 MS
    
* identifier 1..1 MS 

* status from ClaimsStatusVS
* status ^short = "Patient Claim's status"

* type 1..1 MS  

* subType 0..1 MS

* billablePeriod 0..1 MS

* enterer 0..1 MS  

* insurer 0..1 MS 

* provider 1..1 MS

* referral 0..1 MS  

* facility 0..1 MS  

* careTeam 0..* MS
  * sequence 1..1
  * sequence only positiveInt  
 
