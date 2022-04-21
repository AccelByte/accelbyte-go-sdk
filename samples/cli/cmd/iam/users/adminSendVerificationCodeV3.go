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

// AdminSendVerificationCodeV3Cmd represents the AdminSendVerificationCodeV3 command
var AdminSendVerificationCodeV3Cmd = &cobra.Command{
	Use:   "adminSendVerificationCodeV3",
	Short: "Admin send verification code V3",
	Long:  `Admin send verification code V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelSendVerificationCodeRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminSendVerificationCodeV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersService.AdminSendVerificationCodeV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminSendVerificationCodeV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminSendVerificationCodeV3Cmd.MarkFlagRequired("body")
	AdminSendVerificationCodeV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminSendVerificationCodeV3Cmd.MarkFlagRequired("namespace")
	AdminSendVerificationCodeV3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminSendVerificationCodeV3Cmd.MarkFlagRequired("userId")
}
