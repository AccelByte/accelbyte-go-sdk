// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"github.com/sirupsen/logrus"

	"sync"
)

type FlightIdContainer struct {
	Value string
}

var (
	lock              = &sync.Mutex{}
	once              sync.Once
	flightIDContainer *FlightIdContainer
)

func GetDefaultFlightID() *FlightIdContainer {
	lock.Lock()
	defer lock.Unlock()

	once.Do(func() {
		if flightIDContainer == nil {
			flightId := GenerateID()
			flightIDContainer = &FlightIdContainer{
				Value: flightId,
			}
		} else {
			logrus.Info("Single instance already created.")
		}
	})

	return flightIDContainer
}

func (f *FlightIdContainer) SetFlightID(flightId string) {
	f.Value = flightId
}
