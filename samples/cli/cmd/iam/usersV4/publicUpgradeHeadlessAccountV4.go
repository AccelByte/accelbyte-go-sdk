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

// PublicUpgradeHeadlessAccountV4Cmd represents the PublicUpgradeHeadlessAccountV4 command
var PublicUpgradeHeadlessAccountV4Cmd = &cobra.Command{
	Use:   "publicUpgradeHeadlessAccountV4",
	Short: "Public upgrade headless account V4",
	Long:  `Public upgrade headless account V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountUpgradeHeadlessAccountRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicUpgradeHeadlessAccountV4Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := usersV4Service.PublicUpgradeHeadlessAccountV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUpgradeHeadlessAccountV4Cmd.Flags().String("body", "", "Body")
	_ = PublicUpgradeHeadlessAccountV4Cmd.MarkFlagRequired("body")
	PublicUpgradeHeadlessAccountV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpgradeHeadlessAccountV4Cmd.MarkFlagRequired("namespace")
}
