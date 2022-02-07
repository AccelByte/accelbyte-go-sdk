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

// PublicUpgradeHeadlessAccountV3Cmd represents the PublicUpgradeHeadlessAccountV3 command
var PublicUpgradeHeadlessAccountV3Cmd = &cobra.Command{
	Use:   "publicUpgradeHeadlessAccountV3",
	Short: "Public upgrade headless account V3",
	Long:  `Public upgrade headless account V3`,
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
		input := &users.PublicUpgradeHeadlessAccountV3Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicUpgradeHeadlessAccountV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicUpgradeHeadlessAccountV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = PublicUpgradeHeadlessAccountV3Cmd.MarkFlagRequired("body")
	PublicUpgradeHeadlessAccountV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicUpgradeHeadlessAccountV3Cmd.MarkFlagRequired("namespace")
}
