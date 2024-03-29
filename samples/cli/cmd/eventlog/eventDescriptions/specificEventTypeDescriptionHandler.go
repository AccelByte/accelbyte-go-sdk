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

// SpecificEventTypeDescriptionHandlerCmd represents the SpecificEventTypeDescriptionHandler command
var SpecificEventTypeDescriptionHandlerCmd = &cobra.Command{
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
		ok, errOK := eventDescriptionsService.SpecificEventTypeDescriptionHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SpecificEventTypeDescriptionHandlerCmd.Flags().String("eventTypes", "", "Event types")
}
