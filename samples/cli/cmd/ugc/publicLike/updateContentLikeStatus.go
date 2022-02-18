// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicLike

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_like"
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	UpdateContentLikeStatusCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateContentLikeStatusCmd.MarkFlagRequired("body")
	UpdateContentLikeStatusCmd.Flags().StringP("contentId", "", "", "Content id")
	_ = UpdateContentLikeStatusCmd.MarkFlagRequired("contentId")
	UpdateContentLikeStatusCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateContentLikeStatusCmd.MarkFlagRequired("namespace")
}
