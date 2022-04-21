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

// AdminResetPasswordV2Cmd represents the AdminResetPasswordV2 command
var AdminResetPasswordV2Cmd = &cobra.Command{
	Use:   "adminResetPasswordV2",
	Short: "Admin reset password V2",
	Long:  `Admin reset password V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserPasswordUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminResetPasswordV2Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersService.AdminResetPasswordV2Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminResetPasswordV2Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminResetPasswordV2Cmd.MarkFlagRequired("body")
	AdminResetPasswordV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminResetPasswordV2Cmd.MarkFlagRequired("namespace")
	AdminResetPasswordV2Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminResetPasswordV2Cmd.MarkFlagRequired("userId")
}
