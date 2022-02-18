// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicContent

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateContentDirectCmd represents the UpdateContentDirect command
var UpdateContentDirectCmd = &cobra.Command{
	Use:   "updateContentDirect",
	Short: "Update content direct",
	Long:  `Update content direct`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateContentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.UpdateContentDirectParams{
			Body:      body,
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.UpdateContentDirect(input)
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
	UpdateContentDirectCmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateContentDirectCmd.MarkFlagRequired("body")
	UpdateContentDirectCmd.Flags().StringP("channelId", "", "", "Channel id")
	_ = UpdateContentDirectCmd.MarkFlagRequired("channelId")
	UpdateContentDirectCmd.Flags().StringP("contentId", "", "", "Content id")
	_ = UpdateContentDirectCmd.MarkFlagRequired("contentId")
	UpdateContentDirectCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateContentDirectCmd.MarkFlagRequired("namespace")
	UpdateContentDirectCmd.Flags().StringP("userId", "", "", "User id")
	_ = UpdateContentDirectCmd.MarkFlagRequired("userId")
}
