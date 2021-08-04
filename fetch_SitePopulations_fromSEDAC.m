%Fetches population data from SEDAC (NASA). Uses a lat/lon point and a
%radius. Also fetches the land area within that radius.

SitePopulations100kmRad=nan(221,4);
SiteLandArea100kmRad=nan(221,1);
for i=1:221
    tempCircle=fliplr(scircle1(SiteLat(i),SiteLon(i),50,[],earthRadius('km')));
    tempRequest.polygon=tempCircle;
    fprintf('Fetching #%d %s \n',i,SiteList(i));
    tempResponse=webwrite('https://sedac.ciesin.columbia.edu/arcgis/rest/services/sedac/pesv3Broker/GPServer/pesv3Broker/execute',...
        'Input_Data',jsonencode(tempRequest),'f','json',weboptions('Timeout',40));
    tempResponseDecoded=jsondecode(tempResponse);
    SitePopulations100kmRad(i,1)=str2double(tempResponseDecoded.results.value.estimates.gpw_v4_population_count_rev10_2000.SUM);
    SitePopulations100kmRad(i,2)=str2double(tempResponseDecoded.results.value.estimates.gpw_v4_population_count_rev10_2005.SUM);
    SitePopulations100kmRad(i,3)=str2double(tempResponseDecoded.results.value.estimates.gpw_v4_population_count_rev10_2015.SUM);
    SitePopulations100kmRad(i,4)=str2double(tempResponseDecoded.results.value.estimates.gpw_v4_population_count_rev10_2020.SUM);
    SiteLandArea100kmRad(i)=str2double(tempResponseDecoded.results.value.estimates.gpw_v4_land_water_area_rev10_landareakm.SUM);
end