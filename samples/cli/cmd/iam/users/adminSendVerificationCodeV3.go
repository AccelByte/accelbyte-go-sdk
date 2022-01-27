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

// adminSendVerificationCodeV3Cmd represents the adminSendVerificationCodeV3 command
var adminSendVerificationCodeV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminSendVerificationCodeV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminSendVerificationCodeV3Cmd)
	adminSendVerificationCodeV3Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminSendVerificationCodeV3Cmd.MarkFlagRequired("body")
	adminSendVerificationCodeV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminSendVerificationCodeV3Cmd.MarkFlagRequired("namespace")
	adminSendVerificationCodeV3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminSendVerificationCodeV3Cmd.MarkFlagRequired("userId")
}
