// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventDescriptions

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_descriptions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SpecificEventLevelDescriptionHandlerCmd represents the SpecificEventLevelDescriptionHandler command
var SpecificEventLevelDescriptionHandlerCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	SpecificEventLevelDescriptionHandlerCmd.Flags().StringP("eventLevels", "", "", "Event levels")
}
