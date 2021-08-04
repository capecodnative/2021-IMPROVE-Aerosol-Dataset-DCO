%Editable script to plot Range___ variables at all single sites over the
%year. Create range variables with the makeRanges.m script.

tempRatio=log10(V./MassGravFine);
tempRatioNoInf=tempRatio;
tempRatioNoInf(abs(tempRatio)==Inf)=NaN;
tempRangeToPlot=prctile(tempRatioNoInf,[0.1,99.9]);
tempWindowSize=14;
tempThresholdFactor=5;

%tempCD=cd;
%[DayOfYearFlatSorted,tempSort]=sort(DayOfYearFlat);
%tempRatioSorted=tempRatio(tempSort);

for i=1:221
    clf;
    tc=Site==i;
    tempRatioNoInfSite=tempRatioNoInf(tc);
    tempDayOfYearSite=DayOfYear(tc);
        %tcSorted=tc(tempSort);
    tempRanges=nan(366,3);
    for j=1:366
        tempWindowData=tempRatioNoInfSite(mod((tempDayOfYearSite-1)-(j-1)+tempWindowSize,366)<=tempWindowSize*2);
        tempWindowData=rmoutliers(tempWindowData,'ThresholdFactor',tempThresholdFactor);
        tempRanges(j,:)=prctile(tempWindowData,[50,5,95]);
    end
    scatter(DayOfYear(tc),tempRatioNoInf(tc),10,Date(tc).Year,'filled');
    hold on;
    plot(1:366,tempRanges(:,1),'color','k','linestyle','-','linewidth',2);
    plot(1:366,tempRanges(:,2),'color','k','linestyle','-','linewidth',1)
    plot(1:366,tempRanges(:,3),'color','k','linestyle','-','linewidth',1);
    colormap jet;
    xlim([0 366]);
    ylim(tempRangeToPlot);
    hColorbar=colorbar;ylabel(hColorbar,'Year');
    title(sprintf('log_{10}(V/MassGravFine) at Site %03d: %s',i,SiteList(i)));
    export_fig(sprintf('./Figures/VMassFine Day of Year/VMassFine DayOfYear %03d %s',i,SiteList(i)),'-png');
end

clear temp* i j hColorbar tc