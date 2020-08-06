trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> lt = new List<Task>();
    for (Opportunity o : trigger.new){
        if (o.StageName == 'Closed Won'){
            Task t = new Task(Subject = 'Follow Up Test Task', WhatId = o.Id);
            lt.add(t);
        }
    }
    if (lt.size() > 0){
        insert lt;
    }
}