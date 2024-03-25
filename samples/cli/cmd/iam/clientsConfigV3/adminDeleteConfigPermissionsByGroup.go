// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clientsConfigV3

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients_config_v3"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteConfigPermissionsByGroupCmd represents the AdminDeleteConfigPermissionsByGroup command
var AdminDeleteConfigPermissionsByGroupCmd = &cobra.Command{
	Use:   "adminDeleteConfigPermissionsByGroup",
	Short: "Admin delete config permissions by group",
	Long:  `Admin delete config permissions by group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsConfigV3Service := &iam.ClientsConfigV3Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ClientmodelPermissionSetDeleteGroupRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		forceDelete, _ := cmd.Flags().GetBool("forceDelete")
		input := &clients_config_v3.AdminDeleteConfigPermissionsByGroupParams{
			Body:        body,
			ForceDelete: &forceDelete,
		}
		errNoContent := clientsConfigV3Service.AdminDeleteConfigPermissionsByGroupShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteConfigPermissionsByGroupCmd.Flags().String("body", "", "Body")
	_ = AdminDeleteConfigPermissionsByGroupCmd.MarkFlagRequired("body")
	AdminDeleteConfigPermissionsByGroupCmd.Flags().Bool("forceDelete", false, "Force delete")
}
