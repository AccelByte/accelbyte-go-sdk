// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicFollow

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_follow"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateUserFollowStatusCmd represents the UpdateUserFollowStatus command
var UpdateUserFollowStatusCmd = &cobra.Command{
	Use:   "updateUserFollowStatus",
	Short: "Update user follow status",
	Long:  `Update user follow status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicFollowService := &ugc.PublicFollowService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUserFollowRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_follow.UpdateUserFollowStatusParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicFollowService.UpdateUserFollowStatusShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateUserFollowStatusCmd.Flags().String("body", "", "Body")
	_ = UpdateUserFollowStatusCmd.MarkFlagRequired("body")
	UpdateUserFollowStatusCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateUserFollowStatusCmd.MarkFlagRequired("namespace")
	UpdateUserFollowStatusCmd.Flags().String("userId", "", "User id")
	_ = UpdateUserFollowStatusCmd.MarkFlagRequired("userId")
}
