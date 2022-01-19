// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/eligibilities"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveEligibilitiesPublicIndirectCmd represents the retrieveEligibilitiesPublicIndirect command
var retrieveEligibilitiesPublicIndirectCmd = &cobra.Command{
	Use:   "retrieveEligibilitiesPublicIndirect",
	Short: "Retrieve eligibilities public indirect",
	Long:  `Retrieve eligibilities public indirect`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eligibilitiesService := &legal.EligibilitiesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &eligibilities.RetrieveEligibilitiesPublicIndirectParams{
			ClientID:    clientId,
			CountryCode: countryCode,
			Namespace:   namespace,
			UserID:      userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := eligibilitiesService.RetrieveEligibilitiesPublicIndirect(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveEligibilitiesPublicIndirectCmd)
	retrieveEligibilitiesPublicIndirectCmd.Flags().StringP("clientId", "c", " ", "Client id")
	_ = retrieveEligibilitiesPublicIndirectCmd.MarkFlagRequired("clientId")
	retrieveEligibilitiesPublicIndirectCmd.Flags().StringP("countryCode", "c", " ", "Country code")
	_ = retrieveEligibilitiesPublicIndirectCmd.MarkFlagRequired("countryCode")
	retrieveEligibilitiesPublicIndirectCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = retrieveEligibilitiesPublicIndirectCmd.MarkFlagRequired("namespace")
	retrieveEligibilitiesPublicIndirectCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = retrieveEligibilitiesPublicIndirectCmd.MarkFlagRequired("userId")
}
