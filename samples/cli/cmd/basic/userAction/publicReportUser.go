// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errCreated := userActionService.PublicReportUserShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicReportUserCmd.Flags().String("body", "", "Body")
	PublicReportUserCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicReportUserCmd.MarkFlagRequired("namespace")
	PublicReportUserCmd.Flags().String("userId", "", "User id")
	_ = PublicReportUserCmd.MarkFlagRequired("userId")
}
