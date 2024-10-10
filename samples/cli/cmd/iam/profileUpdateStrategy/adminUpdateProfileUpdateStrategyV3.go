// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profileUpdateStrategy

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/profile_update_strategy"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateProfileUpdateStrategyV3Cmd represents the AdminUpdateProfileUpdateStrategyV3 command
var AdminUpdateProfileUpdateStrategyV3Cmd = &cobra.Command{
	Use:   "adminUpdateProfileUpdateStrategyV3",
	Short: "Admin update profile update strategy V3",
	Long:  `Admin update profile update strategy V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profileUpdateStrategyService := &iam.ProfileUpdateStrategyService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUpdateProfileUpdateStrategyConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		field, _ := cmd.Flags().GetString("field")
		input := &profile_update_strategy.AdminUpdateProfileUpdateStrategyV3Params{
			Body:      body,
			Namespace: namespace,
			Field:     field,
		}
		ok, errOK := profileUpdateStrategyService.AdminUpdateProfileUpdateStrategyV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateProfileUpdateStrategyV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateProfileUpdateStrategyV3Cmd.MarkFlagRequired("body")
	AdminUpdateProfileUpdateStrategyV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateProfileUpdateStrategyV3Cmd.MarkFlagRequired("namespace")
	AdminUpdateProfileUpdateStrategyV3Cmd.Flags().String("field", "", "Field")
	_ = AdminUpdateProfileUpdateStrategyV3Cmd.MarkFlagRequired("field")
}
