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

// UpgradeHeadlessAccountWithVerificationCodeCmd represents the UpgradeHeadlessAccountWithVerificationCode command
var UpgradeHeadlessAccountWithVerificationCodeCmd = &cobra.Command{
	Use:   "upgradeHeadlessAccountWithVerificationCode",
	Short: "Upgrade headless account with verification code",
	Long:  `Upgrade headless account with verification code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUpgradeHeadlessAccountWithVerificationCodeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.UpgradeHeadlessAccountWithVerificationCodeParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.UpgradeHeadlessAccountWithVerificationCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpgradeHeadlessAccountWithVerificationCodeCmd.Flags().String("body", "", "Body")
	_ = UpgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("body")
	UpgradeHeadlessAccountWithVerificationCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = UpgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("namespace")
	UpgradeHeadlessAccountWithVerificationCodeCmd.Flags().String("userId", "", "User id")
	_ = UpgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("userId")
}
