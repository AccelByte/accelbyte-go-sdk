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

// AdminUpdateAgeRestrictionConfigV2Cmd represents the AdminUpdateAgeRestrictionConfigV2 command
var AdminUpdateAgeRestrictionConfigV2Cmd = &cobra.Command{
	Use:   "adminUpdateAgeRestrictionConfigV2",
	Short: "Admin update age restriction config V2",
	Long:  `Admin update age restriction config V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelAgeRestrictionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminUpdateAgeRestrictionConfigV2Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := usersService.AdminUpdateAgeRestrictionConfigV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateAgeRestrictionConfigV2Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateAgeRestrictionConfigV2Cmd.MarkFlagRequired("body")
	AdminUpdateAgeRestrictionConfigV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateAgeRestrictionConfigV2Cmd.MarkFlagRequired("namespace")
}
