%Editable script for making "Range___" variables, which store the 50,5,95
%prctile data values for each day of the year (moving window) for all sites
%e.g. RangeAlTi(site,dayofyear,[50,5,95th] prctile)

tempRatio=log10(V./MassGravFine);
tempRatioNoInf=tempRatio;
tempRatioNoInf(abs(tempRatio)==Inf)=NaN;
%tempRangeToPlot=prctile(tempRatioNoInf,[0.1,99.9]);
tempWindowSize=14;
tempThresholdFactor=5;
tempRanges=nan(221,366,3);

%tempCD=cd;
%[DayOfYearFlatSorted,tempSort]=sort(DayOfYearFlat);
%tempRatioSorted=tempRatio(tempSort);

for i=1:221
    %clf;
    tc=Site==i;
    tempRatioNoInfSite=tempRatioNoInf(tc);
    tempDayOfYearSite=DayOfYear(tc);
        %tcSorted=tc(tempSort);
    
    for j=1:366
        tempWindowData=tempRatioNoInfSite(mod((tempDayOfYearSite-1)-(j-1)+tempWindowSize,366)<=tempWindowSize*2);
        tempWindowData=rmoutliers(tempWindowData,'ThresholdFactor',tempThresholdFactor);
        tempRanges(i,j,:)=prctile(tempWindowData,[50,5,95]);
    end
    %scatter(DayOfYear(tc),tempRatioNoInf(tc),10,Date(tc).Year,'filled');
    %hold on;
    %plot(1:366,tempRanges(:,1),'color','k','linestyle','-','linewidth',2);
    %plot(1:366,tempRanges(:,2),'color','k','linestyle','-','linewidth',1)
    %plot(1:366,tempRanges(:,3),'color','k','linestyle','-','linewidth',1);
    %colormap jet;
    %xlim([0 366]);
    %ylim(tempRangeToPlot);
    %hColorbar=colorbar;ylabel(hColorbar,'Year');
    %title(sprintf('log_{10}(MassFine) at Site %03d: %s',i,SiteList(i)));
    %export_fig(sprintf('./Figures/MassFine DayOfYear %03d %s',i,SiteList(i)),'-png');
end

RangesVMassGravFine=tempRanges;
clear temp* i j hColorbar tc