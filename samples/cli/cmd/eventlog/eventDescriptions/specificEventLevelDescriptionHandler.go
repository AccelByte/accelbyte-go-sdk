// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_descriptions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// specificEventLevelDescriptionHandlerCmd represents the specificEventLevelDescriptionHandler command
var specificEventLevelDescriptionHandlerCmd = &cobra.Command{
	Use:   "specificEventLevelDescriptionHandler",
	Short: "Specific event level description handler",
	Long:  `Specific event level description handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventDescriptionsService := &eventlog.EventDescriptionsService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventLevels, _ := cmd.Flags().GetString("eventLevels")
		input := &event_descriptions.SpecificEventLevelDescriptionHandlerParams{
			EventLevels: &eventLevels,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventDescriptionsService.SpecificEventLevelDescriptionHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(specificEventLevelDescriptionHandlerCmd)
	specificEventLevelDescriptionHandlerCmd.Flags().StringP("eventLevels", "e", " ", "Event levels")
}
