// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicLikeLegacy

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_like_legacy"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateContentLikeStatusCmd represents the UpdateContentLikeStatus command
var UpdateContentLikeStatusCmd = &cobra.Command{
	Use:   "updateContentLikeStatus",
	Short: "Update content like status",
	Long:  `Update content like status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicLikeLegacyService := &ugc.PublicLikeLegacyService{
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
		input := &public_like_legacy.UpdateContentLikeStatusParams{
			Body:      body,
			ContentID: contentId,
			Namespace: namespace,
		}
		ok, errOK := publicLikeLegacyService.UpdateContentLikeStatusShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateContentLikeStatusCmd.Flags().String("body", "", "Body")
	_ = UpdateContentLikeStatusCmd.MarkFlagRequired("body")
	UpdateContentLikeStatusCmd.Flags().String("contentId", "", "Content id")
	_ = UpdateContentLikeStatusCmd.MarkFlagRequired("contentId")
	UpdateContentLikeStatusCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateContentLikeStatusCmd.MarkFlagRequired("namespace")
}
