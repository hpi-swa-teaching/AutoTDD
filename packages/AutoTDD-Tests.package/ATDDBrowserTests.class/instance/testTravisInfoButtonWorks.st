tests
testTravisInfoButtonWorks
    | travisWindow infoWindow travisStatus selection repoURL |
    repoURL := 'hpi-swa-teaching/AutoTDD'.
    travisWindow := browser addTravisStatus.
    travisWindow repositoryUrl: repoURL.
    travisStatus := travisWindow saveTravisStatus.
    self assert: (self fetchCopyOfTravisStatuses size = 1).
    
    selection := OrderedCollection new.
    selection add: travisStatus.
    browser selectedTravisStatuses: selection.
    
    infoWindow := browser openInfoForSelectedTravisStatuses first.
    windowsToDelete add: infoWindow.
    
    self assert: (infoWindow target == travisStatus).
    self assert: (infoWindow repository = repoURL)