// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_like"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateContentLikeStatusCmd represents the updateContentLikeStatus command
var updateContentLikeStatusCmd = &cobra.Command{
	Use:   "updateContentLikeStatus",
	Short: "Update content like status",
	Long:  `Update content like status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicLikeService := &ugc.PublicLikeService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsContentLikeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_like.UpdateContentLikeStatusParams{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicLikeService.UpdateContentLikeStatus(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateContentLikeStatusCmd)
	updateContentLikeStatusCmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateContentLikeStatusCmd.MarkFlagRequired("body")
	updateContentLikeStatusCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = updateContentLikeStatusCmd.MarkFlagRequired("contentId")
	updateContentLikeStatusCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateContentLikeStatusCmd.MarkFlagRequired("namespace")
}
