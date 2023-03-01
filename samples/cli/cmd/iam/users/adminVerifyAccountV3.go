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

// AdminVerifyAccountV3Cmd represents the AdminVerifyAccountV3 command
var AdminVerifyAccountV3Cmd = &cobra.Command{
	Use:   "adminVerifyAccountV3",
	Short: "Admin verify account V3",
	Long:  `Admin verify account V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserVerificationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminVerifyAccountV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersService.AdminVerifyAccountV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminVerifyAccountV3Cmd.Flags().String("body", "", "Body")
	_ = AdminVerifyAccountV3Cmd.MarkFlagRequired("body")
	AdminVerifyAccountV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminVerifyAccountV3Cmd.MarkFlagRequired("namespace")
	AdminVerifyAccountV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminVerifyAccountV3Cmd.MarkFlagRequired("userId")
}
