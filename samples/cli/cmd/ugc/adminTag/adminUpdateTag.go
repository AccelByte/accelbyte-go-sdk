// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminTag

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateTagCmd represents the AdminUpdateTag command
var AdminUpdateTagCmd = &cobra.Command{
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
		ok, err := adminTagService.AdminUpdateTagShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminUpdateTagCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdateTagCmd.MarkFlagRequired("body")
	AdminUpdateTagCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminUpdateTagCmd.MarkFlagRequired("namespace")
	AdminUpdateTagCmd.Flags().StringP("tagId", "", "", "Tag id")
	_ = AdminUpdateTagCmd.MarkFlagRequired("tagId")
}
