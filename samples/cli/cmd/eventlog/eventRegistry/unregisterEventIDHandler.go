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

// UnregisterEventIDHandlerCmd represents the UnregisterEventIDHandler command
var UnregisterEventIDHandlerCmd = &cobra.Command{
	Use:   "unregisterEventIDHandler",
	Short: "Unregister event ID handler",
	Long:  `Unregister event ID handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventRegistryService := &eventlog.EventRegistryService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventId, _ := cmd.Flags().GetString("eventId")
		input := &event_registry.UnregisterEventIDHandlerParams{
			EventID: eventId,
		}
		errInput := eventRegistryService.UnregisterEventIDHandlerShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	UnregisterEventIDHandlerCmd.Flags().StringP("eventId", "", "0", "Event id")
	_ = UnregisterEventIDHandlerCmd.MarkFlagRequired("eventId")
}
