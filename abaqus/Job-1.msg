1

   Abaqus 6.13-1                                  Date 07-Dec-2015   Time 15:02:59
   For use by  under license from Dassault Systemes or its subsidiary.

                                                                                 
                                                                                 
 STEP    1     INCREMENT     1     STEP TIME    0.00    


                        S T E P       1     S T A T I C   A N A L Y S I S


                                                                                          

     AUTOMATIC TIME CONTROL WITH -
          A SUGGESTED INITIAL TIME INCREMENT OF                0.100    
          AND A TOTAL TIME PERIOD OF                            10.0    
          THE MINIMUM TIME INCREMENT ALLOWED IS                1.000E-03
          THE MAXIMUM TIME INCREMENT ALLOWED IS                0.100    

     LINEAR EQUATION SOLVER TYPE         DIRECT SPARSE

 CONVERGENCE TOLERANCE PARAMETERS FOR FORCE    
     CRITERION FOR RESIDUAL FORCE     FOR A NONLINEAR PROBLEM          5.000E-03
     CRITERION FOR DISP.    CORRECTION IN A NONLINEAR PROBLEM          1.000E-02
     INITIAL VALUE OF TIME AVERAGE FORCE                               1.000E-02
     AVERAGE FORCE     IS TIME AVERAGE FORCE    
     ALTERNATE CRIT. FOR RESIDUAL FORCE     FOR A NONLINEAR PROBLEM    2.000E-02
     CRITERION FOR ZERO FORCE     RELATIVE TO TIME AVRG. FORCE         1.000E-05
     CRITERION FOR RESIDUAL FORCE     WHEN THERE IS ZERO FLUX          1.000E-05
     CRITERION FOR DISP.    CORRECTION WHEN THERE IS ZERO FLUX         1.000E-03
     CRITERION FOR RESIDUAL FORCE     FOR A LINEAR INCREMENT           1.000E-08
     FIELD CONVERSION RATIO                                             1.00    
     CRITERION FOR ZERO FORCE     REL. TO TIME AVRG. MAX. FORCE        1.000E-05
     CRITERION FOR ZERO DISP.    RELATIVE TO CHARACTERISTIC LENGTH     1.000E-08

     VOLUMETRIC STRAIN COMPATIBILITY TOLERANCE FOR HYBRID SOLIDS       1.000E-05
     AXIAL STRAIN COMPATIBILITY TOLERANCE FOR HYBRID BEAMS             1.000E-05
     TRANS. SHEAR STRAIN COMPATIBILITY TOLERANCE FOR HYBRID BEAMS      1.000E-05
     SOFT CONTACT CONSTRAINT COMPATIBILITY TOLERANCE FOR P>P0          5.000E-03
     SOFT CONTACT CONSTRAINT COMPATIBILITY TOLERANCE FOR P=0.0         0.100    
     CONTACT FORCE ERROR TOLERANCE FOR CONVERT SDI=YES                 1.00    
     DISPLACEMENT COMPATIBILITY TOLERANCE FOR DCOUP ELEMENTS           1.000E-05
     ROTATION COMPATIBILITY TOLERANCE FOR DCOUP ELEMENTS               1.000E-05

 EQUILIBRIUM WILL BE CHECKED FOR SEVERE DISCONTINUITY ITERATIONS

 TIME INCREMENTATION CONTROL PARAMETERS:
     FIRST EQUILIBRIUM ITERATION FOR CONSECUTIVE DIVERGENCE CHECK              4
     EQUILIBRIUM ITERATION AT WHICH LOG. CONVERGENCE RATE CHECK BEGINS         8
     EQUILIBRIUM ITERATION AFTER WHICH ALTERNATE RESIDUAL IS USED              9
     MAXIMUM EQUILIBRIUM ITERATIONS ALLOWED                                   16
     EQUILIBRIUM ITERATION COUNT FOR CUT-BACK IN NEXT INCREMENT               10
     MAXIMUM EQUILIB. ITERS IN TWO INCREMENTS FOR TIME INCREMENT INCREASE      4
     MAXIMUM ITERATIONS FOR SEVERE DISCONTINUITIES                            50
     MAXIMUM CUT-BACKS ALLOWED IN AN INCREMENT                                 5
     MAXIMUM DISCON. ITERS IN TWO INCREMENTS FOR TIME INCREMENT INCREASE      50
     MAXIMUM CONTACT AUGMENTATIONS FOR *SURFACE BEHAVIOR,AUGMENTED LAGRANGE   50
     CUT-BACK FACTOR AFTER DIVERGENCE                                 0.2500    
     CUT-BACK FACTOR FOR TOO SLOW CONVERGENCE                         0.5000    
     CUT-BACK FACTOR AFTER TOO MANY EQUILIBRIUM ITERATIONS            0.7500    
     CUT-BACK FACTOR AFTER TOO MANY SEVERE DISCONTINUITY ITERATIONS   0.2500    
     CUT-BACK FACTOR AFTER PROBLEMS IN ELEMENT ASSEMBLY               0.2500    
     INCREASE FACTOR AFTER TWO INCREMENTS THAT CONVERGE QUICKLY        1.500    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED                       1.500    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED (DYNAMICS)            1.250    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED (DIFFUSION)           2.000    
     MINIMUM TIME INCREMENT RATIO FOR EXTRAPOLATION TO OCCUR          0.1000    
     MAX. RATIO OF TIME INCREMENT TO STABILITY LIMIT                   1.000    
     FRACTION OF STABILITY LIMIT FOR NEW TIME INCREMENT               0.9500    
     TIME INCREMENT INCREASE FACTOR BEFORE A TIME POINT                1.000    
     GLOBAL STABILIZATION CONTROL IS NOT USED

          PRINT OF INCREMENT NUMBER, TIME, ETC., EVERY    1  INCREMENTS

     THE MAXIMUM NUMBER OF INCREMENTS IN THIS STEP IS                    1000

          LARGE DISPLACEMENT THEORY WILL BE USED

          UNSYMMETRIC MATRIX STORAGE AND SOLUTION WILL BE USED

     LINEAR EXTRAPOLATION WILL BE USED

     CHARACTERISTIC ELEMENT LENGTH      10.0    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

     EQUATIONS ARE BEING REORDERED TO MINIMIZE WAVEFRONT

     COLLECTING MODEL CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS

     COLLECTING STEP CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS


  INCREMENT     1 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.50297E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.907E+06   TIME AVG. FORCE       3.907E+06
 LARGEST RESIDUAL FORCE             -130.       AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_1_2_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.907E+06   TIME AVG. FORCE       3.907E+06
 LARGEST RESIDUAL FORCE            -1.225E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.564E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  1.000E-02
 STEP TIME COMPLETED       0.100    ,  TOTAL TIME COMPLETED        0.100    


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.00366E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.563E+07   TIME AVG. FORCE       9.767E+06
 LARGEST RESIDUAL FORCE             3.672E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.631E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  2.000E-02
 STEP TIME COMPLETED       0.200    ,  TOTAL TIME COMPLETED        0.200    


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.00348E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.344E+07   TIME AVG. FORCE       1.433E+07
 LARGEST RESIDUAL FORCE             3.678E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.484E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  3.000E-02
 STEP TIME COMPLETED       0.300    ,  TOTAL TIME COMPLETED        0.300    


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 6.00990E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.126E+07   TIME AVG. FORCE       1.856E+07
 LARGEST RESIDUAL FORCE             3.689E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        4.470E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  4.000E-02
 STEP TIME COMPLETED       0.400    ,  TOTAL TIME COMPLETED        0.400    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 6.00936E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.908E+07   TIME AVG. FORCE       2.266E+07
 LARGEST RESIDUAL FORCE             3.689E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.600E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  5.000E-02
 STEP TIME COMPLETED       0.500    ,  TOTAL TIME COMPLETED        0.500    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 3.00441E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.690E+07   TIME AVG. FORCE       2.670E+07
 LARGEST RESIDUAL FORCE             3.653E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.640E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  6.000E-02
 STEP TIME COMPLETED       0.600    ,  TOTAL TIME COMPLETED        0.600    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_7_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.472E+07   TIME AVG. FORCE       3.070E+07
 LARGEST RESIDUAL FORCE             3.653E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.131E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  7.000E-02
 STEP TIME COMPLETED       0.700    ,  TOTAL TIME COMPLETED        0.700    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_8_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.254E+07   TIME AVG. FORCE       3.468E+07
 LARGEST RESIDUAL FORCE             3.699E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.132E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  8.000E-02
 STEP TIME COMPLETED       0.800    ,  TOTAL TIME COMPLETED        0.800    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 3.00359E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.036E+07   TIME AVG. FORCE       3.865E+07
 LARGEST RESIDUAL FORCE             3.675E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  9.000E-02
 STEP TIME COMPLETED       0.900    ,  TOTAL TIME COMPLETED        0.900    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 3.00331E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.819E+07   TIME AVG. FORCE       4.260E+07
 LARGEST RESIDUAL FORCE             3.629E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.133E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.100    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         1.00    


  INCREMENT    11 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.50152E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      8.601E+07   TIME AVG. FORCE       4.655E+07
 LARGEST RESIDUAL FORCE             3.675E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.134E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.110    
 STEP TIME COMPLETED        1.10    ,  TOTAL TIME COMPLETED         1.10    


  INCREMENT    12 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_12_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      9.384E+07   TIME AVG. FORCE       5.049E+07
 LARGEST RESIDUAL FORCE             3.674E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.135E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.120    
 STEP TIME COMPLETED        1.20    ,  TOTAL TIME COMPLETED         1.20    


  INCREMENT    13 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_13_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.017E+08   TIME AVG. FORCE       5.443E+07
 LARGEST RESIDUAL FORCE             3.627E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.135E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.130    
 STEP TIME COMPLETED        1.30    ,  TOTAL TIME COMPLETED         1.30    


  INCREMENT    14 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 6.00444E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.095E+08   TIME AVG. FORCE       5.836E+07
 LARGEST RESIDUAL FORCE             3.627E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.646E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.140    
 STEP TIME COMPLETED        1.40    ,  TOTAL TIME COMPLETED         1.40    


  INCREMENT    15 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_15_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.173E+08   TIME AVG. FORCE       6.229E+07
 LARGEST RESIDUAL FORCE             3.673E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.137E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.150    
 STEP TIME COMPLETED        1.50    ,  TOTAL TIME COMPLETED         1.50    


  INCREMENT    16 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_16_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.252E+08   TIME AVG. FORCE       6.622E+07
 LARGEST RESIDUAL FORCE             3.719E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.137E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.160    
 STEP TIME COMPLETED        1.60    ,  TOTAL TIME COMPLETED         1.60    


  INCREMENT    17 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 3.00140E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.330E+08   TIME AVG. FORCE       7.015E+07
 LARGEST RESIDUAL FORCE             3.672E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.170    
 STEP TIME COMPLETED        1.70    ,  TOTAL TIME COMPLETED         1.70    


  INCREMENT    18 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 3.00113E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.408E+08   TIME AVG. FORCE       7.407E+07
 LARGEST RESIDUAL FORCE             3.672E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.180    
 STEP TIME COMPLETED        1.80    ,  TOTAL TIME COMPLETED         1.80    


  INCREMENT    19 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 6.00171E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.487E+08   TIME AVG. FORCE       7.800E+07
 LARGEST RESIDUAL FORCE             3.672E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.140E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.190    
 STEP TIME COMPLETED        1.90    ,  TOTAL TIME COMPLETED         1.90    


  INCREMENT    20 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.50029E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.565E+08   TIME AVG. FORCE       8.192E+07
 LARGEST RESIDUAL FORCE             3.764E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.513E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.200    
 STEP TIME COMPLETED        2.00    ,  TOTAL TIME COMPLETED         2.00    


  INCREMENT    21 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.00021E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.643E+08   TIME AVG. FORCE       8.585E+07
 LARGEST RESIDUAL FORCE             3.717E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        1.987E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.210    
 STEP TIME COMPLETED        2.10    ,  TOTAL TIME COMPLETED         2.10    


  INCREMENT    22 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.00002E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.722E+08   TIME AVG. FORCE       8.977E+07
 LARGEST RESIDUAL FORCE             3.717E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.645E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.220    
 STEP TIME COMPLETED        2.20    ,  TOTAL TIME COMPLETED         2.20    


  INCREMENT    23 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.99953E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.800E+08   TIME AVG. FORCE       9.369E+07
 LARGEST RESIDUAL FORCE             3.717E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.632E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.230    
 STEP TIME COMPLETED        2.30    ,  TOTAL TIME COMPLETED         2.30    


  INCREMENT    24 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.49974E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.878E+08   TIME AVG. FORCE       9.762E+07
 LARGEST RESIDUAL FORCE             3.623E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.235E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.240    
 STEP TIME COMPLETED        2.40    ,  TOTAL TIME COMPLETED         2.40    


  INCREMENT    25 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.99843E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.957E+08   TIME AVG. FORCE       1.015E+08
 LARGEST RESIDUAL FORCE             3.623E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.250    
 STEP TIME COMPLETED        2.50    ,  TOTAL TIME COMPLETED         2.50    


  INCREMENT    26 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99930E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.035E+08   TIME AVG. FORCE       1.055E+08
 LARGEST RESIDUAL FORCE             3.716E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.144E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.260    
 STEP TIME COMPLETED        2.60    ,  TOTAL TIME COMPLETED         2.60    


  INCREMENT    27 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.49934E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.114E+08   TIME AVG. FORCE       1.094E+08
 LARGEST RESIDUAL FORCE             3.622E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.608E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.270    
 STEP TIME COMPLETED        2.70    ,  TOTAL TIME COMPLETED         2.70    


  INCREMENT    28 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_28_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.192E+08   TIME AVG. FORCE       1.133E+08
 LARGEST RESIDUAL FORCE             3.715E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.146E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.280    
 STEP TIME COMPLETED        2.80    ,  TOTAL TIME COMPLETED         2.80    


  INCREMENT    29 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.99812E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.271E+08   TIME AVG. FORCE       1.172E+08
 LARGEST RESIDUAL FORCE             3.714E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.402E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.290    
 STEP TIME COMPLETED        2.90    ,  TOTAL TIME COMPLETED         2.90    


  INCREMENT    30 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.49893E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.349E+08   TIME AVG. FORCE       1.212E+08
 LARGEST RESIDUAL FORCE             3.621E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.775E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.300    
 STEP TIME COMPLETED        3.00    ,  TOTAL TIME COMPLETED         3.00    


  INCREMENT    31 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99839E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.428E+08   TIME AVG. FORCE       1.251E+08
 LARGEST RESIDUAL FORCE             3.714E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.651E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.310    
 STEP TIME COMPLETED        3.10    ,  TOTAL TIME COMPLETED         3.10    


  INCREMENT    32 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99820E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.506E+08   TIME AVG. FORCE       1.290E+08
 LARGEST RESIDUAL FORCE             3.621E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.645E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.320    
 STEP TIME COMPLETED        3.20    ,  TOTAL TIME COMPLETED         3.20    


  INCREMENT    33 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.49852E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.585E+08   TIME AVG. FORCE       1.329E+08
 LARGEST RESIDUAL FORCE             3.806E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.659E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.330    
 STEP TIME COMPLETED        3.30    ,  TOTAL TIME COMPLETED         3.30    


  INCREMENT    34 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.99352E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.663E+08   TIME AVG. FORCE       1.368E+08
 LARGEST RESIDUAL FORCE             3.713E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.640E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.340    
 STEP TIME COMPLETED        3.40    ,  TOTAL TIME COMPLETED         3.40    


  INCREMENT    35 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.99297E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.742E+08   TIME AVG. FORCE       1.408E+08
 LARGEST RESIDUAL FORCE             3.712E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        4.470E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.350    
 STEP TIME COMPLETED        3.50    ,  TOTAL TIME COMPLETED         3.50    


  INCREMENT    36 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.99242E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.820E+08   TIME AVG. FORCE       1.447E+08
 LARGEST RESIDUAL FORCE             3.712E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.152E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.360    
 STEP TIME COMPLETED        3.60    ,  TOTAL TIME COMPLETED         3.60    


  INCREMENT    37 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.99188E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.899E+08   TIME AVG. FORCE       1.486E+08
 LARGEST RESIDUAL FORCE             3.712E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.152E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.370    
 STEP TIME COMPLETED        3.70    ,  TOTAL TIME COMPLETED         3.70    


  INCREMENT    38 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99711E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.977E+08   TIME AVG. FORCE       1.525E+08
 LARGEST RESIDUAL FORCE             3.618E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        1.987E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.380    
 STEP TIME COMPLETED        3.80    ,  TOTAL TIME COMPLETED         3.80    


  INCREMENT    39 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.99078E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.056E+08   TIME AVG. FORCE       1.565E+08
 LARGEST RESIDUAL FORCE             3.618E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.644E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.390    
 STEP TIME COMPLETED        3.90    ,  TOTAL TIME COMPLETED         3.90    


  INCREMENT    40 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99675E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.135E+08   TIME AVG. FORCE       1.604E+08
 LARGEST RESIDUAL FORCE             3.618E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.400    
 STEP TIME COMPLETED        4.00    ,  TOTAL TIME COMPLETED         4.00    


  INCREMENT    41 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_41_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.213E+08   TIME AVG. FORCE       1.643E+08
 LARGEST RESIDUAL FORCE             3.710E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.155E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.410    
 STEP TIME COMPLETED        4.10    ,  TOTAL TIME COMPLETED         4.10    


  INCREMENT    42 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99638E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.292E+08   TIME AVG. FORCE       1.682E+08
 LARGEST RESIDUAL FORCE             3.710E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.653E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.420    
 STEP TIME COMPLETED        4.20    ,  TOTAL TIME COMPLETED         4.20    


  INCREMENT    43 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.49715E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.370E+08   TIME AVG. FORCE       1.722E+08
 LARGEST RESIDUAL FORCE             3.709E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        1.863E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.430    
 STEP TIME COMPLETED        4.30    ,  TOTAL TIME COMPLETED         4.30    


  INCREMENT    44 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.19761E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.449E+08   TIME AVG. FORCE       1.761E+08
 LARGEST RESIDUAL FORCE             3.894E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        1.788E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.440    
 STEP TIME COMPLETED        4.40    ,  TOTAL TIME COMPLETED         4.40    


  INCREMENT    45 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.98751E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.528E+08   TIME AVG. FORCE       1.800E+08
 LARGEST RESIDUAL FORCE             3.709E-07   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.668E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.450    
 STEP TIME COMPLETED        4.50    ,  TOTAL TIME COMPLETED         4.50    


  INCREMENT    46 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99565E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.606E+08   TIME AVG. FORCE       1.839E+08
 LARGEST RESIDUAL FORCE             3.708E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        1.987E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.460    
 STEP TIME COMPLETED        4.60    ,  TOTAL TIME COMPLETED         4.60    


  INCREMENT    47 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.99321E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.685E+08   TIME AVG. FORCE       1.879E+08
 LARGEST RESIDUAL FORCE             3.893E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.904E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.470    
 STEP TIME COMPLETED        4.70    ,  TOTAL TIME COMPLETED         4.70    


  INCREMENT    48 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_48_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.764E+08   TIME AVG. FORCE       1.918E+08
 LARGEST RESIDUAL FORCE             3.522E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.160E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.480    
 STEP TIME COMPLETED        4.80    ,  TOTAL TIME COMPLETED         4.80    


  INCREMENT    49 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.19706E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.842E+08   TIME AVG. FORCE       1.957E+08
 LARGEST RESIDUAL FORCE             3.892E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.969E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.490    
 STEP TIME COMPLETED        4.90    ,  TOTAL TIME COMPLETED         4.90    


  INCREMENT    50 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.99239E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.921E+08   TIME AVG. FORCE       1.997E+08
 LARGEST RESIDUAL FORCE             3.707E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.907E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.500    
 STEP TIME COMPLETED        5.00    ,  TOTAL TIME COMPLETED         5.00    


  INCREMENT    51 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_51_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.000E+08   TIME AVG. FORCE       2.036E+08
 LARGEST RESIDUAL FORCE             3.521E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.162E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.510    
 STEP TIME COMPLETED        5.10    ,  TOTAL TIME COMPLETED         5.10    


  INCREMENT    52 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.98368E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.079E+08   TIME AVG. FORCE       2.075E+08
 LARGEST RESIDUAL FORCE             3.891E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.520    
 STEP TIME COMPLETED        5.20    ,  TOTAL TIME COMPLETED         5.20    


  INCREMENT    53 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99438E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.157E+08   TIME AVG. FORCE       2.114E+08
 LARGEST RESIDUAL FORCE            -3.707E-07   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        1.987E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.530    
 STEP TIME COMPLETED        5.30    ,  TOTAL TIME COMPLETED         5.30    


  INCREMENT    54 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.99129E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.236E+08   TIME AVG. FORCE       2.154E+08
 LARGEST RESIDUAL FORCE             3.705E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.540    
 STEP TIME COMPLETED        5.40    ,  TOTAL TIME COMPLETED         5.40    


  INCREMENT    55 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.98204E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.315E+08   TIME AVG. FORCE       2.193E+08
 LARGEST RESIDUAL FORCE             3.890E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        5.960E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.550    
 STEP TIME COMPLETED        5.50    ,  TOTAL TIME COMPLETED         5.50    


  INCREMENT    56 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99383E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.394E+08   TIME AVG. FORCE       2.232E+08
 LARGEST RESIDUAL FORCE             3.704E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.676E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.560    
 STEP TIME COMPLETED        5.60    ,  TOTAL TIME COMPLETED         5.60    


  INCREMENT    57 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.99047E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.472E+08   TIME AVG. FORCE       2.272E+08
 LARGEST RESIDUAL FORCE            -3.706E-07   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.235E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.570    
 STEP TIME COMPLETED        5.70    ,  TOTAL TIME COMPLETED         5.70    


  INCREMENT    58 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.98040E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.551E+08   TIME AVG. FORCE       2.311E+08
 LARGEST RESIDUAL FORCE             3.704E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.580    
 STEP TIME COMPLETED        5.80    ,  TOTAL TIME COMPLETED         5.80    


  INCREMENT    59 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.97985E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.630E+08   TIME AVG. FORCE       2.350E+08
 LARGEST RESIDUAL FORCE             3.704E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.168E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.590    
 STEP TIME COMPLETED        5.90    ,  TOTAL TIME COMPLETED         5.90    


  INCREMENT    60 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98965E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.709E+08   TIME AVG. FORCE       2.389E+08
 LARGEST RESIDUAL FORCE             3.704E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.679E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.600    
 STEP TIME COMPLETED        6.00    ,  TOTAL TIME COMPLETED         6.00    


  INCREMENT    61 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_61_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.788E+08   TIME AVG. FORCE       2.429E+08
 LARGEST RESIDUAL FORCE             3.889E-07   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.169E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.610    
 STEP TIME COMPLETED        6.10    ,  TOTAL TIME COMPLETED         6.10    


  INCREMENT    62 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_62_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.867E+08   TIME AVG. FORCE       2.468E+08
 LARGEST RESIDUAL FORCE             3.888E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.170E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.620    
 STEP TIME COMPLETED        6.20    ,  TOTAL TIME COMPLETED         6.20    


  INCREMENT    63 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98883E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.945E+08   TIME AVG. FORCE       2.507E+08
 LARGEST RESIDUAL FORCE             3.703E-07   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.426E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.630    
 STEP TIME COMPLETED        6.30    ,  TOTAL TIME COMPLETED         6.30    


  INCREMENT    64 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98856E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.024E+08   TIME AVG. FORCE       2.547E+08
 LARGEST RESIDUAL FORCE             3.888E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.681E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.640    
 STEP TIME COMPLETED        6.40    ,  TOTAL TIME COMPLETED         6.40    


  INCREMENT    65 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.97657E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.103E+08   TIME AVG. FORCE       2.586E+08
 LARGEST RESIDUAL FORCE             3.701E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.662E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.650    
 STEP TIME COMPLETED        6.50    ,  TOTAL TIME COMPLETED         6.50    


  INCREMENT    66 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.97603E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.182E+08   TIME AVG. FORCE       2.625E+08
 LARGEST RESIDUAL FORCE             3.701E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.660    
 STEP TIME COMPLETED        6.60    ,  TOTAL TIME COMPLETED         6.60    


  INCREMENT    67 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98774E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.261E+08   TIME AVG. FORCE       2.665E+08
 LARGEST RESIDUAL FORCE             3.700E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        3.725E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.670    
 STEP TIME COMPLETED        6.70    ,  TOTAL TIME COMPLETED         6.70    


  INCREMENT    68 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_68_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.340E+08   TIME AVG. FORCE       2.704E+08
 LARGEST RESIDUAL FORCE             3.515E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.174E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.680    
 STEP TIME COMPLETED        6.80    ,  TOTAL TIME COMPLETED         6.80    


  INCREMENT    69 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_69_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.419E+08   TIME AVG. FORCE       2.743E+08
 LARGEST RESIDUAL FORCE             3.700E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.175E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.690    
 STEP TIME COMPLETED        6.90    ,  TOTAL TIME COMPLETED         6.90    


  INCREMENT    70 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99128E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.498E+08   TIME AVG. FORCE       2.783E+08
 LARGEST RESIDUAL FORCE             3.699E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.686E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.700    
 STEP TIME COMPLETED        7.00    ,  TOTAL TIME COMPLETED         7.00    


  INCREMENT    71 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98665E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.577E+08   TIME AVG. FORCE       2.822E+08
 LARGEST RESIDUAL FORCE             3.699E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.177E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.710    
 STEP TIME COMPLETED        7.10    ,  TOTAL TIME COMPLETED         7.10    


  INCREMENT    72 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_72_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.656E+08   TIME AVG. FORCE       2.861E+08
 LARGEST RESIDUAL FORCE             3.883E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.177E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.720    
 STEP TIME COMPLETED        7.20    ,  TOTAL TIME COMPLETED         7.20    


  INCREMENT    73 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98610E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.735E+08   TIME AVG. FORCE       2.901E+08
 LARGEST RESIDUAL FORCE             3.698E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.730    
 STEP TIME COMPLETED        7.30    ,  TOTAL TIME COMPLETED         7.30    


  INCREMENT    74 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_74_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.814E+08   TIME AVG. FORCE       2.940E+08
 LARGEST RESIDUAL FORCE             3.699E-07   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.179E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.740    
 STEP TIME COMPLETED        7.40    ,  TOTAL TIME COMPLETED         7.40    


  INCREMENT    75 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.99037E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.893E+08   TIME AVG. FORCE       2.980E+08
 LARGEST RESIDUAL FORCE            -3.699E-07   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        1.987E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.750    
 STEP TIME COMPLETED        7.50    ,  TOTAL TIME COMPLETED         7.50    


  INCREMENT    76 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.97056E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.972E+08   TIME AVG. FORCE       3.019E+08
 LARGEST RESIDUAL FORCE             3.698E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.180E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.760    
 STEP TIME COMPLETED        7.60    ,  TOTAL TIME COMPLETED         7.60    


  INCREMENT    77 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.97001E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.051E+08   TIME AVG. FORCE       3.058E+08
 LARGEST RESIDUAL FORCE             3.698E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.770    
 STEP TIME COMPLETED        7.70    ,  TOTAL TIME COMPLETED         7.70    


  INCREMENT    78 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98473E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.130E+08   TIME AVG. FORCE       3.098E+08
 LARGEST RESIDUAL FORCE             3.882E-07   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.780    
 STEP TIME COMPLETED        7.80    ,  TOTAL TIME COMPLETED         7.80    


  INCREMENT    79 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98446E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.209E+08   TIME AVG. FORCE       3.137E+08
 LARGEST RESIDUAL FORCE            -3.882E-07   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.692E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.790    
 STEP TIME COMPLETED        7.90    ,  TOTAL TIME COMPLETED         7.90    


  INCREMENT    80 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.96837E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.288E+08   TIME AVG. FORCE       3.176E+08
 LARGEST RESIDUAL FORCE            -3.512E-07   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        4.470E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.800    
 STEP TIME COMPLETED        8.00    ,  TOTAL TIME COMPLETED         8.00    


  INCREMENT    81 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_81_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.367E+08   TIME AVG. FORCE       3.216E+08
 LARGEST RESIDUAL FORCE            -3.696E-07   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.184E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.810    
 STEP TIME COMPLETED        8.10    ,  TOTAL TIME COMPLETED         8.10    


  INCREMENT    82 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.49182E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.446E+08   TIME AVG. FORCE       3.255E+08
 LARGEST RESIDUAL FORCE             3.695E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.067E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.820    
 STEP TIME COMPLETED        8.20    ,  TOTAL TIME COMPLETED         8.20    


  INCREMENT    83 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_83_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.525E+08   TIME AVG. FORCE       3.295E+08
 LARGEST RESIDUAL FORCE             3.694E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.185E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.830    
 STEP TIME COMPLETED        8.30    ,  TOTAL TIME COMPLETED         8.30    


  INCREMENT    84 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98309E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.604E+08   TIME AVG. FORCE       3.334E+08
 LARGEST RESIDUAL FORCE             3.325E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.441E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.840    
 STEP TIME COMPLETED        8.40    ,  TOTAL TIME COMPLETED         8.40    


  INCREMENT    85 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98282E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.683E+08   TIME AVG. FORCE       3.373E+08
 LARGEST RESIDUAL FORCE            -3.324E-07   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.442E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.850    
 STEP TIME COMPLETED        8.50    ,  TOTAL TIME COMPLETED         8.50    


  INCREMENT    86 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.98836E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.763E+08   TIME AVG. FORCE       3.413E+08
 LARGEST RESIDUAL FORCE             3.694E-07   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        3.477E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.860    
 STEP TIME COMPLETED        8.60    ,  TOTAL TIME COMPLETED         8.60    


  INCREMENT    87 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98227E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.842E+08   TIME AVG. FORCE       3.452E+08
 LARGEST RESIDUAL FORCE             3.693E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        3.725E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.870    
 STEP TIME COMPLETED        8.70    ,  TOTAL TIME COMPLETED         8.70    


  INCREMENT    88 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.96399E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.921E+08   TIME AVG. FORCE       3.492E+08
 LARGEST RESIDUAL FORCE             4.062E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.189E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.880    
 STEP TIME COMPLETED        8.80    ,  TOTAL TIME COMPLETED         8.80    


  INCREMENT    89 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98172E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.000E+08   TIME AVG. FORCE       3.531E+08
 LARGEST RESIDUAL FORCE            -4.432E-07   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.890    
 STEP TIME COMPLETED        8.90    ,  TOTAL TIME COMPLETED         8.90    


  INCREMENT    90 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.96290E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.079E+08   TIME AVG. FORCE       3.571E+08
 LARGEST RESIDUAL FORCE             4.062E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.900    
 STEP TIME COMPLETED        9.00    ,  TOTAL TIME COMPLETED         9.00    


  INCREMENT    91 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.98745E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.159E+08   TIME AVG. FORCE       3.610E+08
 LARGEST RESIDUAL FORCE             4.062E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.484E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.910    
 STEP TIME COMPLETED        9.10    ,  TOTAL TIME COMPLETED         9.10    


  INCREMENT    92 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_92_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.238E+08   TIME AVG. FORCE       3.649E+08
 LARGEST RESIDUAL FORCE             3.322E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.192E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.920    
 STEP TIME COMPLETED        9.20    ,  TOTAL TIME COMPLETED         9.20    


  INCREMENT    93 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.98063E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.317E+08   TIME AVG. FORCE       3.689E+08
 LARGEST RESIDUAL FORCE             4.061E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.702E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.930    
 STEP TIME COMPLETED        9.30    ,  TOTAL TIME COMPLETED         9.30    


  INCREMENT    94 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.96071E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.396E+08   TIME AVG. FORCE       3.728E+08
 LARGEST RESIDUAL FORCE             3.691E-07   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.193E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.940    
 STEP TIME COMPLETED        9.40    ,  TOTAL TIME COMPLETED         9.40    


  INCREMENT    95 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_95_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.475E+08   TIME AVG. FORCE       3.768E+08
 LARGEST RESIDUAL FORCE             3.691E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.194E-08   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.950    
 STEP TIME COMPLETED        9.50    ,  TOTAL TIME COMPLETED         9.50    


  INCREMENT    96 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

 ***WARNING: SOLVER PROBLEM.  ZERO PIVOT WHEN PROCESSING NODE 3 INSTANCE 
             BLOCK-1 D.O.F. 1
  Typically a zero pivot is associated with an overconstraint in the model. 
 However, Abaqus was not able to indentify any chains of constraints that might 
 lead to an overconstraint at this node. This suggests that the model might be 
 in fact insufficiently constrained in this particular degree of freedom. 
 Please check the constraints used in this model. 


 ***WARNING: Solver problem. Zero pivot when processing D.O.F. 1 of 1 nodes. 
             The nodes have been identified in node set 
             WarnNodeSolvProbZeroPiv_1_1_96_1_1.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.555E+08   TIME AVG. FORCE       3.807E+08
 LARGEST RESIDUAL FORCE             4.058E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.195E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.960    
 STEP TIME COMPLETED        9.60    ,  TOTAL TIME COMPLETED         9.60    


  INCREMENT    97 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.97953E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.634E+08   TIME AVG. FORCE       3.847E+08
 LARGEST RESIDUAL FORCE             3.690E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.235E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.970    
 STEP TIME COMPLETED        9.70    ,  TOTAL TIME COMPLETED         9.70    


  INCREMENT    98 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 1.19170E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.713E+08   TIME AVG. FORCE       3.886E+08
 LARGEST RESIDUAL FORCE            -3.689E-07   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.302E-08   AT NODE          2   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.980    
 STEP TIME COMPLETED        9.80    ,  TOTAL TIME COMPLETED         9.80    


  INCREMENT    99 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 5.95797E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.793E+08   TIME AVG. FORCE       3.926E+08
 LARGEST RESIDUAL FORCE             4.426E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        4.470E-08   AT NODE          3   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.990    
 STEP TIME COMPLETED        9.90    ,  TOTAL TIME COMPLETED         9.90    


  INCREMENT   100 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =        8     NUMBER OF FLOATING PT. OPERATIONS =  3.52E+02

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             BLOCK-1.3 D.O.F. 1 RATIO = 2.97871E+15.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.872E+08   TIME AVG. FORCE       3.965E+08
 LARGEST RESIDUAL FORCE             3.689E-07   AT NODE          1   DOF  1
   INSTANCE: BLOCK-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.000E-03   AT NODE          1   DOF  2
   INSTANCE: BLOCK-1                                                                         
 LARGEST CORRECTION TO DISP.        2.980E-08   AT NODE          4   DOF  1
   INSTANCE: BLOCK-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        10.0    ,  TOTAL TIME COMPLETED         10.0    


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF        100  INCREMENTS
                       0  CUTBACKS IN AUTOMATIC INCREMENTATION
                     101  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                     101  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                     101  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       0  WARNING MESSAGES DURING USER INPUT PROCESSING
                     123  WARNING MESSAGES DURING ANALYSIS
                     101  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                       0  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       0  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =   1.7000    
       SYSTEM TIME (SEC)    =  0.80000    
       TOTAL CPU TIME (SEC) =   2.5000    
       WALLCLOCK TIME (SEC) =          6
