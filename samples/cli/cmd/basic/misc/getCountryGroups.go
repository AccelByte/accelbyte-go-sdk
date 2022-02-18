// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package misc

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCountryGroupsCmd represents the GetCountryGroups command
var GetCountryGroupsCmd = &cobra.Command{
	Use:   "getCountryGroups",
	Short: "Get country groups",
	Long:  `Get country groups`,
	RunE: func(cmd *cobra.Command, args []string) error {
		miscService := &basic.MiscService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		groupCode, _ := cmd.Flags().GetString("groupCode")
		input := &misc.GetCountryGroupsParams{
			Namespace: namespace,
			GroupCode: &groupCode,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := miscService.GetCountryGroups(input)
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
	GetCountryGroupsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetCountryGroupsCmd.MarkFlagRequired("namespace")
	GetCountryGroupsCmd.Flags().StringP("groupCode", "", "", "Group code")
}
