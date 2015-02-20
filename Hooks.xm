/*
Tapped Out Cheats
By: castix
File: Hooks.xm
*/

#include <substrate.h>
#include <Foundation/Foundation.h>

#define settings @"/var/mobile/Library/Preferences/TappedOutSettings.plist"

inline bool GetPrefBool(NSString *key) {
    return [[[NSDictionary dictionaryWithContentsOfFile:settings] valueForKey:key] boolValue];
}

int(*old_CurrencyData_GetCurrencyAmount)(void *ptr);
int(*old_RewardData_GetPremium)(void *ptr);
int(*old_RewardData_GetDropChance)(void *ptr);
int(*old_RewardData_GetMoney)(void *ptr);
int(*old_RewardData_GetEXP)(void *ptr);
int(*old_RewardData_GetSpecialCurrencyAmount)(void *ptr, unsigned int u1);
int(*old_InventoryManager_GetConsumableCount)(void *ptr, char c1);


int CurrencyData_GetCurrencyAmount(void *ptr) {
    if(GetPrefBool(@"kDonuts")) {
        return 222222;
    } else {
        return old_CurrencyData_GetCurrencyAmount(ptr);
    }
}

int RewardData_GetPremium(void *ptr) {
    if(GetPrefBool(@"kDonuts")) {
        return 222222;
    } else {
        return old_RewardData_GetPremium(ptr);
    }
}

int RewardData_GetDropChance(void *ptr) {
    if(GetPrefBool(@"kDropChance")) {
        return 222222;
    } else {
        return old_RewardData_GetDropChance(ptr);
    }
}

int RewardData_GetMoney(void *ptr) {
    if(GetPrefBool(@"kMoney")) {
        return 222222;
    } else {
        return old_RewardData_GetMoney(ptr);
    }
}

int RewardData_GetEXP(void *ptr) {
    if(GetPrefBool(@"kEXP")) {
        return 222222;
    } else {
        return old_RewardData_GetEXP(ptr);
    }
}

int RewardData_GetSpecialCurrencyAmount(void *ptr, unsigned int u1) {
    if(GetPrefBool(@"kCurrency")) {
        return 222222;
    } else {
        return old_RewardData_GetSpecialCurrencyAmount(ptr, u1);
    }
}

int InventoryManager_GetConsumableCount(void *ptr, char c1) {
    if(GetPrefBool(@"kItems")) {
        return 222222;
    } else {
        return old_InventoryManager_GetConsumableCount(ptr, c1);
    }
}


%ctor {

    MSHookFunction(((void*)MSFindSymbol(NULL,"__ZNK10RewardData13getDropChanceEv")),(void *)RewardData_GetDropChance,(void**)&old_RewardData_GetDropChance);
    MSHookFunction(((void*)MSFindSymbol(NULL,"__ZNK10RewardData8GetMoneyEv")),(void *)RewardData_GetMoney,(void**)&old_RewardData_GetMoney);
    MSHookFunction(((void*)MSFindSymbol(NULL,"__ZNK10RewardData6GetExpEv")),(void *)RewardData_GetEXP,(void**)&old_RewardData_GetEXP);
    MSHookFunction(((void*)MSFindSymbol(NULL,"__ZNK10RewardData10GetPremiumEv")),(void *)RewardData_GetPremium,(void**)&old_RewardData_GetPremium);
    MSHookFunction(((void*)MSFindSymbol(NULL,"__ZNK10RewardData24GetSpecialCurrencyAmountEj")),(void *)RewardData_GetSpecialCurrencyAmount,(void**)&old_RewardData_GetSpecialCurrencyAmount);
    MSHookFunction(((void*)MSFindSymbol(NULL,"__ZNK12CurrencyData17GetCurrencyAmountEv")),(void *)CurrencyData_GetCurrencyAmount,(void**)&old_CurrencyData_GetCurrencyAmount);
    MSHookFunction(((void*)MSFindSymbol(NULL,"__ZN16InventoryManager18GetConsumableCountEPK10Consumable")),(void *)InventoryManager_GetConsumableCount,(void**)&old_InventoryManager_GetConsumableCount);


}
