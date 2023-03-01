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

// PublicUpdatePasswordV2Cmd represents the PublicUpdatePasswordV2 command
var PublicUpdatePasswordV2Cmd = &cobra.Command{
	Use:   "publicUpdatePasswordV2",
	Short: "Public update password V2",
	Long:  `Public update password V2`,
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
		input := &users.PublicUpdatePasswordV2Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersService.PublicUpdatePasswordV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicUpdatePasswordV2Cmd.Flags().String("body", "", "Body")
	_ = PublicUpdatePasswordV2Cmd.MarkFlagRequired("body")
	PublicUpdatePasswordV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdatePasswordV2Cmd.MarkFlagRequired("namespace")
	PublicUpdatePasswordV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicUpdatePasswordV2Cmd.MarkFlagRequired("userId")
}
