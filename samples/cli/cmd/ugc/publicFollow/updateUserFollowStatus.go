// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_follow"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateUserFollowStatusCmd represents the updateUserFollowStatus command
var updateUserFollowStatusCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicFollowService.UpdateUserFollowStatus(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateUserFollowStatusCmd)
	updateUserFollowStatusCmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateUserFollowStatusCmd.MarkFlagRequired("body")
	updateUserFollowStatusCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateUserFollowStatusCmd.MarkFlagRequired("namespace")
	updateUserFollowStatusCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = updateUserFollowStatusCmd.MarkFlagRequired("userId")
}