// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package accountIdenfifierTag

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/account_idenfifier_tag"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateTagV3Cmd represents the AdminUpdateTagV3 command
var AdminUpdateTagV3Cmd = &cobra.Command{
	Use:   "adminUpdateTagV3",
	Short: "Admin update tag V3",
	Long:  `Admin update tag V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		accountIdenfifierTagService := &iam.AccountIdenfifierTagService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelTagUpdateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		tagId, _ := cmd.Flags().GetString("tagId")
		input := &account_idenfifier_tag.AdminUpdateTagV3Params{
			Body:      body,
			Namespace: namespace,
			TagID:     tagId,
		}
		ok, errOK := accountIdenfifierTagService.AdminUpdateTagV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateTagV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateTagV3Cmd.MarkFlagRequired("body")
	AdminUpdateTagV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateTagV3Cmd.MarkFlagRequired("namespace")
	AdminUpdateTagV3Cmd.Flags().String("tagId", "", "Tag id")
	_ = AdminUpdateTagV3Cmd.MarkFlagRequired("tagId")
}
