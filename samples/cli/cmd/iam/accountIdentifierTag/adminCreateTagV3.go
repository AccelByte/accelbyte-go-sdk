// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package accountIdentifierTag

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/account_identifier_tag"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateTagV3Cmd represents the AdminCreateTagV3 command
var AdminCreateTagV3Cmd = &cobra.Command{
	Use:   "adminCreateTagV3",
	Short: "Admin create tag V3",
	Long:  `Admin create tag V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		accountIdentifierTagService := &iam.AccountIdentifierTagService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelTagCreateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &account_identifier_tag.AdminCreateTagV3Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := accountIdentifierTagService.AdminCreateTagV3Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateTagV3Cmd.Flags().String("body", "", "Body")
	_ = AdminCreateTagV3Cmd.MarkFlagRequired("body")
	AdminCreateTagV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateTagV3Cmd.MarkFlagRequired("namespace")
}
