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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createContentDirectCmd represents the createContentDirect command
var createContentDirectCmd = &cobra.Command{
	Use:   "createContentDirect",
	Short: "Create content direct",
	Long:  `Create content direct`,
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
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.CreateContentDirectParams{
			Body:      body,
			ChannelID: channelId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicContentService.CreateContentDirect(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createContentDirectCmd)
	createContentDirectCmd.Flags().StringP("body", "by", " ", "Body")
	_ = createContentDirectCmd.MarkFlagRequired("body")
	createContentDirectCmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = createContentDirectCmd.MarkFlagRequired("channelId")
	createContentDirectCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = createContentDirectCmd.MarkFlagRequired("namespace")
	createContentDirectCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = createContentDirectCmd.MarkFlagRequired("userId")
}
