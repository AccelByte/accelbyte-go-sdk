// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eventDescriptions

import (
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_descriptions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SpecificEventIDDescriptionHandlerCmd represents the SpecificEventIDDescriptionHandler command
var SpecificEventIDDescriptionHandlerCmd = &cobra.Command{
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
		ok, err := eventDescriptionsService.SpecificEventIDDescriptionHandlerShort(input, nil)
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
	SpecificEventIDDescriptionHandlerCmd.Flags().StringP("eventIds", "", "", "Event ids")
}
