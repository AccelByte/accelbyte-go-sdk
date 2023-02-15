// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// FreeFormNotificationCmd represents the FreeFormNotification command
var FreeFormNotificationCmd = &cobra.Command{
	Use:   "freeFormNotification",
	Short: "Free form notification",
	Long:  `Free form notification`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &lobby.AdminService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelFreeFormNotificationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin.FreeFormNotificationParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := adminService.FreeFormNotificationShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	FreeFormNotificationCmd.Flags().String("body", "", "Body")
	_ = FreeFormNotificationCmd.MarkFlagRequired("body")
	FreeFormNotificationCmd.Flags().String("namespace", "", "Namespace")
	_ = FreeFormNotificationCmd.MarkFlagRequired("namespace")
}
