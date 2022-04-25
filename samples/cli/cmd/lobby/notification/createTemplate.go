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

// CreateTemplateCmd represents the CreateTemplate command
var CreateTemplateCmd = &cobra.Command{
	Use:   "createTemplate",
	Short: "Create template",
	Long:  `Create template`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelCreateTemplateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification.CreateTemplateParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := notificationService.CreateTemplateShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	CreateTemplateCmd.Flags().StringP("body", "", "", "Body")
	_ = CreateTemplateCmd.MarkFlagRequired("body")
	CreateTemplateCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateTemplateCmd.MarkFlagRequired("namespace")
}
