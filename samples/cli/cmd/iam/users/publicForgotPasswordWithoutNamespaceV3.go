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

// PublicForgotPasswordWithoutNamespaceV3Cmd represents the PublicForgotPasswordWithoutNamespaceV3 command
var PublicForgotPasswordWithoutNamespaceV3Cmd = &cobra.Command{
	Use:   "publicForgotPasswordWithoutNamespaceV3",
	Short: "Public forgot password without namespace V3",
	Long:  `Public forgot password without namespace V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelForgotPasswordWithoutNamespaceRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &users.PublicForgotPasswordWithoutNamespaceV3Params{
			Body: body,
		}
		ok, errOK := usersService.PublicForgotPasswordWithoutNamespaceV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicForgotPasswordWithoutNamespaceV3Cmd.Flags().String("body", "", "Body")
	_ = PublicForgotPasswordWithoutNamespaceV3Cmd.MarkFlagRequired("body")
}
