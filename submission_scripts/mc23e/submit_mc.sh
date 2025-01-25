pathena --trf='Reco_tf.py --CA --multithreaded=True \
--conditionsTag="OFLCOND-MC23-SDR-RUN3-05-03" --geometryVersion="ATLAS-R3S-2021-03-02-00" --autoConfiguration "everything" \
--preExec "all:flags.Trigger.AODEDMSet=\"AODFULL\"; flags.Jet.WriteToAOD=True; flags.MET.WritetoAOD=True; \
flags.Trigger.triggerMenuSetup=\"Dev_pp_run3_v1_TriggerValidation_prescale\"; from AthenaMonitoring.DQConfigFlags import allSteeringFlagsOff; \
allSteeringFlagsOff(flags); flags.DQ.Steering.doHLTMon=True; flags.DQ.Steering.HLT.doTau=True; flags.DQ.Steering.doDataFlowMon=True" \
--preInclude "all:Campaigns.MC23e" --postInclude "PyJobTransforms.UseFrontier" --steering "doRDO_TRIG" \
--inputRDOFile %IN --outputAODFile %OUT.AOD.pool.root.1 --outputHISTFile %OUT.HIST.pool.root.1' \
--nCore 2 --noEmail --nFilesPerJob 1 --inOutDsJson jobs_datasets_mc23e.json --dumpJson jobs_submit_mc23e.json --extOutFile='expert-monitoring.root' \
--inTarBall tarball.tgz --nFiles 10