// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_registry"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateEventRegistryHandlerCmd represents the updateEventRegistryHandler command
var updateEventRegistryHandlerCmd = &cobra.Command{
	Use:   "updateEventRegistryHandler",
	Short: "Update event registry handler",
	Long:  `Update event registry handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eventRegistryService := &eventlog.EventRegistryService{
			Client:          factory.NewEventlogClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *eventlogclientmodels.ModelsEventRegistry
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		eventId, _ := cmd.Flags().GetString("eventId")
		input := &event_registry.UpdateEventRegistryHandlerParams{
			Body:    body,
			EventID: eventId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := eventRegistryService.UpdateEventRegistryHandler(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateEventRegistryHandlerCmd)
	updateEventRegistryHandlerCmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateEventRegistryHandlerCmd.MarkFlagRequired("body")
	updateEventRegistryHandlerCmd.Flags().StringP("eventId", "e", "0", "Event id")
	_ = updateEventRegistryHandlerCmd.MarkFlagRequired("eventId")
}
