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

// PublicUpgradeHeadlessAccountWithVerificationCodeV4Cmd represents the PublicUpgradeHeadlessAccountWithVerificationCodeV4 command
var PublicUpgradeHeadlessAccountWithVerificationCodeV4Cmd = &cobra.Command{
	Use:   "publicUpgradeHeadlessAccountWithVerificationCodeV4",
	Short: "Public upgrade headless account with verification code V4",
	Long:  `Public upgrade headless account with verification code V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicUpgradeHeadlessAccountWithVerificationCodeV4Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := usersV4Service.PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUpgradeHeadlessAccountWithVerificationCodeV4Cmd.Flags().String("body", "", "Body")
	_ = PublicUpgradeHeadlessAccountWithVerificationCodeV4Cmd.MarkFlagRequired("body")
	PublicUpgradeHeadlessAccountWithVerificationCodeV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpgradeHeadlessAccountWithVerificationCodeV4Cmd.MarkFlagRequired("namespace")
}
