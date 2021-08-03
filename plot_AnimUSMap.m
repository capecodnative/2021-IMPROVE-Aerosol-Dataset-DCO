filename='./Figures/VMassGravFine_Annual.gif';
RangeToUse=RangesVMassGravFine;

tempColorLims=prctile(RangeToUse(:,:,1),[5 95],'all');
for k=1:14:366
    for i=1:3
        scatterm(ax(i),SiteLat,SiteLon,100,RangeToUse(:,k,1),'filled');caxis(ax(i),tempColorLims);
    end
    title(ax(1),sprintf('Day %03d',k));
    [imind,cm]=rgb2ind(frame2im(getframe(gcf)),256);
    if k == 1
        imwrite(imind,cm,filename,'gif','Loopcount',inf,'DelayTime',0);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append');
    end
    delete(findobj('type','scatter'));
end