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

// PublicForgotPasswordV3Cmd represents the PublicForgotPasswordV3 command
var PublicForgotPasswordV3Cmd = &cobra.Command{
	Use:   "publicForgotPasswordV3",
	Short: "Public forgot password V3",
	Long:  `Public forgot password V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelForgotPasswordRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicForgotPasswordV3Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := usersService.PublicForgotPasswordV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicForgotPasswordV3Cmd.Flags().String("body", "", "Body")
	_ = PublicForgotPasswordV3Cmd.MarkFlagRequired("body")
	PublicForgotPasswordV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicForgotPasswordV3Cmd.MarkFlagRequired("namespace")
}
