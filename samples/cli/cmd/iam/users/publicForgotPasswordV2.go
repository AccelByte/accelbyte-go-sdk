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

// PublicForgotPasswordV2Cmd represents the PublicForgotPasswordV2 command
var PublicForgotPasswordV2Cmd = &cobra.Command{
	Use:   "publicForgotPasswordV2",
	Short: "Public forgot password V2",
	Long:  `Public forgot password V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelSendVerificationCodeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicForgotPasswordV2Params{
			Body:      body,
			Namespace: namespace,
		}
		errInput := usersService.PublicForgotPasswordV2Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicForgotPasswordV2Cmd.Flags().StringP("body", "", "", "Body")
	_ = PublicForgotPasswordV2Cmd.MarkFlagRequired("body")
	PublicForgotPasswordV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicForgotPasswordV2Cmd.MarkFlagRequired("namespace")
}
