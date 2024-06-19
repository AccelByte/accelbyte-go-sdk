// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDisableMyEmailV4Cmd represents the PublicDisableMyEmailV4 command
var PublicDisableMyEmailV4Cmd = &cobra.Command{
	Use:   "publicDisableMyEmailV4",
	Short: "Public disable my email V4",
	Long:  `Public disable my email V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelDisableMFARequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicDisableMyEmailV4Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := usersV4Service.PublicDisableMyEmailV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDisableMyEmailV4Cmd.Flags().String("body", "", "Body")
	_ = PublicDisableMyEmailV4Cmd.MarkFlagRequired("body")
	PublicDisableMyEmailV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDisableMyEmailV4Cmd.MarkFlagRequired("namespace")
}
