// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateTopicByTopicNameCmd represents the UpdateTopicByTopicName command
var UpdateTopicByTopicNameCmd = &cobra.Command{
	Use:   "updateTopicByTopicName",
	Short: "Update topic by topic name",
	Long:  `Update topic by topic name`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelUpdateTopicRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		topic, _ := cmd.Flags().GetString("topic")
		input := &notification.UpdateTopicByTopicNameParams{
			Body:      body,
			Namespace: namespace,
			Topic:     topic,
		}
		errInput := notificationService.UpdateTopicByTopicNameShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	UpdateTopicByTopicNameCmd.Flags().String("body", "", "Body")
	_ = UpdateTopicByTopicNameCmd.MarkFlagRequired("body")
	UpdateTopicByTopicNameCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateTopicByTopicNameCmd.MarkFlagRequired("namespace")
	UpdateTopicByTopicNameCmd.Flags().String("topic", "", "Topic")
	_ = UpdateTopicByTopicNameCmd.MarkFlagRequired("topic")
}
