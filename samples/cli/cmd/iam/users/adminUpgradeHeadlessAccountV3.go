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

// AdminUpgradeHeadlessAccountV3Cmd represents the AdminUpgradeHeadlessAccountV3 command
var AdminUpgradeHeadlessAccountV3Cmd = &cobra.Command{
	Use:   "adminUpgradeHeadlessAccountV3",
	Short: "Admin upgrade headless account V3",
	Long:  `Admin upgrade headless account V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminUpgradeHeadlessAccountV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.AdminUpgradeHeadlessAccountV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpgradeHeadlessAccountV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpgradeHeadlessAccountV3Cmd.MarkFlagRequired("body")
	AdminUpgradeHeadlessAccountV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpgradeHeadlessAccountV3Cmd.MarkFlagRequired("namespace")
	AdminUpgradeHeadlessAccountV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminUpgradeHeadlessAccountV3Cmd.MarkFlagRequired("userId")
}
