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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.UpgradeHeadlessAccountWithVerificationCode(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	UpgradeHeadlessAccountWithVerificationCodeCmd.Flags().StringP("body", "", "", "Body")
	_ = UpgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("body")
	UpgradeHeadlessAccountWithVerificationCodeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("namespace")
	UpgradeHeadlessAccountWithVerificationCodeCmd.Flags().StringP("userId", "", "", "User id")
	_ = UpgradeHeadlessAccountWithVerificationCodeCmd.MarkFlagRequired("userId")
}
