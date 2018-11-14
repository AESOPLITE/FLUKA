*
*===magfld=============================================================*
*
      SUBROUTINE MAGFLD ( X, Y, Z, BTX, BTY, BTZ, B, NREG, IDISC )

      INCLUDE '(DBLPRC)'
      INCLUDE '(DIMPAR)'
      INCLUDE '(IOUNIT)'
*
*----------------------------------------------------------------------*
*                                                                      *
*     Copyright (C) 1988-2010      by Alberto Fasso` & Alfredo Ferrari *
*     All Rights Reserved.                                             *
*                                                                      *
*                                                                      *
*     Created  in     1988         by    Alberto Fasso`                *
*                                                                      *
*                                                                      *
*     Last change on 06-Nov-10     by    Alfredo Ferrari               *
*                                                                      *
*     Input variables:                                                 *
*            x,y,z = current position                                  *
*            nreg  = current region                                    *
*     Output variables:                                                *
*            btx,bty,btz = cosines of the magn. field vector           *
*            B = magnetic field intensity (Tesla)                      *
*            idisc = set to 1 if the particle has to be discarded      *
*                                                                      *
*----------------------------------------------------------------------*
*
      INCLUDE '(CMEMFL)'
      INCLUDE '(CSMCRY)'
      LOGICAL FIRSTCALL
      DATA FIRSTCALL/.TRUE./ 
c      DIMENSION XX(401,401,401),YY(401,401,401),ZZ(401,401,401)
      DIMENSION BXX(401,401,401),BYY(401,401,401),BZZ(401,401,401)
      DIMENSION BTT(401,401,401)
*
*  +-------------------------------------------------------------------*
*  |  Earth geomagnetic field:
      IF ( LGMFLD ) THEN
         CALL GEOFLD ( X, Y, Z, BTX, BTY, BTZ, B, NREG, IDISC )
         RETURN
      END IF
      IF ( firstcall ) THEN
      firstcall=.FALSE.
      OPEN(56,
     & FILE='/data/smechbal/Fluka/NonUniB/V3/fieldmap1mmBonly.txt',
     & STATUS='OLD')
      DO II=1,401
       DO JJ=1,401
        DO KK=1,401
c           READ(56,*) XX(II,JJ,KK),YY(II,JJ,KK),ZZ(II,JJ,KK),
c     &   BXX(II,JJ,KK),BYY(II,JJ,KK),BZZ(II,JJ,KK)
c         XX(II,JJ,KK)=XX(II,JJ,KK)/10.d0
c         YY(II,JJ,KK)=YY(II,JJ,KK)/10.d0
c         ZZ(II,JJ,KK)=ZZ(II,JJ,KK)/10.d0

        READ(56,*) BXX(II,JJ,KK),BYY(II,JJ,KK),BZZ(II,JJ,KK)

        BTT(II,JJ,KK)
     &  =SQRT(BXX(II,JJ,KK)**2 + BYY(II,JJ,KK)**2 + BZZ(II,JJ,KK)**2)
        BXX(II,JJ,KK) = BXX(II,JJ,KK)/BTT(II,JJ,KK)
        BYY(II,JJ,KK) = BYY(II,JJ,KK)/BTT(II,JJ,KK)
        BZZ(II,JJ,KK) = BZZ(II,JJ,KK)/BTT(II,JJ,KK)

        ENDDO
       ENDDO
      ENDDO  
      close(56)
      ENDIF


*  |
*  +-------------------------------------------------------------------*
      IDISC = 0
* 1mm grid map, there are 10 bins for each cm step
      IXX = INT(10.D0 * (X + 20.0D0)) + 1
      IYY = INT(10.D0 * (Y + 20.0D0)) + 1
* New geometry from James' measurements
      IZZ = INT(10.D0 * (Z + 20.0D0 + 10.63409D0)) + 1
      IF(IXX.LT.1.OR.IYY.LT.1.OR.IZZ.LT.1.OR.
     &   IXX.GT.401.OR.IYY.GT.401.OR.IZZ.GT.401) THEN
       BTX   = 0.0D0
       BTY   = 0.0D0
       BTZ   = 0.0D0
       B     = 0.0D0
      ELSE
       BTX   = BXX(IXX,IYY,IZZ)
       BTY   = BYY(IXX,IYY,IZZ)
       BTZ   = BZZ(IXX,IYY,IZZ)
       B     = BTT(IXX,IYY,IZZ)
      ENDIF
      RETURN
*=== End of subroutine Magfld =========================================*
      END
