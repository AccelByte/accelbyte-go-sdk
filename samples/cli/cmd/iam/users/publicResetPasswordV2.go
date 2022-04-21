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

// PublicResetPasswordV2Cmd represents the PublicResetPasswordV2 command
var PublicResetPasswordV2Cmd = &cobra.Command{
	Use:   "publicResetPasswordV2",
	Short: "Public reset password V2",
	Long:  `Public reset password V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelResetPasswordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicResetPasswordV2Params{
			Body:      body,
			Namespace: namespace,
		}
		errInput := usersService.PublicResetPasswordV2Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicResetPasswordV2Cmd.Flags().StringP("body", "", "", "Body")
	_ = PublicResetPasswordV2Cmd.MarkFlagRequired("body")
	PublicResetPasswordV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicResetPasswordV2Cmd.MarkFlagRequired("namespace")
}
