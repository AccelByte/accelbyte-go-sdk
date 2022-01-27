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

// specificEventTypeDescriptionHandlerCmd represents the specificEventTypeDescriptionHandler command
var specificEventTypeDescriptionHandlerCmd = &cobra.Command{
	Use:   "specificEventTypeDescriptionHandler",
	Short: "Specific event type description handler",
	Long:  `Specific event type description handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventDescriptionsService := &eventlog.EventDescriptionsService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		eventTypes, _ := cmd.Flags().GetString("eventTypes")
		input := &event_descriptions.SpecificEventTypeDescriptionHandlerParams{
			EventTypes: &eventTypes,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eventDescriptionsService.SpecificEventTypeDescriptionHandler(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(specificEventTypeDescriptionHandlerCmd)
	specificEventTypeDescriptionHandlerCmd.Flags().StringP("eventTypes", "es", " ", "Event types")
}
