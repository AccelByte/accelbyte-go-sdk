// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// adminUpgradeHeadlessAccountV3Cmd represents the adminUpgradeHeadlessAccountV3 command
var adminUpgradeHeadlessAccountV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminUpgradeHeadlessAccountV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpgradeHeadlessAccountV3Cmd)
	adminUpgradeHeadlessAccountV3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpgradeHeadlessAccountV3Cmd.MarkFlagRequired("body")
	adminUpgradeHeadlessAccountV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUpgradeHeadlessAccountV3Cmd.MarkFlagRequired("namespace")
	adminUpgradeHeadlessAccountV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminUpgradeHeadlessAccountV3Cmd.MarkFlagRequired("userId")
}