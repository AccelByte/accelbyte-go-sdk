// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateTagCmd represents the adminUpdateTag command
var adminUpdateTagCmd = &cobra.Command{
	Use:   "adminUpdateTag",
	Short: "Admin update tag",
	Long:  `Admin update tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTagService := &ugc.AdminTagService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateTagRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		tagId, _ := cmd.Flags().GetString("tagId")
		input := &admin_tag.AdminUpdateTagParams{
			Body:      body,
			Namespace: namespace,
			TagID:     tagId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminTagService.AdminUpdateTag(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateTagCmd)
	adminUpdateTagCmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpdateTagCmd.MarkFlagRequired("body")
	adminUpdateTagCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUpdateTagCmd.MarkFlagRequired("namespace")
	adminUpdateTagCmd.Flags().StringP("tagId", "t", " ", "Tag id")
	_ = adminUpdateTagCmd.MarkFlagRequired("tagId")
}
