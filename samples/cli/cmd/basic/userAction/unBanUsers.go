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

// UnBanUsersCmd represents the UnBanUsers command
var UnBanUsersCmd = &cobra.Command{
	Use:   "unBanUsers",
	Short: "Un ban users",
	Long:  `Un ban users`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userActionService := &basic.UserActionService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.ADTOForUnbanUserAPICall
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_action.UnBanUsersParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := userActionService.UnBanUsersShort(input)
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
	UnBanUsersCmd.Flags().StringP("body", "", "", "Body")
	UnBanUsersCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UnBanUsersCmd.MarkFlagRequired("namespace")
}
