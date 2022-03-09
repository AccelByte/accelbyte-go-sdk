// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userAction

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_action"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BanUsersCmd represents the BanUsers command
var BanUsersCmd = &cobra.Command{
	Use:   "banUsers",
	Short: "Ban users",
	Long:  `Ban users`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userActionService := &basic.UserActionService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.UserBanRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_action.BanUsersParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userActionService.BanUsers(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	BanUsersCmd.Flags().StringP("body", "", "", "Body")
	BanUsersCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BanUsersCmd.MarkFlagRequired("namespace")
}
