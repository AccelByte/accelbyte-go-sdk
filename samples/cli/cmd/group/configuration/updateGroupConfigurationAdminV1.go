// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package configuration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateGroupConfigurationAdminV1Cmd represents the UpdateGroupConfigurationAdminV1 command
var UpdateGroupConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "updateGroupConfigurationAdminV1",
	Short: "Update group configuration admin V1",
	Long:  `Update group configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsUpdateGroupConfigurationRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		configurationCode, _ := cmd.Flags().GetString("configurationCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.UpdateGroupConfigurationAdminV1Params{
			Body:              body,
			ConfigurationCode: configurationCode,
			Namespace:         namespace,
		}
		ok, err := configurationService.UpdateGroupConfigurationAdminV1Short(input)
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
	UpdateGroupConfigurationAdminV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateGroupConfigurationAdminV1Cmd.MarkFlagRequired("body")
	UpdateGroupConfigurationAdminV1Cmd.Flags().StringP("configurationCode", "", "", "Configuration code")
	_ = UpdateGroupConfigurationAdminV1Cmd.MarkFlagRequired("configurationCode")
	UpdateGroupConfigurationAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
