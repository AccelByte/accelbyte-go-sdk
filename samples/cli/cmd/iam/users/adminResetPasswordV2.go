// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminResetPasswordV2Cmd represents the adminResetPasswordV2 command
var adminResetPasswordV2Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminResetPasswordV2(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminResetPasswordV2Cmd)
	adminResetPasswordV2Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminResetPasswordV2Cmd.MarkFlagRequired("body")
	adminResetPasswordV2Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminResetPasswordV2Cmd.MarkFlagRequired("namespace")
	adminResetPasswordV2Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminResetPasswordV2Cmd.MarkFlagRequired("userId")
}
