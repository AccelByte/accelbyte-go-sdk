package factory

import (
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var matchmakingClientInstance *matchmakingclient.JusticeMatchmakingService

func NewMatchmakingClient(configRepository repository.ConfigRepository) *matchmakingclient.JusticeMatchmakingService {
	if matchmakingClientInstance == nil {
		baseUrl := configRepository.GetJusticeBaseUrl()
		if len(baseUrl) > 0 {
			baseUrlSplit := strings.Split(baseUrl, "://")
			httpClientConfig := &matchmakingclient.TransportConfig{
				Host:     baseUrlSplit[1],
				BasePath: "",
				Schemes:  []string{baseUrlSplit[0]},
			}
			matchmakingClientInstance = matchmakingclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			matchmakingClientInstance = matchmakingclient.NewHTTPClient(nil)
		}
	}
	return matchmakingClientInstance
}
