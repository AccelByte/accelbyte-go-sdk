// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ResetPasswordCmd represents the ResetPassword command
var ResetPasswordCmd = &cobra.Command{
	Use:   "resetPassword",
	Short: "Reset password",
	Long:  `Reset password`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelResetPasswordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.ResetPasswordParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := usersService.ResetPasswordShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ResetPasswordCmd.Flags().String("body", "", "Body")
	_ = ResetPasswordCmd.MarkFlagRequired("body")
	ResetPasswordCmd.Flags().String("namespace", "", "Namespace")
	_ = ResetPasswordCmd.MarkFlagRequired("namespace")
}
