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

// PublicReportUserCmd represents the PublicReportUser command
var PublicReportUserCmd = &cobra.Command{
	Use:   "publicReportUser",
	Short: "Public report user",
	Long:  `Public report user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userActionService := &basic.UserActionService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.UserReportRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_action.PublicReportUserParams{
			// XXX: empty body for workaround to handle the weird the response entity. It didn't accept 204
			Body:      nil,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userActionService.PublicReportUser(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicReportUserCmd.Flags().StringP("body", "", "", "Body")
	PublicReportUserCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicReportUserCmd.MarkFlagRequired("namespace")
	PublicReportUserCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicReportUserCmd.MarkFlagRequired("userId")
}
