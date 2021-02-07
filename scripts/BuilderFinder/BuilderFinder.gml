var workerQueue, numBuilders, myWorker1, myWorker2;
workerQueue = ds_queue_create();
numBuilders = instance_number(oBuilder);
for (var i = 0; i < numBuilders; i++) {
    worker = GetNthNearest(x, y, oBuilder, i+1);
    if (!worker.isWorking) {
        ds_queue_enqueue(workerQueue, worker);
    }
}
if (buildPercent > 0 && !ds_queue_empty(workerQueue)) {
    if (workers == 0) {
        myWorker1 = ds_queue_dequeue(workerQueue);
        myWorker1.isWorking = true;
        myWorker1.myBuilding = self;
		myWorker1.worker1 = true;
        workers++;
    }
    if (!ds_queue_empty(workerQueue)) {
        myWorker2 = ds_queue_dequeue(workerQueue);
        myWorker2.isWorking = true;
        myWorker2.myBuilding = self;
		myWorker2.worker2 = true;
        workers++;
    }
	if (workers < 2){
		alarm[1] = 50;	
	}
} else {
    alarm[1] = 50;
}
ds_queue_destroy(workerQueue);