//HERC01XX JOB (HERC01),                      
//             'JCL EXEMPLO',                 
//             CLASS=A,                       
//             MSGCLASS=H,                    
//             REGION=8M,TIME=1440,           
//             NOTIFY=HERC01                  
//STEP01   EXEC PGM=PROG1                     
//STEPLIB  DD DSNAME=HERC01.LOAD,DISP=SHR     
//SYSOUT   DD SYSOUT=*                        
