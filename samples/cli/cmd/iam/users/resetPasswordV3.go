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

// ResetPasswordV3Cmd represents the ResetPasswordV3 command
var ResetPasswordV3Cmd = &cobra.Command{
	Use:   "resetPasswordV3",
	Short: "Reset password V3",
	Long:  `Reset password V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelResetPasswordRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.ResetPasswordV3Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := usersService.ResetPasswordV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ResetPasswordV3Cmd.Flags().String("body", "", "Body")
	_ = ResetPasswordV3Cmd.MarkFlagRequired("body")
	ResetPasswordV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = ResetPasswordV3Cmd.MarkFlagRequired("namespace")
}
