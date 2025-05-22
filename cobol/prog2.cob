       IDENTIFICATION                  DIVISION.           
       PROGRAM-ID. PROG2.                                  
       ENVIRONMENT                     DIVISION.           
       CONFIGURATION                   SECTION.            
       SPECIAL-NAMES.                                      
           DECIMAL-POINT IS COMMA.                         
       INPUT-OUTPUT                     SECTION.           
       FILE-CONTROL.                                       
           SELECT CLIENTES ASSIGN TO UT-S-CLIENTES.        
       DATA                            DIVISION.           
       FILE                            SECTION.            
       FD   CLIENTES                                       
            LABEL RECORDS ARE STANDARD                     
            RECORD CONTAINS 80 CHARACTERS                  
            BLOCK  CONTAINS 0 RECORDS                      
            DATA   RECORD IS CLIENTES.                     
       01   REG-CLIENTES.                                  
            05 REG-CODIGO   PIC 9(05).                     
            05 REG-NOME     PIC X(30).                     
            05 REG-EMAIL    PIC X(35).                     
            05 REG-TELEFONE PIC X(10).                     
                                                           
       WORKING-STORAGE                 SECTION.            
       01  FS-CLIENTES      PIC X VALUE 'N'.               
       01  WRK-LIDOS        PIC 9(05)  VALUE 0.            
       PROCEDURE                        DIVISION.          
       0001-PRINCIPAL.                                     
            PERFORM 0100-INICIAR.                          
            PERFORM 0200-PROCESSAR UNTIL FS-CLIENTES = 'F'.
            PERFORM 0300-FINALIZAR.                        
            GOBACK.                                        
                                                           
       0100-INICIAR.                                       
           OPEN INPUT CLIENTES.                            
            READ CLIENTES AT END                           
                          MOVE 'F' TO FS-CLIENTES.         
              IF FS-CLIENTES = 'F'                         
                 DISPLAY 'NENHUM REGISTRO NO ARQUIVO'.         
                                                                 
       0200-PROCESSAR.                                      
                 DISPLAY 'CODIGO....' REG-CODIGO            
                 DISPLAY 'NOME......' REG-NOME              
                 DISPLAY 'EMAIL.....' REG-EMAIL.            
                 DISPLAY 'TELEFONE..' REG-TELEFONE.         
                 DISPLAY '------------------------------'.  
                 ADD 1 TO WRK-LIDOS.                        
            READ CLIENTES AT END                            
                          MOVE 'F' TO FS-CLIENTES.          
                                                            
       0300-FINALIZAR.                                      
            CLOSE CLIENTES.                                 
            DISPLAY 'REGISTROS LIDOS... ' WRK-LIDOS.        
