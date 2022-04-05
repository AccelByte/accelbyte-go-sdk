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

// GetRegisteredEventIDHandlerCmd represents the GetRegisteredEventIDHandler command
var GetRegisteredEventIDHandlerCmd = &cobra.Command{
	Use:   "getRegisteredEventIDHandler",
	Short: "Get registered event ID handler",
	Long:  `Get registered event ID handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventRegistryService := &eventlog.EventRegistryService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventId, _ := cmd.Flags().GetString("eventId")
		input := &event_registry.GetRegisteredEventIDHandlerParams{
			EventID: eventId,
		}
		ok, err := eventRegistryService.GetRegisteredEventIDHandlerShort(input)
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
	GetRegisteredEventIDHandlerCmd.Flags().StringP("eventId", "", "0", "Event id")
	_ = GetRegisteredEventIDHandlerCmd.MarkFlagRequired("eventId")
}
