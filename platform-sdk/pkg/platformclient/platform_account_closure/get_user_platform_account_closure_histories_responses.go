// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_account_closure

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// GetUserPlatformAccountClosureHistoriesReader is a Reader for the GetUserPlatformAccountClosureHistories structure.
type GetUserPlatformAccountClosureHistoriesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserPlatformAccountClosureHistoriesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserPlatformAccountClosureHistoriesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/platform/closure/history returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserPlatformAccountClosureHistoriesOK creates a GetUserPlatformAccountClosureHistoriesOK with default headers values
func NewGetUserPlatformAccountClosureHistoriesOK() *GetUserPlatformAccountClosureHistoriesOK {
	return &GetUserPlatformAccountClosureHistoriesOK{}
}

/*GetUserPlatformAccountClosureHistoriesOK handles this case with default header values.

  successful operation
*/
type GetUserPlatformAccountClosureHistoriesOK struct {
	Payload []*platformclientmodels.PlatformAccountClosureHistoryInfo
}

func (o *GetUserPlatformAccountClosureHistoriesOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/platform/closure/history][%d] getUserPlatformAccountClosureHistoriesOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserPlatformAccountClosureHistoriesOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetUserPlatformAccountClosureHistoriesOK) GetPayload() []*platformclientmodels.PlatformAccountClosureHistoryInfo {
	return o.Payload
}

func (o *GetUserPlatformAccountClosureHistoriesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
