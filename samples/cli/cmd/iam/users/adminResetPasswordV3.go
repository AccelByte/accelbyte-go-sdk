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

// AdminResetPasswordV3Cmd represents the AdminResetPasswordV3 command
var AdminResetPasswordV3Cmd = &cobra.Command{
	Use:   "adminResetPasswordV3",
	Short: "Admin reset password V3",
	Long:  `Admin reset password V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserPasswordUpdateV3Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminResetPasswordV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersService.AdminResetPasswordV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminResetPasswordV3Cmd.Flags().String("body", "", "Body")
	_ = AdminResetPasswordV3Cmd.MarkFlagRequired("body")
	AdminResetPasswordV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminResetPasswordV3Cmd.MarkFlagRequired("namespace")
	AdminResetPasswordV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminResetPasswordV3Cmd.MarkFlagRequired("userId")
}
