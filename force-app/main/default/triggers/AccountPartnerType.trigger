Trigger AccountPartnerType on Account (after update){
    AccountPartnerTypecls acpt = new AccountPartnerTypecls();
    if(AccountPartnerTypecls.Aptcalc)
    acpt.AccountPartnerTypecalc(Trigger.new,trigger.newmap,trigger.oldmap);
}