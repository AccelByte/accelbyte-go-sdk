// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_info

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// GetUserInfoStatusReader is a Reader for the GetUserInfoStatus structure.
type GetUserInfoStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserInfoStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserInfoStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/userInfo returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserInfoStatusOK creates a GetUserInfoStatusOK with default headers values
func NewGetUserInfoStatusOK() *GetUserInfoStatusOK {
	return &GetUserInfoStatusOK{}
}

/*GetUserInfoStatusOK handles this case with default header values.

  successful operation
*/
type GetUserInfoStatusOK struct {
	Payload []*legalclientmodels.RetrieveUserInfoCacheStatusResponse
}

func (o *GetUserInfoStatusOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/userInfo][%d] getUserInfoStatusOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserInfoStatusOK) ToJSONString() string {
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

func (o *GetUserInfoStatusOK) GetPayload() []*legalclientmodels.RetrieveUserInfoCacheStatusResponse {
	return o.Payload
}

func (o *GetUserInfoStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
