figure('color','white','position',[  284   200   825   675]);
hAx=axesm('kavrsky6','Origin',[0 0],'MapLatLimit',[0 80],'MapLonLimit',[-180 -40],'ffacecolor','w');
axis off; framem on; gridm on;
%surfm(latZone,lonZone,log10(medChlZone));

shorelinesNAm=gshhs('/Users/DCO/Desktop/Work Documents/Matlab Files/gshhg-gmt-2.3.7/gshhs_l.b',[0 80],[-180 -40]);
%shorelinesSAM=gshhs('/Users/DCO/Desktop/Work Documents/Matlab Files/gshhg-gmt-2.3.7/gshhs_l.b',[-50 -10],[-78 -70]);
hCoastANT=geoshow([shorelinesNAm.Lat], [shorelinesNAm.Lon]);
%hCoastSAM=geoshow([shorelinesSAM.Lat], [shorelinesSAM.Lon]);
%set(hCoastANT,'linewidth',2,'color','k');
%set(hCoastSAM,'linewidth',2,'color','k');
%hSTF=plotm(STF,'linewidth',1,'color','w','linestyle','-');
%hSAF=plotm(SAF,'linewidth',1,'color','k','linestyle','-');
%hPF=plotm(antPF,'linewidth',1,'color','w','linestyle','-');
%hACCf=plotm(sACCF,'linewidth',1,'color','w','linestyle','-');
%hACCsb=plotm(ACCsb,'linewidth',1,'color','k','linestyle','-');

setm(hAx,'glinewidth',2,'pLineLocation',[0:15:80],'mLineLocation',[-180:20:-40],...
    'pLabelLocation',[0:15:80],'mLabelLocation',[-180:20:-40],...
    'meridianlabel','on','parallellabel','on','fontcolor','k','fontsize',20,...
    'fontweight','bold');
setm(hAx,'maplonlimit',lonExt);
setm(hAx,'maplatlimit',latExt);
%hColorbar=colorbar('location','southoutside');
%colormap plasma;
%caxis([-1.55 0]);
%set(hColorbar,'box','on','color','k','fontsize',20);
%mColors=[rgb('red');rgb('black');rgb('white');rgb('black')];
%mEdgeColors=[rgb('black');rgb('white');rgb('black');rgb('white')];

%hTahiti=scatterm(-17.5325,-149.5677);
%hTahiti=get(hTahiti,'Children');
%set(hTahiti,'marker','p','markerfacecolor','w','markeredgecolor','k','sizedata',120);
%
%hScatter=nan(3,1);
%for i=3:-1:0.5
%    tc=stnType==i;
%    hScatter(i)=scatterm(stnLat(tc),stnLon(tc),80);
%    hScatter(i)=get(hScatter(i),'Children');
%    set(hScatter(i),'markerfacecolor',mColors(i,:),'markeredgecolor',mEdgeColors(i,:));
%end
%[hLegend,hLegObj,~,~]=legend(hScatter(1:3),{'Super','Full','Demi'},'location','northeast');
%hTextK=textm(58,-153,'Kodiak','color','w','fontsize',20,'verticalalignment','top');
%hText=textm(-16,-160,'Tahiti','color','w','fontsize',20);
%hText(end+1)=textm(-38,-169,'STF','color','w','fontsize',20);
%hText(end+1)=textm(-51,-169,'SAF','color','k','fontsize',18);
%hText(end+1)=textm(-58,-160,'Ant.PF','color','w','fontsize',18);
%hText(end+1)=textm(-62,-158,'sACCF','color','w','fontsize',18);
%hText(end+1)=textm(-65,-152,'ACCsb','color','k','fontsize',18);
%hObj=findobj(hAx,'type','text','tag','MLabel');
%for i=1:numel(hObj)
%    hObj(i).String=strtrim(hObj(i).String{1});
%end

%tempTickLabels={'0.01','0.03','0.05','0.1','0.3','0.5','1','3','5','10','30','60'};
%tempTicks=[0.01,0.03,0.05,0.1,0.3,0.5,1,3,5,10,30,60];
%set(hColorbar,'ticks',log10(tempTicks));
%set(hColorbar,'TickLabels',tempTickLabels);
%set(hColorbar,'TickLength',0.03)
%hColorLabel=xlabel(hColorbar,'Mean Dec-Jan MODIS Chl-A (2016-2020): mg/m^{3}');
%set(hColorLabel,'color','k','fontsize',16);
tightmap;

%hScatLeg(i)=findobj(hLegObj,'type','hggroup');
%hScatLeg(1).MarkerSize=7;
%hScatLeg(2).MarkerSize=8;
%hScatLeg(3).MarkerSize=7;
%set(hLegend,'position',[0.6879 0.7586 0.1055 0.0963]);