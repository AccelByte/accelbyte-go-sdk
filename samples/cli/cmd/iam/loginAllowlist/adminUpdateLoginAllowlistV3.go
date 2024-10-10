// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package loginAllowlist

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/login_allowlist"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateLoginAllowlistV3Cmd represents the AdminUpdateLoginAllowlistV3 command
var AdminUpdateLoginAllowlistV3Cmd = &cobra.Command{
	Use:   "adminUpdateLoginAllowlistV3",
	Short: "Admin update login allowlist V3",
	Long:  `Admin update login allowlist V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		loginAllowlistService := &iam.LoginAllowlistService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelLoginAllowlistRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &login_allowlist.AdminUpdateLoginAllowlistV3Params{
			Body:      body,
			Namespace: namespace,
		}
		noContent, errNoContent := loginAllowlistService.AdminUpdateLoginAllowlistV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success: %+v", noContent)

		return nil
	},
}

func init() {
	AdminUpdateLoginAllowlistV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateLoginAllowlistV3Cmd.MarkFlagRequired("body")
	AdminUpdateLoginAllowlistV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateLoginAllowlistV3Cmd.MarkFlagRequired("namespace")
}
