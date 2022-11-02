public class AssetTriggerHandler {
    public static void updateDescription(list<asset> assetTriggerNew,
                                        List<Asset> assetTriggerOld,
                                        Map<id, asset> AssetTriggerNewMap,
                                        Map<Id,asset> assetTriggerOldMap) {
        for(asset eachA: assetTriggerNew){
            if(eachA.status == 'Installed' && assetTriggerOldMap == null){
                eachA.description = 'Asset is Installed';
            }
            if(assetTriggerOldMap != null){
                if(eachA.status == 'Installed' && 
                    eachA.status != assetTriggerOldMap.get(eachA.id).status){
                    eachA.description = 'Asset is Installed';
                }
            }
        }
    }
}
