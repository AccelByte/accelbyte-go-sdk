// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// upgradeHeadlessAccountWithVerificationCodeCmd represents the upgradeHeadlessAccountWithVerificationCode command
var upgradeHeadlessAccountWithVerificationCodeCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.UpgradeHeadlessAccountWithVerificationCode(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(upgradeHeadlessAccountWithVerificationCodeCmd)
	upgradeHeadlessAccountWithVerificationCodeCmd.Flags().StringP("body", "by", " ", "Body")
	_ = upgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("body")
	upgradeHeadlessAccountWithVerificationCodeCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = upgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("namespace")
	upgradeHeadlessAccountWithVerificationCodeCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = upgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("userId")
}
