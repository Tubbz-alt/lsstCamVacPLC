$Name <FILENAME>

! Obj_Source
;Project created by:
;Joao Rodrigues SLAC
;joaoprod@slac.staford.edu

#Include <func06.fps>

! Id_Pluto_Double[D45]:0=000000000010


! I0.0=HVTurboUnder10                   ;HEX Vacuum Gauge for interlock safety VHX-UTT-GCC-01 Relay 2 (<10 Torr NO)U
! I0.3=CVTurboUnder10                   ;Cryostat Turbo Vac VCR-UTT-GCC-01 Relay 2 (<10 Torr NO)
! I0.6=HVTurboPumpOFF                   ;
! I0.7=CVTurboPumpOFF                   ;
! Q0.0=CVStat                           ;Cryostat Vacuum Status PRT-UTT-PLC-03/I6
! Q0.1=HVStat                           ;HEX-Can Vacuum Status PRT-UTT-PLC-03/I5
! Q0.2=MainVcrVcc                       ;Cryostat VCR-UTT-VCC-00
! Q0.3=MainVhxVcc                       ;HEX-Can VHX-UTT-VCC-01

! Pgm_Pluto:0
! Instruction_Set_3
! Ext_comm:0=Device 0,Packet 0
! Ext_comm:1=Device 0,Packet 1
;VCR-UTT-PLC-00
;
;Cryo Vaccum PLC
;
;R2.0 - Fixed Turbo pump permit logic

! I0.0,A_Pulse,Non_Inv
! I0.3,A_Pulse,Non_Inv
! I0.6,Static
! I0.7,Static
! I0.30,A_Pulse,Non_Inv
! I0.31,A_Pulse,Non_Inv
! I0.32,A_Pulse,Non_Inv
! I0.33,A_Pulse,Non_Inv
! I0.34,C_Pulse,Non_Inv
! I0.35,A_Pulse,Non_Inv
! I0.36,A_Pulse,Non_Inv
! I0.37,A_Pulse,Non_Inv
! I0.40,A_Pulse,Non_Inv
! Q0.10,A_Pulse
! Q0.11,A_Pulse
! Q0.12,C_Pulse
! Q0.20,Static
! Q0.21,Static
! Q0.22,Static
! Q0.23,Static

! I0.30=MainVcrVgcOpen                  ;CVR-UTT-VGC-00 Open
! I0.31=MainVcrVgcClose                 ;CVR-UTT-VGC-00 Close
! I0.32=MainVhxVgcOpen                  ;VHX-UTT-VCC-01 Open
! I0.33=MainVhxVgcClose                 ;VHX-UTT-VCC-01 Close
! I0.34=MKS925                          ;Roughing Pump
! I0.35=CV01                            ;VCR-UTT-GCC-00 Relay 1 (<0.1 Torr NO) and VCR-UTT-GCC-01 Relays 1 (<0.001 Torr NO)
! I0.36=CV0001                          ;VCR-UTT-GCC-00 Relay 2 (<0.001 Torr NO)
! I0.37=HV01                            ;VHX-UTT-GCC-00 Relay 1 (<0.1 Torr NO) and VHX-UTT-GCC-01 Relays 1 (<0.001 Torr NO)
! I0.40=HV0001                          ;VHX-UTT-GCC-00 Relay 2 (<0.001 Torr NO)
! Q0.4=VcrPumpPerm                      ;Cryo Turbo Pump Permit VCR-UTT-PCT-00/J1-3
! Q0.5=VhxPumpPerm                      ;HEX-Can Turbo Pump Permit VHX-UTT-PCT-01/J1-3
! Q0.10=APower                          ;VCR-UTT-VCC-00
! Q0.11=BPower                          ;VHX-UTT-VGC-00
! Q0.12=CPower                          ;roufhing pump contact
! Q0.20=VcrVcc01                        ;VCR-UTT-VCC-01
! Q0.21=VcrVcc02                        ;VCR-UTT-VCC-02
! Q0.22=VcrVcc03                        ;VCR-UTT-VCC-03
! Q0.23=VcrVcc04                        ;VCR-UTT-VCC-04
! M0.0=VcrVcc01Open                     ;
! M0.1=VcrVcc01Close                    ;
! M0.2=VcrVcc02Open                     ;
! M0.3=VcrVcc02Close                    ;
! M0.4=VcrVcc03Open                     ;
! M0.5=VcrVcc03Close                    ;
! M0.6=VcrVcc04Open                     ;
! M0.7=VcrVcc04Close                    ;
! M0.15=HVInterlockHigh                 ;
! M0.16=CVInterlockHigh                 ;
! M0.17=HVInterlockHighFilter           ;
! M0.20=CVInterlockHighFilter           ;
! M0.21=HVInterlockHighLatchStatus      ;
! M0.22=CVInterlockHighLatchStatus      ;
! M0.23=HVStatLatchReset                ;
! M0.24=CVStatLatchReset                ;
! M0.25=CVStatkBlock                    ;
! M0.26=HVStatBlock                     ;
! M0.32=HVTurboPumpON                   ;
! M0.34=CVTurboPumpON                   ;
! M0.40=OpenMainVcrVcc                  ;
! M0.41=CloseMainVcrVcc                 ;
! M0.42=MainVcrVccAlowedOpen            ;
! M0.43=MainVcrVccAllowedOpenLatch      ;
! M0.44=MainVcrVccAllowedOpenLatchStatus;
! M0.45=MainVcrVccAllowedOpenLatchReset ;
! M0.46=MainVcrVccForcedClose           ;
! M0.47=MainVcrVccNotForcedCloseLatch   ;
! M0.48=MainVcrVccNotForcedCloseLatchStatus;
! M0.49=MainVcrVccNotForcedCloseReset   ;
! M0.50=VcrPumpPermLatchStatus          ;
! M0.51=VcrPumpPermReset                ;
! M0.52=VcrPumpPermBlock                ;
! M0.60=OpenMainVhxVcc                  ;
! M0.61=CloseMainVhxVcc                 ;
! M0.62=MainVhxVccAlowedOpen            ;
! M0.63=MainVhxVccAllowedOpenLatch      ;
! M0.64=MainVhxVccAllowedOpenLatchStatus;
! M0.65=MainVhxVccAllowedOpenLatchReset ;
! M0.66=MainVhxVccForcedClose           ;
! M0.67=MainVhxVccNotForcedCloseLatch   ;
! M0.68=MainVhxVccNotForcedCloseLatchStatus;
! M0.69=MainVhxVccNotForcedCloseReset   ;
! M0.70=VhxPumpPermLatchStatus          ;
! M0.71=VhxPumpPermReset                ;
! M0.72=VhxPumpPermBlock                ;
! M0.80=CVInterlockHighLatchNeedsReset  ;
! M0.81=MainVcrVccNotForcedCloseLatchNeedsReset;
! M0.82=MainVcrVccAllowedOpenLatchNeedsReset;
! M0.83=VcrPumpPermLatchNeedsReset      ;
! M0.84=HVInterlockHighLatchNeedsReset  ;
! M0.85=MainVhxVccNotForcedCloseLatchNeedsReset;
! M0.86=MainVhxVccAllowedOpenLatchNeedsReset;
! M0.87=VhxPumpPermLatchNeedsReset      ;
! M0.100=ToGate0                        ;
! M0.101=ToGate1                        ;
! M0.102=ToGate2                        ;
! M0.103=ToGate3                        ;
! M0.104=ToGate4                        ;
! M0.105=ToGate5                        ;
! M0.106=ToGate6                        ;
! M0.107=ToGate7                        ;
! M0.108=ToGate8                        ;
! M0.109=ToGate9                        ;
! M0.110=ToGate10                       ;
! M0.111=ToGate11                       ;
! M0.112=ToGate12                       ;
! M0.113=ToGate13                       ;
! M0.114=ToGate14                       ;
! M0.115=ToGate15                       ;
! M0.116=ToGate16                       ;
! M0.117=ToGate17                       ;
! M0.118=ToGate18                       ;
! M0.119=ToGate19                       ;
! DR0.22=ap0                            ;
! DR0.36=apt1                           ;
! DR0.38=apt2                           ;
! DR0.40=apt22                          ;
! DR0.42=apt3                           ;
! DR0.44=apt33                          ;
! DR0.46=apt333                         ;
! DR0.48=final0                         ;
! DR0.50=final1                         ;
! DR0.52=final2                         ;
! DR0.54=final3                         ;
! DR0.62=ln                             ;
! DR0.64=ln0                            ;
! DR0.66=ln1                            ;
! DR0.68=ln11                           ;
! DR0.70=ln2                            ;
! DR0.72=ln22                           ;
! DR0.74=ln111                          ;


S0.0_0=Logic
HVInterlockHigh=/HV0001
;10 s filter on the VHX-UTT-GCC-00 Relay 2 (<0.001 Torr NO)
HVInterlockHighFilter=Upcount(P(SM_1Hz),/HVInterlockHigh,10)
HVStat=StartT(/HVInterlockHighFilter*/HVStatBlock,HVStatLatchReset,1,HVInterlockHighLatchStatus)
;HV Permit to Ref
HVInterlockHighLatchNeedsReset=/HVInterlockHighFilter*/HVStatBlock*/HVStat
CVInterlockHigh=/CV0001
;10 s filter on the VCR UTT-GCC-00 Relay 2 (<0.001 Torr NO)
CVInterlockHighFilter=Upcount(P(SM_1Hz),/CVInterlockHigh,10)
CVStat=StartT(/CVInterlockHighFilter*/CVStatkBlock,CVStatLatchReset,1,CVInterlockHighLatchStatus)
;CV permit to Ref
CVInterlockHighLatchNeedsReset=/CVInterlockHighFilter*/CVStatkBlock*/CVStat
HVTurboPumpON=/HVTurboPumpOFF
;HV turbo pump speed setpoint input
R(MainVhxVcc):MainVhxVccForcedClose=HVTurboPumpON*/MKS925
;Close VHX-UTT-VGC-00  = (Hex TurboPumpOff OFF) AND (Relay Output of MKS925 is Open)
MainVhxVccNotForcedCloseLatch=StartT(/MainVhxVccForcedClose,MainVhxVccNotForcedCloseReset,1,MainVhxVccNotForcedCloseLatchStatus)
MainVhxVccNotForcedCloseLatchNeedsReset=/MainVhxVccForcedClose*/MainVhxVccNotForcedCloseLatch
R(MainVhxVcc)=P(/CloseMainVhxVcc)
;Manual order to close VHX-UTT-VGC-00
MainVhxVccAlowedOpen=(HVTurboPumpOFF+HVTurboPumpON*HV01)*MainVhxVccNotForcedCloseLatch
;VHX-UTT-VGC-00 allowed to open  = Hex TurboPumpOff ON OR (Hex TurboPumpOff OFF AND (VHX-UTT-GCC-00 Relay 1 
;AND VHX-UTT-GCC-01 Relay 1))
MainVhxVccAllowedOpenLatch=StartT(MainVhxVccAlowedOpen+/P(/OpenMainVhxVcc),MainVhxVccAllowedOpenLatchReset,1,MainVhxVccAllowedOpenLatchStatus)
MainVhxVccAllowedOpenLatchNeedsReset=(MainVhxVccAlowedOpen+/P(/OpenMainVhxVcc))*/MainVhxVccAllowedOpenLatch
S(MainVhxVcc)=MainVhxVccNotForcedCloseLatch*/CloseMainVhxVcc*P(/OpenMainVhxVcc)*MainVhxVccAllowedOpenLatch
VhxPumpPerm=StartT(HVTurboUnder10*(MKS925*HVTurboPumpON+HVTurboPumpOFF)*/VhxPumpPermBlock,VhxPumpPermReset,1,VhxPumpPermLatchStatus)
;Heat-Exchanger Turbo Pump Control
VhxPumpPermLatchNeedsReset=HVTurboUnder10*(MKS925*HVTurboPumpON+HVTurboPumpOFF)*/VhxPumpPermBlock*/VhxPumpPerm
CVTurboPumpON=/CVTurboPumpOFF
;HV turbo pump speed setpoint input
R(MainVcrVcc):MainVcrVccForcedClose=CVTurboPumpON*/MKS925
;Close VCR-UTT-VGC-00 (Set PLC output to 0v)  = Cryostat TurboPumpOff OFF  AND (Relay Output of MKS925 is Open)
MainVcrVccNotForcedCloseLatch=StartT(/MainVcrVccForcedClose,MainVcrVccNotForcedCloseReset,1,MainVcrVccNotForcedCloseLatchStatus)
MainVcrVccNotForcedCloseLatchNeedsReset=/MainVcrVccForcedClose*/MainVcrVccNotForcedCloseLatch
R(MainVcrVcc)=P(/CloseMainVcrVcc)
;Manual Close
MainVcrVccAlowedOpen=(CVTurboPumpOFF+CVTurboPumpON*CV01)*mainvcrvccnotForcedCloseLatch
MainVcrVccAllowedOpenLatch=StartT(MainVcrVccAlowedOpen+/P(/OpenMainVcrVcc),MainVcrVccAllowedOpenLatchReset,1,MainVcrVccAllowedOpenLatchStatus)
;VHX-UTT-VGC-00 allowed to open  = Hex TurboPumpOff ON OR (Hex TurboPumpOff OFF AND (VHX-UTT-GCC-00 Relay 1 
;AND VHX-UTT-GCC-01 Relay 1))
MainVcrVccAllowedOpenLatchNeedsReset=(MainVcrVccAlowedOpen+/P(/OpenMainVcrVcc))*/MainVcrVccAllowedOpenLatch
S(MainVcrVcc)=MainVcrVccNotForcedCloseLatch*/CloseMainVcrVcc*P(/OpenMainVcrVcc)*MainVcrVccAllowedOpenLatch
VcrPumpPerm=StartT(CVTurboUnder10*(MKS925*CVTurboPumpON+CVTurboPumpOFF)*/VcrPumpPermBlock,VcrPumpPermReset,1,VcrPumpPermLatchStatus)
;Cryo Turbo Pump Control
VcrPumpPermLatchNeedsReset=CVTurboUnder10*(MKS925*CVTurboPumpON+CVTurboPumpOFF)*/VcrPumpPermBlock*/VcrPumpPerm
R(VcrVcc01)=P(/VcrVcc01Close)
;
;VCR-UTT-VCC-(00-04) Close and open commands
;
S(VcrVcc01)=P(/VcrVcc01Open)*/VcrVcc01Close
R(VcrVcc02)=P(/VcrVcc02Close)
S(VcrVcc02)=P(/VcrVcc02Open)*/VcrVcc02Close
R(VcrVcc03)=P(/VcrVcc03Close)
S(VcrVcc03)=P(/VcrVcc03Open)*/VcrVcc03Close
R(VcrVcc04)=P(/VcrVcc04Close)
S(VcrVcc04)=P(/VcrVcc04Open)*/VcrVcc04Close
APower:BPower:CPower
;
;Power Outputs
;

S0.1_0=Communication
HVStatLatchReset=Ext_Sig(0,0)
;--------------------------
;
;--------------------------
;
;Inputs from CSS
;
;
;Vaccum PLC outputs routed to Master PLC: PRT-UTT-PLC-03 resets
;
CVStatLatchReset=Ext_Sig(1,0)
CloseMainVhxVcc=Ext_Sig(2,0)
;Valve control
OpenMainVhxVcc=Ext_Sig(3,0)
MainVhxVccNotForcedCloseReset=Ext_Sig(4,0)
MainVhxVccAllowedOpenLatchReset=Ext_Sig(5,0)
CloseMainVcrVcc=Ext_Sig(6,0)
OpenMainVcrVcc=Ext_Sig(7,0)
MainVcrVccNotForcedCloseReset=Ext_Sig(8,0)
MainVcrVccAllowedOpenLatchReset=Ext_Sig(9,0)
VhxPumpPermReset=Ext_Sig(10,0)
VcrPumpPermReset=Ext_Sig(11,0)
VcrVcc01Open=Ext_Sig(12,0)
VcrVcc01Close=Ext_Sig(13,0)
VcrVcc02Open=Ext_Sig(14,0)
VcrVcc02Close=Ext_Sig(15,0)
VcrVcc03Open=Ext_Sig(16,0)
VcrVcc03Close=Ext_Sig(17,0)
VcrVcc04Open=Ext_Sig(18,0)
VcrVcc04Close=Ext_Sig(19,0)
HVStatBlock=Ext_Sig(20,0)
CVStatkBlock=Ext_Sig(21,0)
VhxPumpPermBlock=Ext_Sig(22,0)
VcrPumpPermBlock=Ext_Sig(23,0)
ToGate10=ToGateway_User_B(P(/SM_10Hz),10,MainVhxVcc,CloseMainVhxVcc,OpenMainVhxVcc,MainVhxVccNotForcedCloseLatch,MainVhxVccNotForcedCloseLatchStatus,MainVhxVccNotForcedCloseReset,MainVhxVccAllowedOpenLatchStatus,MainVhxVccAllowedOpenLatchReset,SR_appCRC)
ToGate11=ToGateway_User_B(P(/ToGate10),11,MainVcrVcc,CloseMainVcrVcc,OpenMainVcrVcc,MainVcrVccNotForcedCloseLatch,MainVcrVccNotForcedCloseLatchStatus,MainVcrVccNotForcedCloseReset,MainVcrVccAllowedOpenLatchStatus,MainVcrVccAllowedOpenLatchReset,SR_ErrorCode)
ToGate12=ToGateway_User_B(P(/ToGate11),12,VhxPumpPerm,VhxPumpPermLatchStatus,VhxPumpPermReset,VcrPumpPerm,VcrPumpPermLatchStatus,VcrPumpPermReset,MKS925,0,0)
ToGate13=ToGateway_User_B(P(/ToGate12),13,VcrVcc01,VcrVcc01Open,VcrVcc01Close,VcrVcc02,VcrVcc02Open,VcrVcc02Close,0,0,0)
ToGate14=ToGateway_User_B(P(/ToGate13),14,VcrVcc03,VcrVcc03Open,VcrVcc03Close,VcrVcc04,VcrVcc04Open,VcrVcc04Close,0,0,0)
ToGate15=ToGateway_User_B(P(/ToGate14),15,HVStat,HVInterlockHighLatchStatus,HVStatLatchReset,CVStat,CVInterlockHighLatchStatus,CVStatLatchReset,HVInterlockHigh,CVInterlockHigh,0)
;Vaccum PLC outputs routed to Master PLC Logic
;
;
ToGate16=ToGateway_User_B(P(/ToGate15),16,MainVcrVgcOpen,MainVcrVgcClose,MainVhxVgcOpen,MainVhxVgcClose,MainVcrVccAllowedOpenLatch,MainVhxVccAllowedOpenLatch,0,0,0)
;\Main Vaves Monitor
ToGate17=ToGateway_User_B(P(/ToGate16),17,APower,BPower,CPower,HVTurboUnder10,HVTurboPumpOFF,CVTurboUnder10,CVTurboPumpOFF,0,0)
;\Main Vaves Monitor
ToGate18=ToGateway_User_B(P(/ToGate17),18,HVStatBlock,CVStatkBlock,VhxPumpPermBlock,VcrPumpPermBlock,CV01,CV0001,HV01,HV0001,0)
;\Main Vaves Monitor
ToGate19=ToGateway_User_B(P(/ToGate18),19,CVInterlockHighLatchNeedsReset,MainVcrVccNotForcedCloseLatchNeedsReset,MainVcrVccAllowedOpenLatchNeedsReset,VcrPumpPermLatchNeedsReset,HVInterlockHighLatchNeedsReset,MainVhxVccNotForcedCloseLatchNeedsReset,MainVhxVccAllowedOpenLatchNeedsReset,VhxPumpPermLatchNeedsReset,0)
;Main Vaves Monitor
