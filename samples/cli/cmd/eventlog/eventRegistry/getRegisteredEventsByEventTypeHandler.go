// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventRegistry

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_registry"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetRegisteredEventsByEventTypeHandlerCmd represents the GetRegisteredEventsByEventTypeHandler command
var GetRegisteredEventsByEventTypeHandlerCmd = &cobra.Command{
	Use:   "getRegisteredEventsByEventTypeHandler",
	Short: "Get registered events by event type handler",
	Long:  `Get registered events by event type handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventRegistryService := &eventlog.EventRegistryService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventType, _ := cmd.Flags().GetString("eventType")
		input := &event_registry.GetRegisteredEventsByEventTypeHandlerParams{
			EventType: eventType,
		}
		ok, err := eventRegistryService.GetRegisteredEventsByEventTypeHandlerShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetRegisteredEventsByEventTypeHandlerCmd.Flags().StringP("eventType", "", "0", "Event type")
	_ = GetRegisteredEventsByEventTypeHandlerCmd.MarkFlagRequired("eventType")
}
