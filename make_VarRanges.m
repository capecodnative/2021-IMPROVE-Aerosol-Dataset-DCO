%Makes the variable VarRanges which stores percentile ranges for all
%variables and sites. VarRanges(site,compositionvar,[25,50,75th prctile])


VarRanges=nan(221,57,3);
for i=1:221
tc=Site==i;

VarRanges(i,1,:)=prctile(Al(tc),[25,50,75]);
VarRanges(i,2,:)=prctile(AmmNO3(tc),[25,50,75]);
VarRanges(i,3,:)=prctile(AmmSO4(tc),[25,50,75]);
VarRanges(i,4,:)=prctile(As(tc),[25,50,75]);
VarRanges(i,5,:)=prctile(Br(tc),[25,50,75]);
VarRanges(i,6,:)=prctile(C_ElemFine(tc),[25,50,75]);
VarRanges(i,7,:)=prctile(C_ElemFineUCD(tc),[25,50,75]);
VarRanges(i,8,:)=prctile(C_ElemFract1(tc),[25,50,75]);
VarRanges(i,9,:)=prctile(C_ElemFract2(tc),[25,50,75]);
VarRanges(i,10,:)=prctile(C_ElemFract3(tc),[25,50,75]);
VarRanges(i,11,:)=prctile(C_ElemFractSum(tc),[25,50,75]);
VarRanges(i,12,:)=prctile(C_OrgFine(tc),[25,50,75]);
VarRanges(i,13,:)=prctile(C_OrgFineUCD(tc),[25,50,75]);
VarRanges(i,14,:)=prctile(C_OrgFract1(tc),[25,50,75]);
VarRanges(i,15,:)=prctile(C_OrgFract2(tc),[25,50,75]);
VarRanges(i,16,:)=prctile(C_OrgFract3(tc),[25,50,75]);
VarRanges(i,17,:)=prctile(C_OrgFract4(tc),[25,50,75]);
VarRanges(i,18,:)=prctile(C_OrgFractSum(tc),[25,50,75]);
VarRanges(i,19,:)=prctile(C_OrgMass(tc),[25,50,75]);
VarRanges(i,20,:)=prctile(C_OrgPyrol_ByRefl(tc),[25,50,75]);
VarRanges(i,21,:)=prctile(C_OrgPyrol_ByTransm(tc),[25,50,75]);
VarRanges(i,22,:)=prctile(Ca(tc),[25,50,75]);
VarRanges(i,23,:)=prctile(Chloride(tc),[25,50,75]);
VarRanges(i,24,:)=prctile(Cl(tc),[25,50,75]);
VarRanges(i,25,:)=prctile(Cr(tc),[25,50,75]);
VarRanges(i,26,:)=prctile(Cu(tc),[25,50,75]);
VarRanges(i,27,:)=prctile(fAbs(tc),[25,50,75]);
VarRanges(i,28,:)=prctile(Fe(tc),[25,50,75]);
VarRanges(i,29,:)=prctile(FlowRate(tc),[25,50,75]);
VarRanges(i,30,:)=prctile(K(tc),[25,50,75]);
VarRanges(i,31,:)=prctile(MassCourse(tc),[25,50,75]);
VarRanges(i,32,:)=prctile(MassGravCourse(tc),[25,50,75]);
VarRanges(i,33,:)=prctile(MassGravFine(tc),[25,50,75]);
VarRanges(i,34,:)=prctile(MassReconstrPMcourse(tc),[25,50,75]);
VarRanges(i,35,:)=prctile(MassReconstrPMfine(tc),[25,50,75]);
VarRanges(i,36,:)=prctile(Mg(tc),[25,50,75]);
VarRanges(i,37,:)=prctile(Mn(tc),[25,50,75]);
VarRanges(i,38,:)=prctile(Na(tc),[25,50,75]);
VarRanges(i,39,:)=prctile(Ni(tc),[25,50,75]);
VarRanges(i,40,:)=prctile(NO2(tc),[25,50,75]);
VarRanges(i,41,:)=prctile(NO3(tc),[25,50,75]);
VarRanges(i,42,:)=prctile(P(tc),[25,50,75]);
VarRanges(i,43,:)=prctile(Pb(tc),[25,50,75]);
VarRanges(i,44,:)=prctile(Rb(tc),[25,50,75]);
VarRanges(i,45,:)=prctile(S(tc),[25,50,75]);
VarRanges(i,46,:)=prctile(SampDur(tc),[25,50,75]);
VarRanges(i,47,:)=prctile(Se(tc),[25,50,75]);
VarRanges(i,48,:)=prctile(SeaSalt(tc),[25,50,75]);
VarRanges(i,49,:)=prctile(Si(tc),[25,50,75]);
VarRanges(i,50,:)=prctile(SO4(tc),[25,50,75]);
VarRanges(i,51,:)=prctile(Soil(tc),[25,50,75]);
VarRanges(i,52,:)=prctile(Sr(tc),[25,50,75]);
VarRanges(i,53,:)=prctile(TC(tc),[25,50,75]);
VarRanges(i,54,:)=prctile(Ti(tc),[25,50,75]);
VarRanges(i,55,:)=prctile(V(tc),[25,50,75]);
VarRanges(i,56,:)=prctile(Zn(tc),[25,50,75]);
VarRanges(i,57,:)=prctile(Zr(tc),[25,50,75]);
end;