//HERC01XX JOB (HERC01),                                              
//             'JCL EXEMPLO',                                         
//             CLASS=A,                                               
//             MSGCLASS=H,                                            
//             REGION=8M,TIME=1440,                                   
//             NOTIFY=HERC01                                          
//COMPCOB  EXEC COBUCG,                                               
//         PARM.COB='TEST,FLAGW,LOAD,SUPMAP,SIZE=2048K,BUF=1024K'     
//COB.SYSPUNCH DD DUMMY                                               
//COB.SYSIN    DD DSNAME=HERC01.COBOL(PROG1),DISP=SHR                 
//COB.SYSLIB   DD DSNAME=SYS1.COBLIB,DISP=SHR                         
//GO.SYSOUT    DD SYSOUT=*,DCB=(RECFM=FBA,LRECL=161,BLKSIZE=16100)    
