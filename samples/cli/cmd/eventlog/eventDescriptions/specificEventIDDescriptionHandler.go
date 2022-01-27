// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventDescriptions

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_descriptions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// specificEventIDDescriptionHandlerCmd represents the specificEventIDDescriptionHandler command
var specificEventIDDescriptionHandlerCmd = &cobra.Command{
	Use:   "specificEventIDDescriptionHandler",
	Short: "Specific event ID description handler",
	Long:  `Specific event ID description handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventDescriptionsService := &eventlog.EventDescriptionsService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventIds, _ := cmd.Flags().GetString("eventIds")
		input := &event_descriptions.SpecificEventIDDescriptionHandlerParams{
			EventIds: &eventIds,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventDescriptionsService.SpecificEventIDDescriptionHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(specificEventIDDescriptionHandlerCmd)
	specificEventIDDescriptionHandlerCmd.Flags().StringP("eventIds", "es", " ", "Event ids")
}
